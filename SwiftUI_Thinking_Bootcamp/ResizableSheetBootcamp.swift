//
//  ResizableSheetBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/06/21.
//

import SwiftUI

struct ResizableSheetBootcamp: View {
    
    @State private var showSheet: Bool = false
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
            Button("Click Here") {
                showSheet.toggle()
            }
            .sheet(isPresented: $showSheet) {
                MyNextView()
                    .presentationDetents([.medium])
                    //fraction은 분수로 나누는 것 약간 퍼센트지
                    .presentationDetents([.fraction(0.2), .medium, .large])
                    //.presentationDragIndicator(.hidden)
                    //.interactiveDismissDisabled()
            }
        }
    }
}

struct MyNextView: View {
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color.yellow, Color.gray],
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
            .ignoresSafeArea()
            
        }
    }
}


struct ResizableSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ResizableSheetBootcamp()
    }
}
