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
                TextField("검색", text: $search)
                
                Section {
                    ZStack{
                        Image("tip")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 400, height: 200)
                        Text("새로운 기능")
                            .font(.system(size: 25, weight: .bold))
                            .offset(x:-100, y:-90)
                        Text("17")
                            .font(.system(size: 150, weight: .light))
                    }
                }
                
                Section {
                    NavigationLink {
                        Text("Detail")
                    } label: {
                        Label("iPhone 탐색하기", systemImage: "bolt")
                    }
                    NavigationLink {
                        Text("Detail")
                    } label: {
                        Label("사용자 정보 보호하기", systemImage: "key")
                    }
                    NavigationLink {
                        Text("Detail")
                    } label: {
                        Label("대비하기", systemImage: "circle")
                    }
                    NavigationLink {
                        Text("Detail")
                    } label: {
                        Label("필수 항목 설정하기", systemImage: "star")
                    }
                    NavigationLink {
                        Text("Detail")
                    } label: {
                        Label("iPhone 개인 맞춤화하기", systemImage: "heart")
                    }
                } header: {
                    Text("시작하기")
                }
                
                Section {
                    NavigationLink {
                        Text("Detail")
                    } label: {
                        Label("사진", systemImage: "photo")
                    }
                    NavigationLink {
                        Text("Detail")
                    } label: {
                        Label("카메라", systemImage: "camera")
                    }
                } header: {
                    Text("사진 및 카메라")
                }

            }
            .navigationTitle("모음")
        }
    }
}

#Preview {
    ContentView()
}
