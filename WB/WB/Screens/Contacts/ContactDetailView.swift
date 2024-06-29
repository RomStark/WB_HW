//
//  ContactDetailView.swift
//  WB
//
//  Created by Al Stark on 21.06.2024.
//

import SwiftUI

struct ContactDetailView: View {
    let name: String
    let phoneNumber: String
    let icon: String?
    
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        VStack() {
            iconView
                .padding(.bottom, 20)
            
            Text(name)
                .font(.system(size: 24).weight(.semibold))
            
            Text(phoneNumber)
                .font(.system(size: 16))
                .foregroundStyle(Color(UIColor(red: 173/255, green: 181/255, blue: 189/255, alpha: 1)))
                .padding(.bottom, 40)
            
            HStack(spacing: 15) {
                socialIcons(for: "twitter")
                socialIcons(for: "instagram")
                socialIcons(for: "linkedIn")
                socialIcons(for: "facebook")
            }
            .frame(height: 40)
            
            Spacer()
            
        }
        .background(Color("MainBackground"))
        .padding(.top, 46)
        .padding(.horizontal, 26)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                HStack {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(colorScheme == .dark ? "chevronLeftDarkMode" : "chevronLeft")
                            .resizable()
                    }
                    Text("Профиль")
                        .font(.system(size: 18, weight: .semibold))
                    
                }
            }
        }
    }
    
    private var iconView: some View {
        ZStack {
            if let icon = icon {
                Image(icon)
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 200, height: 200)
                
            } else {
                Image("emptyIcon")
            }
        }
    }
    
    private func socialIcons(for name: String) -> some View {
        RoundedRectangle(cornerRadius: 25)
            .stroke(Color(UIColor(
                red: 154/255,
                green: 65/255,
                blue: 254/255,
                alpha: 1
            )), lineWidth: 2)
            .foregroundStyle(.white)
            .overlay(
                Image(name)
                    .resizable()
                    .scaledToFit()
                    .padding(EdgeInsets(top: 10, leading: 26, bottom: 10, trailing: 26))
            )
    }
}

struct ContactDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailView(name: "32323", phoneNumber: "2323", icon: nil)
    }
}
