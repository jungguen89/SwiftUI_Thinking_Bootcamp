//
//  StacksBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/05/08.
//

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .fill(Color.red)
                .frame(width: 200, height: 100)
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 100, height: 200)
            
            Rectangle()
                .fill(Color.blue)
                .frame(width: 125, height: 125)
        }
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
