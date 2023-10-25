//
//  ContentView.swift
//  Tip
//
//  Created by Anastasia Grey on 2023/10/17.
//

import SwiftUI

struct ContentView: View {
    
    @State var search: String = ""
    var startList: [Collection] = [
        Collection(symbolName: "hand.draw", symbolColor: [.blue, .teal], symbolTitle: "iPhone 탐색하기"),
        Collection(symbolName: "lock.shield", symbolColor: [.green, .mint], symbolTitle: "사용자 정보 보호하기"),
        Collection(symbolName: "heart.text.square", symbolColor: [.yellow, .white], symbolTitle: "대비하기"),
        Collection(symbolName: "star", symbolColor: [.orange, .yellow], symbolTitle: "필수 항목 설정하기"),
        Collection(symbolName: "heart", symbolColor: [.purple, .pink], symbolTitle: "iPhone 개인 맞춤화하기")]
    var startList2: [Collection] = [
        Collection(symbolName: "photo.on.rectangle.angled", symbolColor: [.pink, .white], symbolTitle: "사진"),
        Collection(symbolName: "camera", symbolColor: [.yellow, .white], symbolTitle: "카메라")]
    
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
                    ForEach(startList) { item in
                        NavigationLink {
                            informationDetail()
                        } label: {
                            Image(systemName: item.symbolName)
                                .foregroundStyle(.linearGradient(colors: item.symbolColor, startPoint: .leading, endPoint: .trailing))
                            Text(item.symbolTitle)
                        }
                    }
                } header: {
                    Text("시작하기")
                        .font(.system(size: 20, weight: .medium))
                        .foregroundColor(.white)
                }
                
                Section {
                    ForEach(startList2) { item in
                        NavigationLink {
                            informationDetail()
                        } label: {
                            Image(systemName: item.symbolName)
                                .foregroundStyle(.linearGradient(colors: item.symbolColor, startPoint: .leading, endPoint: .trailing))
                            Text(item.symbolTitle)
                        }
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
