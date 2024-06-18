//
//  OnBoardingView.swift
//  WB
//
//  Created by Al Stark on 17.06.2024.
//

import SwiftUI

struct OnBoardingView: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var isSheetPresented = false
    
    var body: some View {
        VStack {
            illustrationImage
                .padding(EdgeInsets(top: 45, leading: 62, bottom: 42, trailing: 51))
            
            Text(TextStrings.mainText.rawValue)
                .lineSpacing(8)
                .font(.system(size: 24, weight: .bold))
                .foregroundColor(Color(ConstantsColor.mainTextColor.rawValue))
                .multilineTextAlignment(.center)
            
            Spacer()
            
            Button(action: {
                isSheetPresented.toggle()
            }) {
                Text(TextStrings.userAgreement.rawValue)
                    .lineSpacing(6)
                    .font(.system(size: 10, weight: .light))
                    .foregroundColor(Color(ConstantsColor.userAgreementButtonTextColor.rawValue))
            }
            .padding(.bottom, 13)
            
            Button(action: {isSheetPresented.toggle()}) {
                Text(TextStrings.buttonText.rawValue)
                    .frame(width: 327, height: 52)
                    .font(.system(size: 16))
                    .background(Color(ConstantsColor.buttonBackgroundColor.rawValue))
                    .foregroundColor(.black)
                    .cornerRadius(30)
            }
        }
        .padding(.horizontal, 24)
        .background(Color(ConstantsColor.backgroundColor.rawValue))
        .sheet(isPresented: $isSheetPresented) {
            SheetView(isSheetPresented: $isSheetPresented)
        }
        
    }
    
    private var illustrationImage: some View {
        Image(colorScheme == .dark ? "DarkIllustration" : "Illustration")
    }
}

private enum TextStrings: String {
    case mainText = "Общайтесь с друзьями и близкими легко"
    case userAgreement = "Нажимая кнопку продолжить я соглашаюсь с  Политикой Конфиденциальности и Условиями Использования"
    case buttonText = "Начать общаться"
}

private enum ConstantsColor: String {
    case backgroundColor = "BackgroundColor"
    case userAgreementButtonTextColor = "userAgreementButtonTextColor"
    case buttonBackgroundColor = "ButtonColor"
    case mainTextColor = "MainTextColor"
}


struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
