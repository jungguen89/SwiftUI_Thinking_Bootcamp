//
//  SliderBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/06/13.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue: Double = 3
    @State var isEditing: Bool = false
    @State var color: Color = .red
    var body: some View {
        VStack {
            HStack{
                Text("Rating: ")
                Text(String(format: "%.1f", sliderValue))
            }
            .foregroundColor(color)
//            Slider(value: $sliderValue,
//                   in: 0...5, step: 1.0)
//            .tint(.red)
//            .padding(10)
            Slider(
                value: $sliderValue,
                in: 1...10,
                step: 1.0,
                onEditingChanged:  { (_) in
                    color = .green
                },
                minimumValueLabel: Text("1"),
                maximumValueLabel: Text("2"),
                label: {
                    Text("Title")
                }
            )
        }
    }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
