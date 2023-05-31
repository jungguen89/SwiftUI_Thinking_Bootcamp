//
//  TernaryBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/05/31.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isStartingState: Bool = false
    @State var isChangingState: Bool = false
    
    var body: some View {
        VStack {
            Button("Button: \(isStartingState.description) ", action: {
                isStartingState.toggle()
            })
            
            // Ternary를 통해 if - else 부분을 줄임
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 10)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(
                    width: isStartingState ? 150 : 200,
                    height: isStartingState ? 150 : 200)
            
            Spacer()
            
            Button(action: {
                isChangingState.toggle()
            }, label: {
                Text("Change the shape!!!")
                    .font(.system(size:25))
                    .fontWeight(.bold)
            })
            
            RoundedRectangle(cornerRadius: 10)
                .fill(isChangingState ? Color.red : Color.yellow)
                .frame(
                    width: isChangingState ? 100 : 50,
                    height: isChangingState ? 100: 50
                )
            
            // if - else 문을 통해 isStartingState의 값에 따른 색상 변경
//            if isStartingState {
//                RoundedRectangle(cornerRadius: 10)
//                    .fill(Color.red)
//                    .frame(width: 150, height: 150)
//            } else {
//                RoundedRectangle(cornerRadius: 10)
//                    .fill(Color.blue)
//                    .frame(width: 150, height: 150)
//            }
        }
    }
}

struct TernaryBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBootcamp()
    }
}
