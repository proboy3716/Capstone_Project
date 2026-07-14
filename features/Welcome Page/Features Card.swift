import SwiftUI

struct Features_Card: View {
    let iconName: String
    let description: String
    
    var body: some View {
       HStack {
            Image(systemName: iconName)
                .font(.largeTitle)
                .frame(width:50)
                .padding(.trailing, 10)
        
        Text(description)
        
        Spacer()
    }
        .padding()
        .background(.red, in: RoundedRectangle(cornerRadius: 12))
        .foregroundStyle(.white)
    }
}

    #Preview {
        Features_Card(iconName: "person.2.circle.fill", description: "I am rambling bc idk what to put rn")
}
