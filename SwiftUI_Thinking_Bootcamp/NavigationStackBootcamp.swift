//
//  NavigationStackBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/06/21.
//

import SwiftUI

struct NavigationStackBootcamp: View {
    
    let fruits = ["Apple", "Banana", "Mango"]
    @State private var paths: [String] = []
    var body: some View {
        NavigationStack(path: $paths) {
            ScrollView {
                VStack {
                    
                    ForEach(fruits, id:\.self) {j in
                        NavigationLink(value: j, label: {
                            Text("Fruit :\(j)")
                        })
                    }
                    
                    ForEach(0..<10) { i in
                        NavigationLink(value: i, label: {
                            Text("Click me!!\(i)")
                        })
                    }
                }
            }
            .navigationTitle("Come on!")
            .navigationDestination(for: Int.self, destination: {
                value in myScreen2(value: value)
            })
            
            .navigationDestination(for: String.self, destination: {
                 value in Text("value : \(value)")

            })
            
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        
                    } label: {
                        Image(systemName: "heart.fill")
                    }
                }
                
                ToolbarItem(placement: .navigation) {
                    Button {
                        
                    } label: {
                        Image(systemName: "heart.fill")
                    }

                }
            }
            .navigationBarTitleDisplayMode(.inline)
            // navigationStack에 다가 paths를 설정한다.
            .toolbarTitleMenu {
                Button("Screen 1") {
                    paths.append("Screen 1")
                }
                
                Button("Screen 2") {
                    paths.append("Screen 2")
                }
            }
            .navigationDestination(for: String.self) { value in
                Text("New screen: \(value)")
            }
        }
    }
}

struct NavigationStackBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackBootcamp()
    }
}

struct myScreen2: View {
    
    let value: Int
    
    init(value: Int) {
        self.value = value
    }
    
    var body: some View {
        Text("Screen \(value)")
    }
}
