//
//  SafeAreaInsetBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/06/21.
//

import SwiftUI

struct SafeAreaInsetBootcamp: View {
    var body: some View {
        NavigationStack {
            List(0..<10) { _ in
                Rectangle()
                    .frame(height: 300)
            }
            .navigationTitle("Safe Area Insets")
            .navigationBarTitleDisplayMode(.inline)
            // alignment 는 정렬하는 걸 말한다. 
            .safeAreaInset(edge: .bottom, alignment: .leading, spacing: nil) {
                Text("HI")
                    .padding()
                    //.frame(maxWidth: .infinity)
                    .background(Color.yellow)
                    .clipShape(Circle())
                    .padding()
            }
        }
    }
}

struct SafeAreaInsetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaInsetBootcamp()
    }
}
