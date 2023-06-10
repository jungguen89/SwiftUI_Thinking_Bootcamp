//
//  TextfieldBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/06/10.
//

import SwiftUI

struct TextfieldBootcamp: View {
    
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    //.textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.red)
                    .font(.headline)
                
                Button(action: {
                    if textIsAppropriate() {
                        saveText()
                    }
                }, label: {
                    Text("save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAppropriate() ? Color.green : Color.gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                })
                
                // 버튼을 특정 조건에 따른 비활성화
                .disabled(!textIsAppropriate())
                
                
                ScrollView {
                    
                    ForEach(dataArray, id:\.self) { text in
                        Text(text)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.black)
                            .background(Color.yellow.cornerRadius(10))
                            .font(.headline)
                    }
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextField Bootcamp")
        }
    }
    
    // 텍스트 확인
    func textIsAppropriate() -> Bool {
        if textFieldText.count >= 3 {
            return true
        }
        return false
    }
    
    // 텍스트 저장
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

struct TextfieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextfieldBootcamp()
    }
}
