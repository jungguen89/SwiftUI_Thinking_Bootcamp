//
//  SpacerBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/05/11.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        HStack {
            
            Spacer()
            
            Rectangle()
                .frame(width: 100, height: 100)
            
            // 이 두 사각형을 화면 양 끝단을 옮기는 경우
            // Spacer() 사용
            Spacer()
        
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 100, height: 100)
            
            // 양 끝단에서 일정간격을 두고 띄우되
            // 두 사각형 모두 동일한 간격을 갖고 가기 위해서
            // Spacer() 추가
            Spacer()
        }
        .background(Color.green)
    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
