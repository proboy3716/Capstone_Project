//
//  MiiCode.swift
//  
//
//  Created by DPI Student 004 on 7/7/26.
//
//defining company and consoles
import SwiftUI
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


            // sign out
        }
        .navigationTitle("profile")

    }
}
}

struct profileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

    //@MainActor @preconcurrency
    /*struct Link<Label> where Label : View
    Link("link test",
      destination: URL(string: "https://www.youtube.com/watch?v=Gsl7rOAUM3Q&vl=en-US&themeRefresh=1")!) *\
    

    /* 2nd design of button to link test
    struct HelpLink
     HelpLink(anchor: "accountSetupHelp")
    HelpLink {
       openURL(onlineHelpURL)
    }
    struct SheetContentView: View {
        var body: some View {
            Form {
                 ...
            }
            .toolbar {
                ToolbarItem(.confirmationAction) {
                    Button("Save") { ... }
                }
                ToolbarItem(.cancellationAction) {
                    Button("Cancel") { ... }
                }
                ToolbarItem {
                    HelpLink(anchor: "sheetHelp")
                }
             }
        }
    }  *\

//3rd design of button to link test
/* var body: some View{
    List {
        Text("click me for Playstation links")
        Text("click me for Xbox links")
        Text("click me for Nintendo links")
    }
}
Link("NintendoTestLink", destination: URL(string: "https://brew.sh/")!)
.environment(\.openURL, OpenURLAction { url in
print("open \(url)")
return .handled
}) *\
#Preview
