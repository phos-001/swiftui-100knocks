//
//  Lesson77.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2024/01/25.
//

import AVFoundation
import SwiftUI

enum RecordingStatus: String {
    case ready
    case start
    case stop
}

public protocol CameraViewDelegate: AnyObject {
    func didFinishRecording(outputFileURL: URL)
}

public class UICameraView: UIView {
    private var videoDevice: AVCaptureDevice?
    private let fileOutput = AVCaptureMovieFileOutput()
    private var videoLayer: AVCaptureVideoPreviewLayer?
    public weak var delegate: CameraViewDelegate?

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)

        let captureSession: AVCaptureSession = AVCaptureSession()
        videoDevice = defaultCamera()
        let audioDevice: AVCaptureDevice? = AVCaptureDevice.default(for: AVMediaType.audio)

        // video input setting
        guard let device = videoDevice else { return }
        let videoInput: AVCaptureDeviceInput = try! AVCaptureDeviceInput(device: device)
        captureSession.addInput(videoInput)

        // audio input setting
        let audioInput = try! AVCaptureDeviceInput(device: audioDevice!)
        captureSession.addInput(audioInput)

        // max duration setting
        fileOutput.maxRecordedDuration = CMTimeMake(value: 60, timescale: 1)

        captureSession.addOutput(fileOutput)

        // video quality setting
        captureSession.beginConfiguration()
        if captureSession.canSetSessionPreset(.hd4K3840x2160) {
            captureSession.sessionPreset = .hd4K3840x2160
        } else if captureSession.canSetSessionPreset(.high) {
            captureSession.sessionPreset = .high
        }
        captureSession.commitConfiguration()

        captureSession.startRunning()

        // video preview layer
        videoLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        guard let videoLayer = videoLayer else { return }
        videoLayer.videoGravity = AVLayerVideoGravity.resizeAspect
        layer.addSublayer(videoLayer)
    }

    public override func layoutSubviews() {
        guard let videoLayer = videoLayer else { return }
        videoLayer.frame = bounds
    }

    func startRecording() {
        // start recording
        let tempDirectory: URL = URL(fileURLWithPath: NSTemporaryDirectory())
        let fileURL: URL = tempDirectory.appendingPathComponent("mytemp1.mov")
        fileOutput.startRecording(to: fileURL, recordingDelegate: self)
    }

    func stopRecording() {
        // stop recording
        fileOutput.stopRecording()
    }

    private func defaultCamera() -> AVCaptureDevice? {
        if let device = AVCaptureDevice.default(.builtInDualCamera, for: AVMediaType.video, position: .front) {
            return device
        } else if let device = AVCaptureDevice.default(.builtInWideAngleCamera, for: AVMediaType.video, position: .front) {
            return device
        } else {
            return nil
        }
    }

}

extension UICameraView: AVCaptureFileOutputRecordingDelegate {
    public func fileOutput(_ output: AVCaptureFileOutput, didFinishRecordingTo outputFileURL: URL, from connections: [AVCaptureConnection], error: Error?) {
        delegate?.didFinishRecording(outputFileURL: outputFileURL)
    }
}

struct CameraView: UIViewRepresentable {
    @Binding var recordingStatus: RecordingStatus
    let didFinishRecording: (_ outputFileURL: URL) -> Void

    final public class Coordinator: NSObject, CameraViewDelegate {
        private var cameraView: CameraView
        let didFinishRecording: (_ outputFileURL: URL) -> Void
        init(_ cameraView: CameraView, didFinishRecording: @escaping (_ outputFileURL:URL) -> Void) {
            self.cameraView = cameraView
            self.didFinishRecording = didFinishRecording
        }

        func didFinishRecording(outputFileURL: URL) {
            didFinishRecording(outputFileURL)
        }
    }

    public func makeCoordinator() -> Coordinator {
        Coordinator(self, didFinishRecording: didFinishRecording)
    }

    func makeUIView(context: Context) -> UICameraView {
        let uiCameraView = UICameraView()
        uiCameraView.delegate = context.coordinator
        return uiCameraView
    }

    func updateUIView(_ uiView: UICameraView, context: Context) {
        switch recordingStatus {
        case .ready:
            return
        case .start:
            uiView.startRecording()
        case .stop:
            uiView.stopRecording()
        }
    }
}

struct Lesson77: View {
    @State var recordingStatus: RecordingStatus = .ready
    var body: some View {
        VStack {
            CameraView(recordingStatus: $recordingStatus) { url in
                recordingStatus = .ready
                print(url)
            }
            .frame(width: 300, height: 400)

            Button {
                recordingStatus = .start
            } label: {
                Text("Start")
            }

            Button {
                recordingStatus = .stop
            } label: {
                Text("Stop")
            }
            Text("StartRecording: \(recordingStatus.rawValue)")
        }
    }
}

#Preview {
    Lesson77()
}
