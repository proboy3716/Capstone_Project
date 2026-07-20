//
//  MiiCode.swift
//  
//
//  Created by DPI Student 004 on 7/7/26.
//
//defining company and consoles
struct company: View {
    case "Xbox"
    case "Sony"
    case "Nintendo"
}

struct XboxOptions: View {
    case "xbox360"
    case "xboxOne"
    case "xboxSeriesX"
    case "xboxSeriesS"
    case "xbox360E"
    case "xbos360Slim"
    
}
struct SonyOptions: View {
    case "ps5"
    case "ps4"
    case "ps3"
    case "psvita"
    case "ps2"
    case "ps1"
}
struct NintendoOptions: view {
    case "gamecube"
    case "gameboy"
    case "ds"
    case "3ds"
    case "wii/wiiU"
    case "switch"
}
struct OtherOptions: view {
    case "sega"
    case "meta"
    case "atari"

    @MainActor @preconcurrency
    struct Link<Label> where Label : View
    Link("link test",
      destination: URL(string: "https://www.youtube.com/watch?v=Gsl7rOAUM3Q&vl=en-US&themeRefresh=1")!)

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
