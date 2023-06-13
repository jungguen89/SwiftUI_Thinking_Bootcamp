//
//  DatePickerBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/06/13.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var selectedData: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter
    }
    
    @State var todoMemo: String = ""
    
    var body: some View {
        ZStack {
            Color.yellow.opacity(0.2)
                .ignoresSafeArea(.all)
            
            VStack{
                
                DatePicker("Select a Date", selection: $selectedData)
                    .tint(Color.red)
                    .datePickerStyle(
//                        CompactDatePickerStyle()
                     GraphicalDatePickerStyle()
                       // WheelDatePickerStyle()
                    )
                Spacer()
                
                Text("Selected Date is: ")
                Text(dateFormatter.string(from: selectedData))
                    .font(.title)
                
                Spacer()
                
//                TextField("Todo memo", text: $todoMemo)
//                    .font(.headline)
//                    .fontWeight(.semibold)
//                    .padding()
//                    .background(Color.gray)
//                    .padding()
//                    .cornerRadius(5)
                TextEditor(text: $todoMemo)
    
                Spacer()
            }
            
        }
    }
}

struct DatePickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp()
    }
}
