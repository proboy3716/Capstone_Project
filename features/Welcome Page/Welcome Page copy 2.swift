import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width:150, height: 150)
                    .foregroundStyle(.red)
                Image(systemName: "arcade.stick.console.fill")
                    .font(.system(size:85))
                    .foregroundStyle(.white)
        }
            
            Text("Welcome to App")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.top)
            
            Text("Guiding you through console modifications")
                .font(.title2)
            
        }
        .padding()
        
    }
}
#Preview {
            WelcomePage()
}


