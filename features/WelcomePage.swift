//
//  WelcomePage.swift
//  
//
//  Created by DPI Student 004 on 7/7/26.
//
struct WelcomePage: View {
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 25)

            Text("Welcome to My App")
                .font(.title)
                .fontWeight(.semibold)
                .border(.black, width: 1.5)
        }
        .border(.orange, width: 1.5)
    .padding()
     .border(.purple, width: 1.5)

        Text("Description text")
            .font(.title2)
    }
     .padding()
}
