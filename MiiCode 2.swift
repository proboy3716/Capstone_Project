//
//  MiiCode.swift
//  
//
//  Created by DPI Student 004 on 7/7/26.
//
var body: some View {
    List {
        Text("xbox")
    Text("playstation")
        Text("nintendo")
    }
}

let xboxOptions = "xbox series x", "xbox series s", "xboxOne", "xbox360"
let PlaystationOptions = "ps5", "ps4", "ps3", "psvita", "ps2", "ps1"
let nintendoOptions = "gamecube", "gameboy", "ds", "3ds", "wii", "switch"
let otherOptions = "sega", "meta", "atari" 
button(action: SelectCompany) {
Text("show list")
}
