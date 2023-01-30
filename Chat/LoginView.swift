//
//  LoginView.swift
//  demo
//
//  Created by User on 2022/12/29.
//

import SwiftUI

struct LoginView: View {
    let didCompleteLoginProcess: () -> ()  //如果其他地方调用了LoginView，通过此函数直接返回
    
    @State private var isLoginMode = false
    @State private var email = ""
    @State private var password = ""
    @State private var loginStatusMessage = ""
    @State private var shouldShowImagePicker = false
//    init() {
//    }
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack
                {
                    Picker(selection: $isLoginMode, label: Text("Pick here"))
                    {
                        Text("Login")
                            .tag(true)
                        Text("Create Account")
                            .tag(false)
                        
                    }.pickerStyle(SegmentedPickerStyle())
                    if !isLoginMode {
                        Button{
                            shouldShowImagePicker
                                .toggle()
                        } label: {
                            VStack {
                                if let image = self.image {
                                    Image(uiImage: image)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 64, height: 64)
                                        .cornerRadius(64)
                                } else {
                                    Image(systemName: "person.fill")
                                        .font(.system(size: 64))
                                        .padding()
                                    
                                }
                            }
                            .overlay(RoundedRectangle(cornerRadius: 64)
                                .stroke(Color.black, lineWidth:3)
                            )
                        }
                    }
                    Group{
                        TextField("Email", text: $email)
                            .keyboardType(.emailAddress)
                            .autocapitalization(.none)
                        SecureField("Password", text: $password)
                        
                    }
                    .padding(12)
                    .background(Color.white)
                    
                    Button{
                        handleAction()
                    } label: {
                        HStack {
                            Spacer()
                            Text(isLoginMode ? "Log In" : "Create Account")
                                .foregroundColor(.white)
                                .padding(.vertical, 10)
                                .font(.system(size: 14, weight: .semibold))
                            Spacer()
                            
                        }
                        .background(Color.blue)
                        
                    }
                    
                    Text(self.loginStatusMessage)
                        .foregroundColor(.red)
                }
                .padding()
                
            }
            .navigationTitle(isLoginMode ? "Login" : "Create Account")
            .background(Color(.init(white: 0, alpha: 0.05))
                .ignoresSafeArea())
        }
        .navigationViewStyle(StackNavigationViewStyle())
        //Image picker,
//        .fullScreenCover(isPresented: $shouldShowImagePicker, onDismiss: nil) {
//            ImagePicker(image: $image)
//        }
    }
    
    @State var image: UIImage?
    
    private func handleAction() {
        if isLoginMode {
            loginUser()
        }
        else
        {
            createNewAccount()
        }
    }
    private func loginUser() {
//        FirebaseManager.shared.auth.signIn(withEmail: email, password: password) { result, err in
//            if let err = err {
//                print("Failed to login usr:", err)
//                self.loginStatusMessage = "Failed to login usr: \(err)"
//                return
//            }
//
//            print("Successfully logged usr: \(result?.user.uid ?? "")")
//            self.loginStatusMessage = "Successfully logged to Create usr: \(result?.user.uid ?? "")"
//
//            self.didCompleteLoginProcess()
        }
    }

    
    private func createNewAccount() {
//        if self.image == nil {
//            self.loginStatusMessage = "You must select an image"
//            return
//        }
//        FirebaseManager.shared.auth.createUser(withEmail: email, password: password) {
//            result, err in
//            if let err = err {
//                print("Failed to create usr:", err)
//                self.loginStatusMessage = "Failed to Create usr: \(err)"
//                return
//            }
//
//            print("Successfully Create usr: \(result?.user.uid ?? "")")
//            self.loginStatusMessage = "Successfully Created to Create usr: \(result?.user.uid ?? "")"
//
//            self.persistImageToStorage()
//
//        }
    }
    
    private func persistImageToStorage() {
////        let filename = UUID().uuidString
//        guard let uid = FirebaseManager.shared.auth.currentUser?.uid
//        else {return}
//        let ref = FirebaseManager.shared.storage.reference(withPath: uid)
//        guard let imageData = self.image?.jpegData(compressionQuality: 0.5)
//        else{return}
//        ref.putData(imageData, metadata: nil) { metadata, err in
//            if let err = err {
//                self.loginStatusMessage = "Failed to push image to Storage: \(err)"
//                return
//            }
//
//            ref.downloadURL { url, err in
//                if let err = err {
//                    self.loginStatusMessage = "Failed to retrieve downloadURL: \(err)"
//                    return
//                }
//
//                self.loginStatusMessage = "Successfully store image with url: \(url?.absoluteString ?? "")"
//                print(url?.absoluteString ?? "")
//
//                guard let url = url else {return}
//                self.storeUserInformation(imageProfileUrl: url)
//
//            }
//        }
    }
    
    private func storeUserInformation(imageProfileUrl: URL) {
//        guard let uid = FirebaseManager.shared.auth.currentUser?.uid
//        else {return}
//        let userData = ["email": self.email, "uid": uid, "profileImageURL": imageProfileUrl.absoluteString]
//        FirebaseManager.shared.firestore.collection("users")
//            .document(uid).setData(userData) { err in
//                if let err = err {
//                    print(err)
//                    self.loginStatusMessage = "\(err)"
//                    return
//                }
//                self.loginStatusMessage = "Successfully store user info"
//
//                self.didCompleteLoginProcess()
//            }
//    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(didCompleteLoginProcess: {
            
        })
    }
}
