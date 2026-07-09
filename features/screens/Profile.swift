//
//  ProfileView.swift
//
//
//  Created by DPI Student 004 on 7/7/26.
//
struct UserProfile {
    var name: String
    var username: String
    var email: String
    var bio: String
    var following: Int
    var followers: Int
}

struct ProfileView: View {
    StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView {
            // Avatar
            VStack {
                Image(systemName: "person.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color.blue)
                    .frame(width: 100, height: 100)
                
                // Info
                VStack(alignment: .leading) {
                    HStack {
                        Text("Name: ")
                        Text("Alejandro Corona")
                        fontweight.bold()
                    }
                    HStack {
                        Text("Email: ")
                        Text("practice@gmail.com")
                        fontweight.bold()
                    }
                    HStack {
                        Text("Member Since: ")
                        Text("Alejandro Corona")
                        fontweight.bold()
                    }
                }
                // sign out
                TLButton(title: "Sign Out", background: .green,) {
                    viewModel.signOut()
                }
            }
            .navigationTitle("Profile")
        }
    }
}
