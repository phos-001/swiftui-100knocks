//
//  Lesson29.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/08/22.
//

import SwiftUI

struct Lesson29: View {
    @State private var selectedHour = 0
    @State private var selectedMinute = 0

    var body: some View {
        GeometryReader { geometry in
            HStack {
                Picker(selection: self.$selectedHour, label: EmptyView()) {
                    ForEach(0 ..< 24) {
                        Text("\($0)")
                    }
                }.pickerStyle(WheelPickerStyle())
                    .onReceive([self.selectedHour].publisher.first()) { value in
                        print("hour: \(value)")
                    }
                    .labelsHidden()
                    .frame(width: geometry.size.width / 2, height: geometry.size.height)
                    .clipped()
                Picker(selection: self.$selectedMinute, label: EmptyView()) {
                    ForEach(0 ..< 60) {
                        Text("\($0)")
                    }
                }.pickerStyle(WheelPickerStyle())
                    .onReceive([self.selectedMinute].publisher.first()) { value in
                        print("minute: \(value)")
                    }
                    .labelsHidden()
                    .frame(width: geometry.size.width / 2, height: geometry.size.height)
                    .clipped()
            }
        }.padding()
    }
}

struct Lesson29_Previews: PreviewProvider {
    static var previews: some View {
        Lesson29()
    }
}
