//
//  ListBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/06/07.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = [
        "Apple", "Orange", "Banana", "Peach"
    ]
    
    @State var newItem: String = ""
    var body: some View {
        NavigationView {
                List {
                    TextField("Hello", text: $newItem)
                    Section {
                        ForEach(fruits, id: \.self) { fruit in
                            Text(fruit.capitalized)
                                .font(.body)
                                .fontWeight(.semibold)
    //                            .frame(maxWidth: .infinity, maxHeight:.infinity)
    //                            .background(Color.brown)
                        }
                        //.onDelete(perform: delete)
                        .onDelete(perform: {indexSet in
                            fruits.remove(atOffsets: indexSet)
                        })
//                        .onMove(perform: { indices, newOffset in
//                            fruits.move(fromOffsets: indices, toOffset: newOffset)
//                        })
                        
                        .onMove(perform: {indices, newOffset in
                            fruits.move(fromOffsets: indices, toOffset: newOffset)
                        })
                        .listRowBackground(Color.brown)
                    } header: {
                        HStack {
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                            
                        }
                        .font(.title)
                        .foregroundColor(.orange)
                    }
                    
                }
                .navigationTitle("Grocery Store")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        EditButton()
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("Add", action: {
                            add()
                        })
                    }
            }
            }
        }
    
    
    var addButton: some View {
        Button("Add", action: {
            add()
        })
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add() {
        fruits.append(newItem)
        newItem = ""
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
