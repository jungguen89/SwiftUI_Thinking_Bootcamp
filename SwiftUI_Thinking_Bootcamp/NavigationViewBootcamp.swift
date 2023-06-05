//
//  NavigationViewBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/06/06.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("Move to ", destination: {
                    OtherScreen()
                })
            }
            .navigationTitle("Navigation Title")
            .toolbar {
                    // 상단 메뉴를 지정해줄 수 있음
                    ToolbarItem(placement: .navigationBarLeading) {
                        NavigationLink(destination:{ Text("NavigationBarLeading")}, label: {
                            Image(systemName: "person.fill")
                        })
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        NavigationLink(destination: {
                            Text("NavigationBarTrailing")
                        }, label: {
                            Image(systemName: "gear")
                        })
                    }
                
            }
        }
    }
}

struct OtherScreen: View {
    
    // 뒤로가기 숨겼을 때 대신할 버튼
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Color.gray.ignoresSafeArea(.all)
                .navigationTitle("Other Screen")
                // 기본으로 제공되는 뒤로가기 버튼 숨김
                .toolbar(.hidden)
            
            VStack {
                Button(action: {
                    dismiss()
                }, label: {
                    Image(systemName: "xmark")
                        .font(.largeTitle)
                        .padding(20)
                        .foregroundColor(.white)
                })
            }
            
        }
    }
}


struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
