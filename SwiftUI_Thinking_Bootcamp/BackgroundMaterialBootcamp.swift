//
//  BackgroundMaterialBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/06/21.
//

import SwiftUI

struct BackgroundMaterialBootcamp: View {
    
    @State var isSheet: Bool = false
    
    var body: some View {
        ZStack {
            Spacer()
            
            Button(action: {
                isSheet.toggle()
            }, label: {
                Text("Click Here")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background()
                    .cornerRadius(10)
                    .padding()
                    
            })
            
            VStack {
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
//            .background(.ultraThinMaterial)
            .cornerRadius(30)
            .sheet(
                isPresented: $isSheet) {
                    thirdScreen()
                }
        }
        .ignoresSafeArea()
        .background(
            Image("kick")
        )
    }
}

struct BackgroundMaterialBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterialBootcamp()
    }
}

struct thirdScreen: View {
    
    let url = URL(string: "https://picsum.photos/400")
    
    var body: some View {
        VStack {
            Text("third Screen")
            
            AsyncImage(url: url) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                case.success(let returnedImage):
                    returnedImage
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .cornerRadius(20)
                case.failure:
                    Image(systemName: "questionmark")
                        .font(.headline)
                default:
                    Image(systemName: "questionmark")
                        .font(.headline)
                }
            }
            
                
        }
        .presentationDetents([.medium, .large])
//        .frame(height: 350)
        .presentationBackground(.ultraThinMaterial)
    }
}
