//
//  PickerBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/06/12.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection: String = "1"
    
    var body: some View {
        Picker(selection: .constant(1),
               label:
                HStack {
            Text("Filter:")
            Text(selection)
        }
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(10)
            .shadow(color: .black, radius: 10),
               content: {
            Text("1").tag(1)
            Text("2").tag(2)
        })
        .pickerStyle(MenuPickerStyle())
//        VStack {
//            HStack {
//                Text("Age:")
//                Text(selection)
//            }
//
//
//            Picker(
//                selection: $selection,
//                label: Text("Picker"),
//                content: {
//                    ForEach(10..<100) { number in
//                        Text("\(number)")
//                            .font(.headline)
//                            .foregroundColor(.red)
//                            .tag("\(number)")
//                    }
//            })
//            .pickerStyle(InlinePickerStyle())
//
//            //.background(Color.gray.opacity(0.3))
//        }
    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
