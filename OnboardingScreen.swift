import SwiftUI

struct OnboardContentView: View {
    
    @AppStorage("currentPage") var currentPage = 1
    
    var body: some View {
        
        if currentPage > totalPages {
            HomeScreen()
                .onAppear {
                    currentPage = 1
                }
        }
        
        else{
            OnboardingScreen()
        }
    }
}
struct OnboardContentView_Preview: PreviewProvider {
    static var previews: some View {
        OnboardContentView()
    }
}

// Home screen
struct HomeScreen: View {
    
    @State private var email = ""
    @State private var password = ""

    var body: some View {
        ZStack() {
            Image("back2")
                .overlay(Color.black.opacity(0.3))
                    .ignoresSafeArea()
                VStack() {
                    
                    Image("2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.horizontal, 16)
                        .frame(width: 150, height: 150)
                        .padding(.bottom, 100)
                        .shadow(radius:10)
                    Text("Login")                    .font(.largeTitle).foregroundColor(Color.white)
                        .fontWeight(.heavy)
                        .padding([.bottom], 30)
                    
                VStack (alignment: .leading, spacing: 15) {
                        TextField("Email", text: self.$email)
                            .padding()
                            .background()
                            .cornerRadius(20)
                        SecureField("Password", text:self.$password)
                            .padding()
                            .background()
                            .cornerRadius(20)
                        
                    }.padding([.leading, .trailing], 27.5)
                    
                    Button(action: {}) {
                        Text("Sign In")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.green)
                            .cornerRadius(15.0)
        
                                            }
                                        
                                            HStack(spacing: 15) {
                                            Button(action: {}) {
                                                Text("Don't have an account? Sign up")
                                                    .font(.body)
                                                    .fontWeight(.light)
                                            }
                                        }
                                        }
                                    }
                                }
                            }
                            
var totalPages = 3


// on boarding pg
struct OnboardingScreen: View {
    
    @AppStorage("currentPage") var currentPage = 1
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            Image("back2")
                .resizable()
                .frame(width: .infinity, height: .infinity)
                .ignoresSafeArea()
            HStack {

                Spacer()
            }
            
            if currentPage == 1 {
                ScreenView(image: "gaming", title: "Modify Your Console", details: "Modifying consoles from your PS1 to the wiiU, made easier for your convenience")
                
            }; if currentPage == 2 {
                ScreenView(image: "chatting", title: "Chat With Gamers", details: "Chat with gamers who share similar interests, experiences, and consoles!")
            }; if currentPage == 3 {
                ScreenView(image: "sites", title: "Find Resources", details: "Have you ever struggled on where to find Youtubers and websites to modify your consoles? We have them all!")
                
            }
            
        }
    }
}
struct ScreenView: View {
    
    @AppStorage("currentPage") var currentPage = 1
    @Environment(\.displayScale) private var displayScale
    
    var image: String
    var title: String
    var details: String
    
    var body: some View {
        
        VStack{
            HStack {
                
                if currentPage == 1 {
                    Text("ModThat")
                        .font(.title)
                        .fontWeight(.semibold)
                        .kerning(1.2)
                        .foregroundColor(.white)
                    
                }
                
                // adding hello to screen 1 only
                else {
                    Button(action: {
                        currentPage -= 1
                    }, label: {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.white)
                            .padding(.vertical,10)
                            .padding(.horizontal)
                            .background(Color.gray)
                            .opacity(0.4)
                            .cornerRadius(10)
                    })
                }
                
                
                
                Spacer()
                
                
                // button to skip to home screen
                Button(action: {
                    
                    currentPage = 4
                    
                }, label: {
                    Text("Skip")
                        .fontWeight(.semibold)
                        .kerning(1.2)
                        .foregroundColor(.white)
                })
            }.padding()
                .foregroundColor(Color.black)
            
            // image
            Spacer(minLength: 0)
            
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal, 16)
                .frame(height: 300)
            
            Spacer(minLength:80)
            
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .kerning(1.2)
                .padding(.top)
                .padding(.bottom, 5)
                .foregroundColor(Color.white)
            
            
            Text(details)
                .font(.body)
                .fontWeight(.regular)
                .kerning(1.2)
                .padding([.leading, .trailing])
                .multilineTextAlignment(.center)
                .foregroundColor(.white)

            
            Spacer(minLength:0)
            
            HStack {
                
                if currentPage == 1 {
                    // make lines thin + colors them. lets user know what page they're on
                    Color.white.frame(height: 8 / displayScale)
                    Color.gray.frame(height: 8 / displayScale)
                    Color.gray.frame(height: 8 / displayScale)
                    
                }
                
                else if currentPage == 2 {
                    Color.gray.frame(height: 8 / displayScale)
                    Color.white.frame(height: 8 / displayScale)
                    Color.gray.frame(height: 8 / displayScale)
                }
                
                else if currentPage == 3 {
                    Color.gray.frame(height: 8 / displayScale)
                    Color.gray.frame(height: 8 / displayScale)
                    Color.white.frame(height: 8 / displayScale)
                    
                }
                
            }
        }
        
                // bottom bars displayed for when user changes screen
                
                Button(action: {
                    if currentPage <= totalPages {
                        currentPage += 1
                    }
                    
                    else {
                        currentPage = 1
                    }
                }, label: {
                    
                    Button(action: {
                        if currentPage <= totalPages {
                            currentPage += 1
                        }
                        
                        else {
                            currentPage = 1
                            
                        }
                    }, label: {
                        
                        if currentPage == 3 {
                            Text("Get Started")
                                .fontWeight(.semibold)
                                .frame(minWidth:0, maxWidth: .infinity)
                                .padding()
                                .foregroundColor(Color.white)
                                .background(Color.main)
                                .cornerRadius(40)
                                .padding(.horizontal,16)
                        }
                        else {
                            Text("Next")
                                .fontWeight(.semibold)
                                .frame(minWidth:0, maxWidth: .infinity)
                                .padding()
                                .foregroundColor(Color.white)
                                .background(Color.main)
                                .cornerRadius(40)
                                .padding(.horizontal,16)
                                
                        }
                        
                    })
                })
            }
        }
