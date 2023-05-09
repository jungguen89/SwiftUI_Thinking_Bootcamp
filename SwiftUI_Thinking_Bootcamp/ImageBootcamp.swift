//
//  ImageBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/05/09.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        // Assets 폴더 내에 이미지 파일을 추가합니다.
        // 이때 이미지파일명을 동일하게 해야
        // Image("") 불러올 수 있습니다.
        Image("kick")
            .resizable()
            .scaledToFit()
            .clipShape(
                Circle()
            )
            .overlay() {
                Circle()
                    .frame(width: 70, height: 70)
                    .overlay(
                        Text("1")
                        .foregroundColor(Color.white)
                        .font(.largeTitle)
                    )
                    .offset(x: 80, y: 80)
            }
        
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
