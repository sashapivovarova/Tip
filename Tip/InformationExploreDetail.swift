//
//  InformationExploreDetail.swift
//  Tip
//
//  Created by Anastasia Grey on 2023/10/25.
//

import SwiftUI

struct InformationExploreDetail: View {
    
    @State var selectedPage = 0
    
    var body: some View {
        VStack{
            Image("detail")
                .resizable()
                .scaledToFit()
                .frame(height: 550)
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

            Spacer()
            PageControl(numberOfPages: 7, currentPage: $selectedPage)
        }
        .navigationTitle("탐색하기")
        .toolbar(content: {
            Button(action: {
                
            }, label: {
                Image(systemName: "bookmark")
            })
        })
    }
}

struct PageControl: View {
    
    var numberOfPages: Int
    @Binding var currentPage: Int
    
    var body: some View {
        HStack {
            ForEach(0 ..< numberOfPages) { index in
                Circle()
                    .frame(width: 8, height: 8)
                    .foregroundColor(index == self.currentPage ? .white : .gray)
                    .onTapGesture(perform: {
                        self.currentPage = index
                    })
            }
        }
    }
}

#Preview {
    InformationExploreDetail()
}
