//
//  PopoverBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/06/05.
//

import SwiftUI

struct PopoverBootcamp: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea(.all)
            
            VStack {
                Button("누르세용") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
                
                // SHEET 설정
//                    .sheet(isPresented: $showNewScreen, content: {
//                        NewScreen()
//                })
                
                
                // transition 설정
//                ZStack {
//                    if showNewScreen {
//                        NewScreen(showNewScreen: $showNewScreen)
//                            .padding(.top, 100)
//                            .transition(.move(edge: .bottom))
//                            .animation(.spring())
//                    }
//                }
//                .zIndex(2.0)
                
                
                // Animation Offset
                NewScreen(showNewScreen: $showNewScreen)
                    .padding(.top, 100)
                    .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                    .animation(.spring())
                
            }
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.dismiss) var dismiss
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topTrailing){
            Color.purple
                .ignoresSafeArea(.all)
            
            VStack() {
                Button(action: {
                    // dismiss()는 transition때는 안된다.
                    // 그래서 Binding을 통해 showNewScreen 값을 변경하려고 한다.
                    //dismiss()
                    showNewScreen.toggle()
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .padding(20)
                    
                })
            }
        }
    }
}

struct PopoverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PopoverBootcamp()
    }
}
