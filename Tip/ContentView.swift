//
//  ContentView.swift
//  Tip
//
//  Created by Anastasia Grey on 2023/10/17.
//

import SwiftUI

struct ContentView: View {
    
    @State var search: String = ""
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    ZStack{
                        Image("tip")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 400, height: 200)
                        Text("새로운 기능")
                            .font(.system(size: 25, weight: .bold))
                            .offset(x:-100, y:-80)
                        Text("17")
                            .font(.system(size: 150, weight: .light))
                    }
                }
                
                Section {
                    NavigationLink {
                        informationDetail()
                    } label: {
                        Image(systemName: "hand.draw")
                            .foregroundStyle(.linearGradient(colors: [.blue, .teal], startPoint: .leading, endPoint: .trailing))
                        Text("iPhone 탐색하기")
                    }
                    NavigationLink {
                        Text("Detail")
                    } label: {
                        Image(systemName: "lock.shield")
                            .foregroundStyle(.linearGradient(colors: [.green, .mint], startPoint: .leading, endPoint: .trailing))
                        Text("사용자 정보 보호하기")
                    }
                    NavigationLink {
                        Text("Detail")
                    } label: {
                        Image(systemName: "heart.text.square")
                            .foregroundStyle(.linearGradient(colors: [.yellow, .white], startPoint: .leading, endPoint: .trailing))
                        Text("대비하기")
                        
                    }
                    NavigationLink {
                        Text("Detail")
                    } label: {
                        Image(systemName: "star")
                            .foregroundStyle(.linearGradient(colors: [.orange, .yellow], startPoint: .leading, endPoint: .trailing))
                        Text("필수 항목 설정하기")
                    }
                    NavigationLink {
                        Text("Detail")
                    } label: {
                        Image(systemName: "heart")
                            .foregroundStyle(.linearGradient(colors: [.purple, .pink], startPoint: .leading, endPoint: .trailing))
                        Text("iPhone 개인 맞춤화하기")
                    }
                } header: {
                    Text("시작하기")
                        .font(.system(size: 20, weight: .medium))
                        .foregroundColor(.white)
                }
                
                Section {
                    NavigationLink {
                        Text("Detail")
                    } label: {
                        Image(systemName: "photo.on.rectangle.angled")
                            .foregroundStyle(.linearGradient(colors: [.pink, .white], startPoint: .leading, endPoint: .trailing))
                        Text("사진")
                    }
                    NavigationLink {
                        Text("Detail")
                    } label: {
                        Image(systemName: "camera")
                            .foregroundStyle(.linearGradient(colors: [.yellow, .white], startPoint: .leading, endPoint: .trailing))
                        Text("카메라")
                    }
                } header: {
                    Text("사진 및 카메라")
                        .font(.system(size: 20, weight: .medium))
                        .foregroundColor(.white)
                }
            }
            .navigationTitle("모음")
            .searchable(text: $search, placement: .navigationBarDrawer(displayMode: .always), prompt: "검색")
        }
    }
}

#Preview {
    ContentView()
}
