//
//  ModelBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/06/15.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followercount: Int
    let isVerified: Bool
}


struct ModelBootcamp: View {
    
    @State var users: [UserModel] = [
//        "Nick", "Emilly", "Samantha", "Chris"
        UserModel(displayName: "Nick", userName: "nick123", followercount: 100, isVerified: true),
        UserModel(displayName: "Emily", userName: "Emily123", followercount: 2222, isVerified: false),
        UserModel(displayName: "Samatha", userName: "Samatha333", followercount: 34222, isVerified: false)
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack (spacing: 15) {
                        Circle()
                            .frame(width:  35, height: 35)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        
                        Spacer()
                        
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        
                        VStack {
                            Text("\(user.followercount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                }
                
//                ForEach(users, id:\.self) { name in
//                    HStack (spacing: 15) {
//                        Circle()
//                            .frame(width: 35, height: 35)
//                        Text(name)
//                    }
//                    .padding(.vertical, 10)
//                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Users")
        }
    }
}

struct ModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ModelBootcamp()
    }
}
