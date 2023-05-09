//
//  PaddingAndSpacerBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/05/10.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.vertical, 10)
                
            
            Text("안녕하세요 이거 padding을 통해 사이즈를 지정해주지 않고도 공간을 조정할 수 있는 기능입니다. ")
                .padding(.bottom, 10)
        }
        //frame으로 크기를 지정해주는 대신에 padding()을 사용할 수 있습니다.
        .padding(.horizontal, 10)
        .background(
            Color.yellow
                .cornerRadius(20)
                .shadow(color: Color.gray, radius: 10, x: 0, y: 0)
        )
    }
}

struct PaddingAndSpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacerBootcamp()
    }
}
