//
//  ForeachBootcam[.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/05/20.
//

import SwiftUI

struct ForeachBootcamp: View {
    
//    let data: [String] = ["Hi", "Hello", "Nict to meet you"]
    
    struct NamedFont:Identifiable {
        var id: String {name}
        
        let name: String
        let font: Font
        let color: Color
    }
    
    let namedFonts: [NamedFont] = [
        NamedFont(name: "Large Title", font: .largeTitle, color: .red),
        NamedFont(name: "Title", font: .title, color: .blue),
        NamedFont(name: "Headline",font: .headline, color: .purple),
        NamedFont(name: "Body", font: .body, color: .green)
        
    ]
    
    var body: some View {
        
        // data 라는 배열을 생성하여
        // 배열 내의 값을 갖고오도록 해보았습니다.
       /* VStack (alignment: .leading, spacing: 10){
            ForEach(data.indices, id:\.self) { index in
                HStack{
                    Text("\(index)")
                    Text("\(data[index])")
                }
            }
        } */
        
        // apple에서 제공하는 예제 갖고오기
        VStack {
            ForEach(namedFonts) { index in
                Text(index.name)
                    .font(index.font)
                    .foregroundColor(index.color)
            }
        }
    }
}

struct ForeachBootcam__Previews: PreviewProvider {
    static var previews: some View {
        ForeachBootcamp()
    }
}
