//
//  AppStorageBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/06/20.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
    @AppStorage("name") var currentUserName: String = "None"
//    @AppStorage("nameList") var nameList: [String] = ["Emily","Charlie"]
    
    
    
    
    var body: some View {
        VStack(spacing: 20) {
            
            
            // Text(currentUserName ?? "Add Name here")
            
            TextField("Enter the user Name", text: $currentUserName)
                .padding()
                .background(Color.yellow)
                .cornerRadius(10)
                .padding()
            
            Button("Save", action: {
                // nameList.append(currentUserName)
                
            })
            
            
        }
    }
}

struct AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp()
    }
}


struct userInfo {
    var id: String = UUID().uuidString
    var name: String
    var age: Int 
}
