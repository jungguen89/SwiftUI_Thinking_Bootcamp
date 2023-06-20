//
//  ViewModelBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/06/16.
//

import SwiftUI


struct FruitModel: Identifiable{
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

// ObservableObject <-> Published 상호관계
class FruitViewModel: ObservableObject {
    
    @Published var fruitArray: [FruitModel] = []
    @Published var name: String = ""
    @Published var count: Int = 0
    @Published var isLoading: Bool = false
    
    init(name: String, count: Int) {
        self.name = name
        self.count = count
        
        getFruits()
    }
    
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Oranges", count: 3)
        let fruit2 = FruitModel(name: "Peaches", count: 22)
        let fruit3 = FruitModel(name: "Banana", count:12)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
    }
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruitArray.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add() {
        fruitArray.append(FruitModel(name: name, count: count))
    }
}


struct ViewModelBootcamp: View {
    
    @StateObject var fruitViewModel: FruitViewModel
    
    var body: some View {
        NavigationView {
            List {
                
                HStack {
                    TextField("Type the new Fruit!!", text: $fruitViewModel.name)
                    
                    Button(action: {
                        add()
                    }, label: {
                        Text("Add")
                    })
                }
                
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
//                    .onMove(perform: { indices, newOffset in
//                        fruitViewModel.fruitArray.move(fromOffsets: indices, toOffset: newOffset)
//                    })
                    .onMove(perform: fruitViewModel.move)
                }
                
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruits List")
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing, content: {
                    NavigationLink(destination: RandomScreen( fruitViewModel: fruitViewModel), label: {
                        Image(systemName: "arrow.right")
                            .font(.title)
                    })
                })
                
                ToolbarItem(placement: .navigationBarLeading, content: {
                    EditButton()
                })
            }
            
        }
    }
    
//    func add() {
//        fruitViewModel.fruitArray.append(FruitViewModel(name: fruitViewModel.name, count: fruitViewModel.count))
//    }
    
    func add() {
        fruitViewModel.fruitArray.append(FruitModel(name: fruitViewModel.name, count: fruitViewModel.count))
    }
}

struct RandomScreen: View {
    
    @Environment(\.dismiss) var dismiss
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View {
        
        ZStack {
            
            Color.green.ignoresSafeArea(.all)
            
            VStack {
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .foregroundColor(.white)
                        .font(.title)
                }
            }
        }
    }
}


struct ViewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootcamp(fruitViewModel: FruitViewModel(name: "Oranges", count: 23))
        // RandomScreen()
    }
}
