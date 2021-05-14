//
//  HomeView.swift
//  Task1
//
//  Created by Ksheetij Tayde on 13/05/21.
//  Copyright © 2021 rasika. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View



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
}
