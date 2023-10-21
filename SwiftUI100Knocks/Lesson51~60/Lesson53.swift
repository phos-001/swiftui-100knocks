//
//  Lesson53.swift
//  SwiftUI100Knocks
//
//  Created by 林悠斗 on 2023/10/21.
//

import AVFoundation
import Foundation
import SwiftUI

struct Lesson53: View {
    @ObservedObject var viewModel = AVAudioViewModel()
    var body: some View {
        VStack(spacing: 16) {
            Button("Play") {
                viewModel.playAudio()
            }
            Text(viewModel.audioPlayerState)
        }
    }
}

class AVAudioViewModel: NSObject, ObservableObject, AVAudioPlayerDelegate {
    @Published var audioPlayerState: String = "Not Playing"
    var audioPlayer: AVAudioPlayer?
    
    func playAudio() {
        let musicData = NSDataAsset(name: "cat_life_short")!.data
        audioPlayer = try! AVAudioPlayer(data: musicData)
        audioPlayer?.delegate = self
        audioPlayer?.play()
        audioPlayerState = "Playing"
    }
    
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        audioPlayerState = "Finished"
    }
}

#Preview {
    Lesson53()
}
