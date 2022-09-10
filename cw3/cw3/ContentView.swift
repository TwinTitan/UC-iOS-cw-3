//
//  ContentView.swift
//  cw3
//
//  Created by Abdallah Alshemeri on 10/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var grade = ""
    @State var g = ""
    var body: some View {
        
        VStack
            {
                Text("حاسبة الدرجات")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .frame(width: 390, height: 200)
                Image("calc")
                    .resizable()
                    .frame(width: 150, height: 200)
                TextField("Your Grade", text: $grade)
                    .multilineTextAlignment(.center)
                    .frame(width: 200, height: 30)
                    .background()
                    .clipShape(Capsule())
                Text("احسب درجتي")
                    .foregroundColor(Color.black)
                    .frame(width: 100, height: 30)
                    .background(.yellow)
                    .clipShape(Capsule())
                    .padding()
                    .onTapGesture {
                        if (Double(grade) ?? 0) >= 90 && (Double(grade) ?? 0) <= 100
                        {
                            g = "ممتاز"
                        }
                        else if (Double(grade) ?? 0) >= 80 && (Double(grade) ?? 0) <= 89
                        {
                           g = "جيد جداً"
                        }
                        else if (Double(grade) ?? 0) >= 70 && (Double(grade) ?? 0) <= 79
                        {
                            g = "جيد"
                        }
                        else if (Double(grade) ?? 0) >= 60 && (Double(grade) ?? 0) <= 69
                        {
                           g = "مقبول"
                        }
                        else if (Double(grade) ?? 0) < 60 && (Double(grade) ?? 0) >= 0
                        {
                           g = "راسب"
                        }
                        else
                        {
                           g = "الدرجة من ٠ الى ١٠٠"
                        }
                        
                    }
                    Text(" درجتك هي")
                    .font(.title2)
                    .foregroundColor(Color.white)
                    .padding(.bottom)
                
                
                Text(g)
                    .font(.largeTitle)
                    
                    
                
            }
            .frame(width: 2000, height: 2000)
            .background(.cyan)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
