//
//  FriendList.swift
//  Tableviews
//
//  Created by Ksheetij Tayde on 01/05/21.
//  Copyright © 2021 rasika. All rights reserved.
//

import SwiftUI

struct FriendList: View {
    var FriendToInvite: [Friend]
    var body: some View {
        NavigationView{
            List(FriendToInvite){
                friend in ListRow(eachFriend: friend)
                
            }.navigationBarTitle(Text("My Friends List"))
        }
    }
}
struct ListRow: View {
    var eachFriend: Friend
    var body: some View{
        HStack{
            Image("Img")
            .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth:60)
            Spacer()
            Text(eachFriend.name)
            
        }
    }
}

var myFriend = [
    Friend(id: 1, name: "Prerna"),
    Friend(id: 2, name: "Prapti"),
    Friend(id: 3, name: "Vaishnavi"),
    Friend(id: 4, name: "Hitesha"),
    Friend(id: 5, name: "Mansi"),
    Friend(id: 6, name: "Rajlaxmi"),
    Friend(id: 7, name: "Rumita"),
    Friend(id: 8, name: "Shirisha"),
]

struct FriendList_Previews: PreviewProvider {
    static var previews: some View {
        FriendList(FriendToInvite: myFriend)
    }
}
