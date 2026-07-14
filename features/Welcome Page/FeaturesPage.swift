import SwiftUI

struct FeaturesPage: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("Features")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.bottom)
                .padding(.top, 100)
            
        Features_Card(iconName:"person.2.circle.fill", description:"I am rambling bc idk what to put rn")
            
            Features_Card(iconName: "quote.bubble.fill", description: "summary2")
            
            Features_Card(iconName: "quote.bubble.fill", description: "summary2")
            
            Features_Card(iconName: "quote.bubble.fill", description: "summary2")
            
            Features_Card(iconName: "quote.bubble.fill", description: "summary2")
   
            Spacer()
        }
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 12)
                .foregroundStyle(.tint)
                .opacity(0.25)
                .brightness(-0.4)
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    FeaturesPage()
        .frame(maxHeight: .infinity)
        .background(Gradient(colors: gradientColors))
        .foregroundStyle(.white)
}
