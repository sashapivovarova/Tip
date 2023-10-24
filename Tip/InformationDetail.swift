//
//  informationDetail.swift
//  Tip
//
//  Created by Anastasia Grey on 2023/10/24.
//

import SwiftUI

struct informationDetail: View {
    var body: some View {
        VStack{
            ZStack {
                Rectangle()
                    .frame(width: 400, height: 250)
                    .foregroundStyle(.linearGradient(colors: [.blue, .black], startPoint: .top, endPoint: .bottom))
                VStack {
                    Image(systemName: "hand.draw.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text("iPhone 탐색하기")
                        .font(.system(size: 25, weight: .bold))
                    Text("제스처 및 버튼을 찾아보고  iPhone을 손쉽게 탐색해 보세요.")
                        .font(.system(size: 13))
                }
            }
            List {
                NavigationLink {
                    Text("Detail")
                } label: {
                    HStack{
                        Image(systemName: "bolt")
                        VStack(alignment: .leading) {
                            Text("홈으로 바로 이동하기")
                                .foregroundColor(.white)
                            Text("홈 화면으로 이동하려면 화면 하단 가장자리를 쓸어올리세요")
                        }
                    }
                }
                NavigationLink {
                    Text("Detail")
                } label: {
                    HStack{
                        Image(systemName: "bolt")
                        VStack(alignment: .leading) {
                            Text("앱 전환하기")
                                .foregroundColor(.white)
                            Text("홈 화면으로 이동하려면 화면 하단 가장자리를 쓸어올리세요")
                        }
                    }
                }
                NavigationLink {
                    Text("Detail")
                } label: {
                    HStack{
                        Image(systemName: "bolt")
                        VStack(alignment: .leading) {
                            Text("제어 센터 열기")
                                .foregroundColor(.white)
                            Text("홈 화면으로 이동하려면 화면 하단 가장자리를 쓸어올리세요")
                        }
                    }
                }
                NavigationLink {
                    Text("Detail")
                } label: {
                    HStack{
                        Image(systemName: "bolt")
                        VStack(alignment: .leading) {
                            Text("더 많은 제어 항목 보기")
                                .foregroundColor(.white)
                            Text("홈 화면으로 이동하려면 화면 하단 가장자리를 쓸어올리세요")
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    informationDetail()
}
