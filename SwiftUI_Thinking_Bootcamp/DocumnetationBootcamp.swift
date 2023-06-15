//
//  DocumnetationBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/06/15.
//

import SwiftUI

struct DocumnetationBootcamp: View {
    
    // MARK: PROPERTIES
    @State var showAlert: Bool = false
    @State var data: [String] = [
        "Apples", "Oranges", "Bananas"
    ]
    
    // MARK: BODY
    
    // working copy - things to do:
    /*
     여러줄을 작성할 때는 이렇게 하면 된다.
     이렇게
     이렇게
     이렇게 말이다.
     */
    var body: some View {
        NavigationView { // START: NAVI
            ZStack {
                //  background
                Color.red.ignoresSafeArea(.all)
                
                // foreground
                foregorundLayer
                .navigationTitle("Documentation Bootcamp")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button("Alert", action: {
                            showAlert.toggle()
                        })
                    } // END: NAV
                }
                .alert(isPresented: $showAlert,content: {
                    getAlert(text: "This is the alert!")
            })
            }
        }
    }
    
    /// This is the foreground layer that holds the scrollView
    private var foregorundLayer: some View {
        ScrollView { // START: SCROLLV
            Text("Hello")
            ForEach(data, id:\.self) { name in
                Text(name)
                    .font(.headline)
            }
        } // END: SCROLLV
    }
    
    
    
    // MARK: FUNCTIONS
    /// Gets an alert with a spectified title
    ///
    /// This function creates and returns and alert immediately. The alert will have a title based on the text parameter but it will NOT have a message
    /// ```
    /// getAlert(text: "HI") -> Alert(title: Text("HI"))
    /// ```
    ///
    /// - Warning: There is no additional message in this Alert
    /// - Parameter text: This is the title for the alert
    /// - Returns: Returns an alert with a title
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

    // MARK: PREVIEW
struct DocumnetationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumnetationBootcamp()
    }
}
