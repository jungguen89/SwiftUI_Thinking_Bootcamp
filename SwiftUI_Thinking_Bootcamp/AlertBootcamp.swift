//
//  AlertBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/06/08.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var backgroundColor: Color = Color.green
    
    @State var alertType: MyAlerts? = nil
    
    // enum을 통해 경고창 종류 설정
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea(.all)
            
            VStack {
                Button("Click here!!!") {
                    alertType = .error
                    showAlert.toggle()
                }
                
                Button("Click here 2!!!") {
                    alertType = .success
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert) {
                getAlert()
            }
            
        }
        
    }
    
    // 경고창 함수 생성
    // 각 경고 상황에 따른 값 설정
    func getAlert() -> Alert {
        switch alertType {
        case .error:
            return Alert(
                title: Text("This is button1"),
                message: Text("Button1 is clicked"),
                primaryButton: .default(Text("Ok")),
                secondaryButton: .cancel())
        default:
            return Alert(
                title: Text("This is button2"),
                message: Text("Button2 is clicked"),
                primaryButton: .default(Text("Ok")),
                secondaryButton: .cancel())
        }
//        Alert(title: Text("this is the title"),
//              message: Text("This is the message"),
//              primaryButton: .default(Text("배경색 바꾸기"), action: {
//            backgroundColor = Color.red
//        }),
//              secondaryButton: .cancel())
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
