//
//  MiiCode.swift
//  
//
//  Created by DPI Student 004 on 7/7/26.
//
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
    case "gameboy", "ds", "3ds", "wii", "switch"
}
let otherOptions = "sega", "meta", "atari"
button(action: SelectCompany) {
Text("show list")
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
