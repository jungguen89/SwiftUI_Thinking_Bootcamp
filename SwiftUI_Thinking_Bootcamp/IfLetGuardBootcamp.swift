//
//  IfLetGuardBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/06/15.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    
    @State var currentUserID: String? = nil
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Here we are practicing safe coding!")
                
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                
                // DO NOT FORCE UNWRAP VALUES
                Text(displayText!)
                    .font(.title)
                
                
                if isLoading {
                    ProgressView()
                }
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                loadData2()
            }
        }
    }
    
    // 3초 뒤에 displayText에 문자가 생김
    // if ~ else 구문으로 구현
    func loadData() {
        
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now()+3) {
                displayText = "This is the new data! userID is \(userID)"
                isLoading = false
            }
        } else {
            displayText = "ERROR There is no UserID"
        }
    }
    
    // guard let 구문으로 구현
    func loadData2() {
        guard let userID = currentUserID else {
            // Run when failed
            displayText = "ERROR There is no UserID"
            return
        }
        // Run Sueccess
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now()+3) {
            displayText = "This is the new data! userID is \(userID)"
            isLoading = false
        }
    }
}

struct IfLetGuardBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardBootcamp()
    }
}
