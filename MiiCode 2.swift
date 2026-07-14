//
//  MiiCode.swift
//  
//
//  Created by DPI Student 004 on 7/7/26.
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
    case " xbos360Slim"
    
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
    case "wiiU"
    case "gamecube"
    case "gameboy"
    case "ds"
    case "3ds"
    case "wii"
    case "switch"
}
struct OtherOptions: view {
    case "sega"
    case "meta"
    case "atari"
    //buttons for app
button(action: SelectCompany) {
Text(\(company))
}
Button(action:{
    .toggle()
}, label: {
    Text("select company")
        .padding()
        .background(.blue)
        .cornerRadius(20)
})
#Preview
