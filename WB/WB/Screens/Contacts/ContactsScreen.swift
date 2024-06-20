//
//  ContactsScreen.swift
//  WB
//
//  Created by Al Stark on 21.06.2024.
//

import SwiftUI

struct ContactsScreen: View {
    @State private var queryText = ""
    @State var path = [Contact]()
    private let contacts: [Contact] = [
        .init(name: "первый", isOnline: true, lastSeen: "online", icon: nil, isStory: false, phoneNumber: "+7 999 999-99-99"),
        .init(name: "первый", isOnline: false, lastSeen: "yesterday", icon: nil, isStory: true, phoneNumber: "+7 999 999-99-99"),
        .init(name: "первый", isOnline: false, lastSeen: "3 hours ago", icon: nil, isStory: false, phoneNumber: "+7 999 999-99-99")
    ]
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack() {
                searchBar
                    .padding(.top, 15)
                List(contacts, id: \.self) { contact in
                    ContactRow(contact: contact)
                        
                        .background(
                            NavigationLink(destination: ContactDetailView(name: contact.name, phoneNumber: contact.phoneNumber, icon: contact.icon)) {
                                
                            }
                                .opacity(0)
                        )
                }
                .listStyle(.plain)
                .environment(\.defaultMinListRowHeight, 85)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Text("Контакты")
                            .font(.system(size: 18, weight: .semibold))
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            print(1)
                        }) {
                            Image(systemName: "plus")
                                .foregroundStyle(.black)
                        }
                    }
                }
            }
            .background(Color("MainBackground"))
        }
    }
    
    private var searchBar: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                    .padding(3)
                TextField("Search", text: $queryText)
            }
            .padding(EdgeInsets(top: 6, leading: 8, bottom: 6, trailing: 8))
            .background(Color(.systemGray6))
            .cornerRadius(4)
        }
        .padding(.horizontal)
    }
}

struct ContactRow: View {
    let contact: Contact
    
    private let gradient = LinearGradient(colors: [Color(red: 210/255, green: 213/255, blue: 249/255), Color(red: 44/255, green: 55/255, blue: 255/255)], startPoint: .leading, endPoint: .trailing)
    
    var body: some View {
        HStack(spacing: 12) {
            iconView
            VStack(alignment: .leading) {
                Text(contact.name)
                    .font(.system(size: 14, weight: .semibold))
                    .padding(.bottom, 5)
                
                Text(contact.lastSeen)
                    .font(.system(size: 12))
                    .foregroundStyle(Color(UIColor.systemGray2))
            }
        }
    }
    
    private var iconView: some View {
        ZStack(alignment: .topTrailing) {
            if let icon = contact.icon {
                Image(icon)
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    .frame(width: 48, height: 48)
                    .overlay(storyBorder)
            } else {
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color.purple)
                    .frame(width: 48, height: 48)
                    .overlay(
                        Text(contact.name.first?.description ?? "")
                            .font(.system(size: 14))
                            .foregroundColor(.white)
                    )
                    .overlay(storyBorder)
            }
            
            
            if contact.isOnline {
                onlineBridge
            }
        }
    }
    
    private var storyBorder: some View {
        RoundedRectangle(cornerRadius: 18)
            .strokeBorder(
                gradient,
                lineWidth: contact.isStory ? 2 : 0
            )
            .frame(width: 58, height: 58)
    }
    
    private var onlineBridge: some View {
        ZStack {
            Circle()
                .fill(Color.white)
                .frame(width: 21, height: 21)
                .offset(x: 7, y: -7)
            Circle()
                .fill(Color.green)
                .frame(width: 12, height: 12)
                .offset(x: 6, y: -6)
        }
    }
}


struct ContactsScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContactsScreen()
    }
}
