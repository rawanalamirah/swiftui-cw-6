//
//  ContentView.swift
//  BMI
//
//  Created by rawan alamirah on 12/28/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Spacer()
            Text("BMI Calculator!")
                .font(.system(size: 50))
                .foregroundColor(/*@START_MENU_TOKEN@*/Color("Color")/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)
                .padding(.all)
            
            Spacer()
            
        NavigationView{
            VStack{
                Text("To Start Click On The Calculator")
                    .font(.system(size: 20, weight: .thin))
                    .foregroundColor(Color("Color"))
                    .multilineTextAlignment(.center)
                Spacer()
                NavigationLink( destination: BMI(), label: {
                    Image("CALCULATOR")
                    
                })
            }      
   }
  }
 }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
