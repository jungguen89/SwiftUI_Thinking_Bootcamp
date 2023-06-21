//
//  ListSwipeActionsBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/06/21.
//

import SwiftUI

struct ListSwipeActionsBootcamp: View {
    
    @State var fruits: [String] = [
        "Apple", "Banana", "Mango", "Melon", "Peach"
    ]
    
    var body: some View {
        List {
            ForEach(fruits, id:\.self) {
                Text($0.uppercased())
                    .swipeActions(edge: .trailing,
                                  allowsFullSwipe: true) {
                        Button("Archive", action: {
                            
                        })
                        .tint(.orange)
                        Button("Save", action: {
                            
                        })
                        .tint(.red)
                        Button("Add", action: {
                            
                        })
                        .tint(.green)
                    }
                      .swipeActions(edge: .leading,
                                    allowsFullSwipe: true) {
                          Button("Share", action: {
                              
                          })
                          .tint(.blue)
                      }
            }
        }
    }
}

struct ListSwipeActionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionsBootcamp()
    }
}

