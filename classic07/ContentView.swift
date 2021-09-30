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
            ZStack{
                Rectangle()
                    .frame(width: 430, height: 140, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                    .ignoresSafeArea()
            HStack{
            Image(systemName:"gearshape")
                .font(.largeTitle)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .padding(.bottom,70)
            Text("Setting")
                .font(.largeTitle)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .padding(.bottom,70)
            }
            }
            NavigationView{
                VStack{
                    HStack{
                        Spacer()
                        NavigationLink(
                            destination: other(),
                            label: {
                                Text("系統音量")
                                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                                    .font(.title)
                            }
                        )
                        Spacer()
                        ZStack{
                            Rectangle()
                                .frame(width: 100, height: 50, alignment: .center)
                                .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                                .cornerRadius(16)
                            HStack{
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
                            .frame(width: 100, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        }
                        Spacer()
                    }
                    
                    HStack{
                        Spacer()
                        NavigationLink(
                            destination: other2(),
                            label: {
                                Text("觸控音效")
                                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                                    .font(.title)
                            }
                        )
                        Spacer()
                        ZStack{
                            Rectangle()
                                .frame(width: 100, height: 50, alignment: .center)
                                .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                                .cornerRadius(16)
                            HStack{
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
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        }
                        Spacer()
                    }
                    HStack{
                        Spacer()
                        NavigationLink(
                            destination: other3(),
                            label: {
                                Text("靈敏程度")
                                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                                    .font(.title)
                            }
                        )
                        Spacer()
                        ZStack{
                            Rectangle()
                                .frame(width: 100, height: 50, alignment: .center)
                                .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                                .cornerRadius(16)
                            HStack{
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

                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        }
                        Spacer()
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
