//
//  informationDetail.swift
//  Tip
//
//  Created by Anastasia Grey on 2023/10/24.
//

import SwiftUI

struct informationDetail: View {
    var body: some View {
        List {
            VStack {
                Image(systemName: "hand.draw.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                Text("iPhone 탐색하기")
                    .font(.system(size: 25, weight: .bold))
                    .padding(.vertical, 5)
                Text("제스처 및 버튼을 찾아보고  iPhone을 손쉽게 탐색해 보세요.")
                    .font(.system(size: 13))
            }
            .padding(.leading, 25)
            .frame(height: 230)
            .listRowSeparator(.hidden)
            .listRowBackground(
                LinearGradient(
                    colors: [.blue, .gray], startPoint: .leading, endPoint: .trailing
                )
                .mask {
                    LinearGradient(
                        gradient: Gradient(
                            stops: [.init(color: .black, location: 0),
                                    .init(color: .clear, location: 0.9)
                            ]
                        ),
                        startPoint: .top, endPoint: .bottom)
                }
            )
            
            NavigationLink {
                InformationExploreDetail()
            } label: {
                HStack{
                    Image("detail")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 45)
                        .padding(.vertical, 3)
                        .padding(.horizontal, 15)
                        .background(.gray)
                        .cornerRadius(12)
                    VStack(alignment: .leading) {
                        Text("홈으로 바로 이동하기")
                            .font(.system(size: 18, weight: .bold))
                            .foregroundColor(.white)
                        Text("홈 화면으로 이동하려면 화면 하단 가장자리를 쓸어올리세요")
                            .font(.system(size: 15))
                            .foregroundColor(.white)
                    }
                }
            }
            NavigationLink {
                Text("Detail")
            } label: {
                HStack{
                    Image("detail")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 45)
                        .padding(.vertical, 3)
                        .padding(.horizontal, 15)
                        .background(.gray)
                        .cornerRadius(12)
                    VStack(alignment: .leading) {
                        Text("앱 전환하기")
                            .foregroundColor(.white)
                        Text("화면을 쓸어올리고 잠시 멈춘 다음, 앱을 탭하여 여세요")
                    }
                }
            }
            NavigationLink {
                Text("Detail")
            } label: {
                HStack{
                    Image("detail")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 45)
                        .padding(.vertical, 3)
                        .padding(.horizontal, 15)
                        .background(.gray)
                        .cornerRadius(12)
                    VStack(alignment: .leading) {
                        Text("제어 센터 열기")
                            .foregroundColor(.white)
                        Text("화면 오른쪽 상단을 쓸어내려 보세요")
                    }
                }
            }
            NavigationLink {
                Text("Detail")
            } label: {
                HStack{
                    Image("detail")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 45)
                        .padding(.vertical, 3)
                        .padding(.horizontal, 15)
                        .background(.gray)
                        .cornerRadius(12)
                    VStack(alignment: .leading) {
                        Text("더 많은 제어 항목 보기")
                            .foregroundColor(.white)
                        Text("제어 센터에서 제어 항목을 길게 눌러 더 많은 작업을 수행해 보세요")
                    }
                }
            }
            NavigationLink {
                Text("Detail")
            } label: {
                HStack{
                    Image("detail")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 45)
                        .padding(.vertical, 3)
                        .padding(.horizontal, 15)
                        .background(.gray)
                        .cornerRadius(12)
                    VStack(alignment: .leading) {
                        Text("Siri야..")
                            .foregroundColor(.white)
                        Text("Siri야 라고 부른다음 원하는 작업을 말해주세요")
                    }
                }
            }
        }
        .listStyle(.inset)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    informationDetail()
}
