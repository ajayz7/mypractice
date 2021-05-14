//
//  ContentView.swift
//  Task1
//
//  Created by Ksheetij Tayde on 12/05/21.
//  Copyright © 2021 rasika. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View
    {
    NavigationView {
                ScrollView(.vertical) {
                
                    VStack {
                        Spacer()
                        Image("logo")
                        .resizable()
                        .frame(width: 80, height: 80, alignment: .center)
                Spacer()
                        
                
                        DropDown()
                        ScrollView(.horizontal, showsIndicators: true) {
                            HStack {
                                Image("P1")
                               .resizable()
                               .cornerRadius(15)
                               .frame(width: 350, height: 250, alignment: .center).padding()
                                
                                Image("p2")
                                .resizable()
                        .cornerRadius(15)
                            .frame(width: 350, height: 250, alignment: .center).padding()
                        Image("p3")
                                .resizable()
                        .cornerRadius(15)
                            .frame(width: 350, height: 250, alignment: .center).padding()
                        Image("p4")
                                .resizable()
                        .cornerRadius(15)
                            .frame(width: 350, height: 250, alignment: .center).padding()
                      }
                }
                //Spacer()
                HStack {
                    VStack{
                    Image("classes")
                    .resizable()
                        .frame(width: 180, height: 150).cornerRadius(20)
                    //Spacer()
                        
                        NavigationLink(destination: Classes()){
                            Text("Classes").font(.headline).frame(width: 150, height: 50).foregroundColor(.black)
                        }
                        
                        Spacer()
                    }.frame(width: 120, height: 180)
                        .padding()
                        .background(Color.init(UIColor.secondarySystemFill))
                        .cornerRadius(20).padding()
                  
                    Spacer()
                    VStack{
                    Image("trampoline")
                    .resizable()
                        .frame(width: 180, height: 150).cornerRadius(20)
                    //Spacer()
                        
                        NavigationLink(destination: Trampoline()){
                            Text("Trampoline").font(.headline).frame(width: 150, height: 50).foregroundColor(.black)
                        }
                        Spacer()
                    }.frame(width: 120, height: 180)
                        .padding()
                        .background(Color.init(UIColor.secondarySystemFill))
                        .cornerRadius(20).padding()
                Spacer()
            }
                HStack {
                        VStack{
                        Image("yoga")
                        .resizable()
                            .frame(width: 180, height: 150).cornerRadius(20)
                        //Spacer()
                            
                            NavigationLink(destination: Yoga()){
                                Text("Yoga").font(.headline).frame(width: 150, height: 50).foregroundColor(.black)
                            }
                            Spacer()
                        }.frame(width: 120, height: 180)
                            .padding()
                            .background(Color.init(UIColor.secondarySystemFill))
                            .cornerRadius(20).padding()
                    
                       Spacer()
                        VStack{
                        Image("aerobics")
                        .resizable()
                            .frame(width: 180, height: 150).cornerRadius(20)
                        //Spacer()
                            
                            NavigationLink(destination: Aerobics()){
                                Text("Aerobics").font(.headline).frame(width: 150, height: 50).foregroundColor(.black)
                            }
                            Spacer()
                        }.frame(width: 120, height: 180)
                            .padding()
                            .background(Color.init(UIColor.secondarySystemFill))
                            .cornerRadius(20).padding()
                    Spacer()
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
 

struct DropDown : View {
    @State var expand = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Location").font(.headline)
                Image("down").resizable().frame(width: 15, height: 15)
            }.onTapGesture {
                self.expand.toggle()
            }
            if expand{
                
                Button(action: {
                    
                }){
                    Text("Pune")
                }.foregroundColor(.black)
                
                Button(action: {
                    
                }){
                    Text("Mumbai")
                }.foregroundColor(.black)
                
                Button(action: {
                    
                }){
                    Text("Delhi")
                }.foregroundColor(.black)
                
                Button(action: {
                    
                }){
                    Text("Bangalore")
                }.foregroundColor(.black)
                
            }
            
            
            
        }.animation(.spring())
    }
       
}


struct Classes : View {
    var body : some View {
        VStack {
            
       
            Text("Classes Details").fontWeight(.heavy)
            }.navigationBarTitle("Classes")
}
}

struct Trampoline : View {
    var body : some View {
        VStack {
            
       
            Text("Trampoline Details").fontWeight(.heavy)
        }.navigationBarTitle("Trampoline")
}
}

struct Yoga : View {
    var body : some View {
        VStack {
            
       
            Text("Yoga Details").fontWeight(.heavy)
        }.navigationBarTitle("Yoga")
}
}

struct Aerobics : View {
    var body : some View {
        VStack {
            
       
            Text("Aerobics Details").fontWeight(.heavy)
        }.navigationBarTitle("Aerobics")
}
}
}
