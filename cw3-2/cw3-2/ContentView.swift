//
//  ContentView.swift
//  cw3-2
//
//  Created by Abdallah Alshemeri on 10/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var count1 = 0
    @State var count2 = 0
    @State var count3 = 0
    var body: some View {
        VStack{
            Counter(text: "سبحان الله و بحمده", count1: $count1)
            Counter(text: "سبحان الله العظيم", count1: $count2)
            Counter(text: "لا إله إلا الله", count1: $count3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



struct Counter: View {
    var text: String
    @Binding var count1: Int
    var body: some View {
        HStack{
            Text(text)
                .font(.largeTitle)
                .padding()
            Text("\(count1)")
                .foregroundColor(Color.white)
                .frame(width: 50, height: 50)
                .background(.cyan)
                .clipShape(Circle())
                .onTapGesture {
                    count1+=1
                }
                .onLongPressGesture(minimumDuration: 1){
                    count1 = 0
                }
        }
    }
}
