//
//  MiiCode.swift
//  
//
//  Created by DPI Student 004 on 7/7/26.
//
//design 2
import SwiftUI

struct ProfileHeader: View {
    var body: some View {
        VStack {
            HStack{
            Text("User profile")
            Spacer() 
            }
            Spacer()
        }.background(Color.blue)
    }
}

 /* design 1 incomplete?
 struct ProfileView: View {
@StateObject var viewModel = ProfileViewViewModel()
var body: some view {
    NavigationView{
        VStack{
            //avatar
Image(systemName: "person.circle")
.resizable()
.aspectRatio(contentMode: .fit)
.foregroundColor(color.blue)
.frame(width: 125, height: 125)

            // info, name, email, member since
VStack(alignment: .leading) {
HStack{
    Text("name: ")
    Text("Afraz Siddiqui")
}
}
VStack(alignment: .leading) {
HStack{
    Text("email: ")
    Text("Afraz Siddiqui")
}
}
VStack(alignment: .leading) {
HStack{
    Text("member since: ")
    Text("Afraz Siddiqui")
}
}
            // sign out
 Button(Title: "log out", background: .red){
    viewModel.logout()
 }

        }
        .navigationTitle("profile")

    }
}
}

struct profileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
} */
