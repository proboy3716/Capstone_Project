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

//struct linksTest:
var body: some View{
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
})
#Preview