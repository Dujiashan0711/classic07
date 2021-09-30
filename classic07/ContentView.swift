//
//  ContentView.swift
//  classic07
//
//  Created by 暨大附中２ on 2021/9/30.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var age = Age()
    
    var body: some View {
        VStack{
            Spacer()
            Spacer()
            HStack{
            Image(systemName:"gearshape")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Text("Setting")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        }
        NavigationView{
            VStack{
                HStack{
            NavigationLink(
                destination: other(),
                label: {
                    Text("系統音量")
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                        .font(.title)
                }
            )
                    Button {
                        age.number += 1
                    } label: {
                        Text("＋")
                            .font(.title)
                    }
                    Button {
                        age.number -= 1
                    } label: {
                        Text("－")
                            .font(.title)
                    }
                }
                HStack{
                NavigationLink(
                    destination: other2(),
                    label: {
                        Text("觸控音效")
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                            .font(.title)
                    }
                    )
                    Button {
                        age.number += 1
                    } label: {
                        Text("＋")
                            .font(.title)
                    }
                    Button {
                        age.number -= 1
                    } label: {
                        Text("－")
                            .font(.title)
                    }
                }
                HStack{
                NavigationLink(
                    destination: other3(),
                    label: {
                        Text("靈敏程度")
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                            .font(.title)
                    }
                    )
                    Button {
                        age.number += 1
                    } label: {
                        Text("＋")
                            .font(.title)
                    }
                    Button {
                        age.number -= 1
                    } label: {
                        Text("－")
                            .font(.title)
                    }
                }
            }
        }.environmentObject(age)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct other: View {
    
    @EnvironmentObject var age : Age
    
    var body: some View {
        Text("系統音量：\(age.number)")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
    }
}
struct other2: View {
    
    @EnvironmentObject var age : Age
    
    var body: some View {
        Text("觸控音效：\(age.number)")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
    }
}
struct other3: View {
    
    @EnvironmentObject var age : Age
    
    var body: some View {
        Text("靈敏度：\(age.number)")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
    }
}
