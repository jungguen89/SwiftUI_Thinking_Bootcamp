//
//  StepperBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/06/13.
//

import SwiftUI

struct StepperBootcamp: View {
    
    @State var stepperValue: Int = 10
    
    @State var widthIncrement: CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                .font(.title)
                .fontWeight(.semibold)
                .padding(50)
                .foregroundColor(.red)
                .background(Color.green.opacity(0.3))
                .cornerRadius(30)
                .padding()
            
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 100 + widthIncrement, height: 100)
            
            Stepper("Setting size",
                    onIncrement: {
                withAnimation(.easeIn) {
                    incrementWidth(amount: 10)
                }
            },
                    onDecrement: {
                withAnimation(.easeOut) {
                   incrementWidth(amount: -10)
                }
            }
            )
                
        }
    }
    
    func incrementWidth(amount: CGFloat) {
        widthIncrement += amount
    }
    
    func decrementWidth(amount: CGFloat) {
        widthIncrement -= amount
    }
}

struct StepperBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StepperBootcamp()
    }
}
