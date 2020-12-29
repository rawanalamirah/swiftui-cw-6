//
//  BMI.swift
//  BMI
//
//  Created by rawan alamirah on 12/28/20.
//

import SwiftUI
struct BMITextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .multilineTextAlignment(.leading)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .border(Color.blue, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            .padding()
        
    }
}


struct BMI: View {
    @State var Height: String = ""
    @State var weight: String = ""
    @State var BMI: Double = 0
    @State var BMIStatus = ""
    @State var BMIS = ""
    
    var body: some View {
        ScrollView{
        VStack{
            
            Text("تفضّل اصدمنا")
                .multilineTextAlignment(.center)
                .font(.title2)
                .foregroundColor(/*@START_MENU_TOKEN@*/Color.orange/*@END_MENU_TOKEN@*/)
                .padding()
            
            TextField("Height(m)", text: $Height)
                .modifier(BMITextFieldModifier())
            
            TextField("weight(kg)", text: $weight)
                .modifier(BMITextFieldModifier())
          
            Button(action:{
                let BMICal = (Double(weight)! / (Double(Height)! * Double(Height)!))
                 BMI = BMICal
                if BMICal <= 20{
                    BMIStatus = "thin"
                } else if BMICal <= 25{
                    BMIStatus = "normal"
                } else{
                    BMIStatus = "fat"
                }
                
                if BMICal <= 20{
                    BMIS = "شسالفه يبه"
                } else if BMICal <= 25{
                    BMIS = "مينون بروتين خيّي"
                } else{
                    BMIS = "شدعوه حجّي؟"
                }
                
            },
            label: {
                Text("GO")
                    .fontWeight(.regular)
                    .padding()
                    .foregroundColor(.orange)
                    .font(.system(size: 20 ))
            }
            )
            
            
            Text("\(BMI)")
                .padding(.bottom)
                .foregroundColor(.orange)
                .font(.system(size: 20))
            Image("\(BMIStatus)")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("\(BMIS)")
                .multilineTextAlignment(.center)
                .font(.title2)
                .foregroundColor(/*@START_MENU_TOKEN@*/Color.orange/*@END_MENU_TOKEN@*/)
                .padding()
            
          Spacer()
        }
    }
        }
}
    

struct BMI_Previews: PreviewProvider {
    static var previews: some View {
        BMI()
    }
}
