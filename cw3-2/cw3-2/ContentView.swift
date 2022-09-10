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
            counter1(count1: $count1)
            counter2(count2: $count2)
            counter3(count3: $count3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct counter1: View {
    @Binding var count1: Int
    var body: some View {
        HStack{
            Text("سبحان الله و بحمده")
                .padding()
            Spacer()
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
                .padding()
        }
    }
}

struct counter2: View {
    @Binding var count2: Int
    var body: some View {
        HStack{
            Text("سبحان الله العظيم")
                .padding()
                Spacer()
            Text("\(count2)")
                .foregroundColor(Color.white)
                .frame(width: 50, height: 50)
                .background(.cyan)
                .clipShape(Circle())
                .onTapGesture {
                    count2+=1
                }
                .onLongPressGesture(minimumDuration: 1){
                    count2 = 0
                }
                .padding()
        }
    }
}

struct counter3: View {
    @Binding var count3: Int
    var body: some View {
        HStack{
            Text("لا إله إلا الله")
                .padding()
            Spacer()
            Text("\(count3)")
                .foregroundColor(Color.white)
                .frame(width: 50, height: 50)
                .background(.cyan)
                .clipShape(Circle())
                .onTapGesture {
                    count3+=1
                }
                .onLongPressGesture(minimumDuration: 1){
                    count3 = 0
                }
                .padding()
                
        }
    }
}
