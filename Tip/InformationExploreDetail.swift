//
//  InformationExploreDetail.swift
//  Tip
//
//  Created by Anastasia Grey on 2023/10/25.
//

import SwiftUI

struct InformationExploreDetail: View {
    
    var body: some View {
        ScrollView {
            HStack {
                TabView {
                    VStack{
                        Image("detail")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 500)
                            .padding(.bottom, 30)
                        
                        HStack {
                            VStack(alignment: .leading) {
                                Text("홈으로 바로 이동하기")
                                    .font(.system(size: 25, weight: .bold))
                                    .padding(.bottom, 3)
                                Text("홈 화면으로 이동하려면 화면 하단 가장자리를 쓸어올리세요")
                            }
                            .padding(.horizontal, 30)
                            Spacer()
                        }
                    }
                    
                    VStack{
                        Image("detail2")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 500)
                            .padding(.bottom, 30)
                        
                        HStack {
                            VStack(alignment: .leading) {
                                Text("앱 전환하기")
                                    .font(.system(size: 25, weight: .bold))
                                    .padding(.bottom, 3)
                                Text("화면을 쓸어올리고 잠시 멈춘 다음, 앱을 탭하여 여세요")
                            }
                            .padding(.horizontal, 30)
                            Spacer()
                        }
                    }
                    
                    VStack{
                        Image("detail3")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 500)
                            .padding(.bottom, 30)
                        
                        HStack {
                            VStack(alignment: .leading) {
                                Text("제어 센터 열기")
                                    .font(.system(size: 25, weight: .bold))
                                    .padding(.bottom, 3)
                                Text("화면 오른쪽 상단을 쓸어내려 보세요")
                            }
                            .padding(.horizontal, 30)
                            Spacer()
                        }
                    }
                    
                }
                .navigationTitle("탐색하기")
                .toolbar(content: {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "bookmark")
                    })
                })
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 110)
                .tabViewStyle(.page(indexDisplayMode: .always))
            }
        }
    }
}

#Preview {
    InformationExploreDetail()
}
