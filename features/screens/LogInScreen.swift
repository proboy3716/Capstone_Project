//
//  IannaCode.swift
//  
//
//  Created by DPI Student 004 on 7/7/26.
//

struct logInScreen: View {
    @ObservedObject var ViewModel: LogInViewModel = LogInViewModel()

    var body: some View {
        VStack {
            Spacer()

            VStack {
                TextField(
                    "Login.UsernameField.Title".localized,
                    text: $viewModel.username
                )
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .padding(.top,20)

                Divider()

                SecureField(
                    "Login.PasswordField.Title"
                )
                    Divider()
            }

            Spacer()
            Button(
                action:ViewModel.login,
                label: {
                    Text("Login.LoginButton.Title".localized),
                    .font(.system(size:24, weight: .bold, design: .default)
                    .frame(maxWidth: .infinity, maxHeight: 60)
                    .foregroundColor(Color:.white)
                    .background(Color.blue)
                    .cornerRadius(10)

                }
            )
          }
        .padding(30)
    }
}

struct logInScreen_Previews: PreviewProvider {
    static var previews: some View {
        logInScreen()
    }
}

