//
//  Lesson57.swift
//  SwiftUI100Knocks
//
//  Created by 林悠斗 on 2023/10/21.
//

import SwiftUI

struct Lesson57: View {
    @State var height: String = ""
    @State var weight: String = ""
    @State var bmi: Double = 0
    @State var showingSheet = false

    var body: some View {
        VStack(alignment: .leading) {
            Text("Height")
            TextField("Intput Your Height", text: $height)
                .padding()
                .border(.black, width: 1)
        }
        .padding()
        
        VStack(alignment: .leading) {
            Text("Weight")
            TextField("Intput Your Weight", text: $weight)
                .padding()
                .border(.black, width: 1)
        }
        .padding()
        
        Button(action: {
            guard let height = Double(self.height),
                  let weight = Double(self.weight) else {
                print("Fail to Calc BMI")
                return
            }
            
            // Calc BMI
            bmi = weight / pow(height/100, 2)
            
            // Show Sheet
            self.showingSheet = true
        }) {
            Text("Calc BMI")
                .font(.title)
                .foregroundColor(.black)
                .padding()
                .background(Color(.lightGray))
                .cornerRadius(16)
        }
        .sheet(isPresented: $showingSheet, content: {
            ResultView(bmi: $bmi)
        })
    }
}

struct ResultView: View {
    @Binding var bmi: Double
    var body: some View {
        VStack {
            Text("BMI: \(bmi)")
            
            if bmi < 18.5 {
                Text("You are thin")
            } else if bmi > 25 {
                Text("You are fat")
            } else {
                Text("You are healthy")
            }
        }
    }
}

#Preview {
    Lesson57()
}
