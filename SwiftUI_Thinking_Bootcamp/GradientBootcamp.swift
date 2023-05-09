//
//  GradientBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/05/09.
//

import SwiftUI

struct GradientBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                Color.red
                // 선형 그라데이션 적용
//                LinearGradient(
//                    colors:[Color.red, Color.blue,Color.yellow],
//                    startPoint: .leading,
//                    endPoint: .trailing)
                
                // 방사형 그라데이션 적용
                RadialGradient(
                    colors: [Color.blue, Color.yellow],
                    center: .center,
                    startRadius: 20,
                    endRadius: 150)

            )
            .frame(width: 300, height: 200)
    }
}

struct GradientBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientBootcamp()
    }
}
