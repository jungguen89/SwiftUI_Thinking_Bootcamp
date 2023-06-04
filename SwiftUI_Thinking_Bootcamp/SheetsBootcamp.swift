//
//  SheetsBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/06/04.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    // sheet를 열기 위한 바인딩 값
    @State var showSheet:Bool = false
    
    var body: some View {
        ZStack {
            // 배경화면
            Color.gray
                .ignoresSafeArea(.all)
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundColor(.black)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            })
            
            // sheet 창 띄우기
            // sheet는 view 당 1개만 가능
            // sheet내에는 if 문 쓰지말것 (올바른 방법 아님)
            // .sheet 말고도 .fullScreenCover도 같은 건데 단지 화면에 꽉참
            .sheet(isPresented: $showSheet, content: {
                secondScreen()
            })
        }
    }
}

struct secondScreen: View {
    
    // sheet 창 닫기
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            
            Color.red
                .ignoresSafeArea(.all)
            
            Button(action: {
                dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.black)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            })
        }
    }
}

struct SheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetsBootcamp()
    }
}
