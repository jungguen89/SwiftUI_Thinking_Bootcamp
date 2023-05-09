//
//  FrameBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/05/10.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text("Hello, World!")
            .background(Color.green)
            // frame을 통해 사이즈를 정할 수 있습니다. alignment는 정렬입니다.
            // frame뒤에 붙는 background는 text가 아닌 frame에 적용입니다.
//            .frame(width: 200, height: 200, alignment: .center)
//            .background(Color.yellow)
        
            // frame내에 maxWidth나 minWidth을 통해 최대, 최소 사이즈 조절을 지정해줄 수 있습니다.
            .frame(maxWidth: .infinity, alignment: .center)
            .background(Color.yellow)
            .frame(maxHeight: .infinity, alignment: .center)
            .background(Color.blue)
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
    }
}
