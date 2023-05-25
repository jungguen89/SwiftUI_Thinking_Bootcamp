//
//  GridBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/05/24.
//

import SwiftUI

struct GridBootcamp: View {
    
    let columns: [GridItem] = [
        // fixed 는 고정된 크기를 지정해준다.
//        GridItem(.fixed(30), spacing: nil, alignment: nil),
//        GridItem(.fixed(30), spacing: nil, alignment: nil),
//        GridItem(.fixed(150), spacing: nil, alignment: nil),
//        GridItem(.fixed(30), spacing: nil, alignment: nil),
//        GridItem(.fixed(30), spacing: nil, alignment: nil)
        
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil)
    ]
    
    var body: some View {
        ScrollView {
            
            Rectangle()
                .fill(Color.orange)
                .frame(height: 300)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                // header를 고정시킬 수 있는 pinnedView
                pinnedViews: [.sectionHeaders],
                content: {
                   Section(header:
                            Text("Section 1")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity)
                    .background(Color.green)
                    .padding()
                   ) {
                       ForEach(0..<20) { index in
                           RoundedRectangle(cornerRadius: 6)
                               .frame(height: 150)
                       }
                   }
                    
                    Section(header:
                             Text("Section 2")
                     .foregroundColor(.white)
                     .font(.title)
                     .frame(maxWidth: .infinity)
                     .background(Color.red)
                     .padding()
                    ) {
                        ForEach(0..<20) { index in
                            RoundedRectangle(cornerRadius: 6)
                                .fill(.yellow)
                                .frame(height: 150)
                        }
                    }
                })
            
            // 기본적으로 사용 할 경우의 LazyVGrid
//            LazyVGrid(columns: columns) {
//                ForEach(0..<80){ index in
//                    Rectangle()
//                        .frame(height: 100)
//                }
//            }
        }
    }
}

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}
