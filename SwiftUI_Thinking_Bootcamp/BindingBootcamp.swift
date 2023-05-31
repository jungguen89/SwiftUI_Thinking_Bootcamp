//
//  BindingBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/05/29.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var title: String = "This is the title"
    
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .ignoresSafeArea(.all)
           
            VStack {
                Text(title)
                    .foregroundColor(.white)
                
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
            
        }
    }
}



struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}
