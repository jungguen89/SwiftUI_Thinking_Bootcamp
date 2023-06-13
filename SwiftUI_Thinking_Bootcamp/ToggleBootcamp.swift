//
//  ToggleBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/06/11.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Status")
                Text(toggleIsOn ? "Online" : "offline")
            }
            .font(.title)
            Toggle(
                isOn: $toggleIsOn,
                label: {
                    Text("Label")
                        .font(.body)
                })
            .toggleStyle(SwitchToggleStyle(tint: .red))
            
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
