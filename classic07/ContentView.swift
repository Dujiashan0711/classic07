//
//  ContentView.swift
//  classic07
//
//  Created by 暨大附中２ on 2021/9/30.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var age = Age()
    @StateObject var age2 = Age2()
    @StateObject var age3 = Age3()
    
    var body: some View {
        VStack{
            ZStack{
            HStack{
            Image(systemName:"gearshape")
                .font(.largeTitle)
                .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                .padding(.top,60)
            Text("設定頁面")
                .font(.largeTitle)
                .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                .padding(.top,60)
            }
            }
            NavigationView{
                ZStack{
                    Rectangle()
                        .frame(width: 430, height: 150, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)))
                    Rectangle()
                        .frame(width: 400, height: 100, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(10)
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
                                        .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                                }
                                Button {
                                    age.number -= 1
                                } label: {
                                    Text("－")
                                        .font(.title)
                                        .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                                }
                            }
                            .frame(width: 100, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        }
                        Spacer()
                    }
                }
                }
                    .environmentObject(age)
                NavigationView{
                    ZStack{
                        Rectangle()
                            .frame(width: 430, height: 150, alignment: .center)
                            .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)))
                        Rectangle()
                            .frame(width: 400, height: 100, alignment: .center)
                            .foregroundColor(Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)))
                            .cornerRadius(10)
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
                                    age2.number += 1
                                } label: {
                                    Text("＋")
                                        .font(.title)
                                        .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                                }
                                Button {
                                    age2.number -= 1
                                } label: {
                                    Text("－")
                                        .font(.title)
                                        .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                                }
                            }
                        }
                        Spacer()
                    }
                }
                }
                    .environmentObject(age2)
                NavigationView{
                    ZStack{
                        Rectangle()
                            .frame(width: 430, height: 150, alignment: .bottom)
                            .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)))
                        Rectangle()
                            .frame(width: 400, height: 100, alignment: .center)
                            .foregroundColor(Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)))
                            .cornerRadius(10)
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
                                    age3.number += 1
                                } label: {
                                    Text("＋")
                                        .font(.title)
                                        .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                                }
                                Button {
                                    age3.number -= 1
                                } label: {
                                    Text("－")
                                        .font(.title)
                                        .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                                }
                            }
                        }
                        Spacer()
                }
                }
            }.environmentObject(age3)
            Spacer()
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
    
    @EnvironmentObject var age2 : Age2
    
    var body: some View {
        Text("觸控音效：\(age2.number)")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
    }
}
struct other3: View {
    
    @EnvironmentObject var age3 : Age3
    
    var body: some View {
        Text("靈敏度：\(age3.number)")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
    }
}
