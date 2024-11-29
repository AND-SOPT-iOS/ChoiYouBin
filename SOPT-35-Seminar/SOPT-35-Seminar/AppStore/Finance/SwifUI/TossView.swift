//
//  TossView.swift
//  SOPT-35-Seminar
//
//  Created by 최유빈 on 11/29/24.
//

import SwiftUI

struct TossView: View {
    var body: some View {
        GeometryReader { geometry in
            ScrollView (showsIndicators: false) {
                VStack {
                    // MARK: AppDetailHeaderView
                    HStack {
                        Image(.tossIcon)
                            .resizable()
                            .frame(width: 80, height: 80)
                            .overlay {
                                RoundedRectangle(cornerRadius: 12)
                                    .fill(.clear)
                                    .stroke(.gray, lineWidth: 0.3)
                                    .frame(width: 80, height: 80)
                            }
                        
                        VStack(alignment: .leading){
                            Text("토스")
                                .font(.system(size: 18, weight: .bold))
                            
                            Text("금융이 쉬워진다")
                                .font(.system(size: 12, weight: .regular))
                                .foregroundColor(Color(UIColor.gray))
                            
                            Spacer()
                            
                            HStack {
                                Text("받기")
                                    .font(.system(size: 12))
                                    .fontWeight(.bold)
                                    .foregroundStyle(.white)
                                    .padding(.vertical, 5)
                                    .padding(.horizontal, 20)
                                    .background(.blue)
                                    .clipShape(Capsule())
                                
                                Spacer()
                                
                                Image(systemName: "square.and.arrow.up")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(.blue)
                            }
                        }
                    }
                    .frame(height: 80)
                    
                    Divider()
                        .padding(.top, 8)
                    
                    // MARK: AppDescriptionView
                    HStack {
                        
                        Spacer()
                        
                        VStack {
                            Text("8.4만개의 평가")
                                .font(.system(size: 10))
                                .foregroundColor(Color(.systemGray2))
                            
                            Spacer()
                            
                            Text("4.4")
                                .font(.system(size: 16, weight: .bold))
                                .foregroundColor(.gray)
                            
                            Spacer()
                            
                            Text("★★★★★")
                                .font(.system(size: 12, weight: .bold))
                                .foregroundColor(.gray)
                        }
                        .frame(width: 80)
                        
                        Spacer()
                        
                        Divider()
                            .frame(width: 1, height: 30)
                        
                        Spacer()
                        
                        VStack {
                            Text("수상")
                                .font(.system(size: 10))
                                .foregroundColor(Color(.systemGray2))
                            
                            Spacer()
                            
                            Image(systemName: "person")
                                .foregroundColor(.gray)
                            
                            Spacer()
                            
                            Text("앱")
                                .font(.system(size: 12, weight: .bold))
                                .foregroundColor(.gray)
                        }
                        .frame(width: 80)
                        
                        Spacer()
                        
                        Divider()
                            .frame(width: 1, height: 30)
                        
                        Spacer()
                        
                        VStack {
                            Text("연령")
                                .font(.system(size: 10))
                                .foregroundColor(Color(.systemGray2))
                            
                            Spacer()
                            
                            Text("4+")
                                .font(.system(size: 16, weight: .bold))
                                .foregroundColor(.gray)
                            
                            Spacer()
                            
                            Text("세")
                                .font(.system(size: 12, weight: .bold))
                                .foregroundColor(.gray)
                        }
                        .frame(width: 80)
                        
                        Spacer()
                    }
                    .frame(height: 60)
                    .padding(.top, 5)
                    
                    Divider()
                        .padding(.top, 8)
                    
                    // MARK: AppNewsView
                    VStack(spacing: 10) {
                        Button {
                            
                        } label: {
                            HStack {
                                Text("새로운 소식")
                                    .font(.system(size: 18, weight: .bold))
                                    .foregroundColor(.black)
                                
                                Image(systemName: "chevron.right")
                                    .resizable()
                                    .frame(width: 8, height: 12)
                                    .foregroundColor(.black)
                                
                                Spacer()
                            }
                        }
                        
                        HStack {
                            Text("버전 5.191.0")
                                .font(.system(size: 12))
                                .foregroundColor(.gray)
                            
                            Spacer()
                            
                            Text("1일 전")
                                .font(.system(size: 12))
                                .foregroundColor(.gray)
                        }
                        
                        HStack {
                            Text("• 구석구석 숨어있던 버그들을 잡았어요.")
                                .font(.system(size: 12))
                            
                            Spacer()
                        }
                    }
                    .padding(.top, 5)
                    
                    // MARK: AppPreviewView
                    VStack {
                        
                        HStack {
                            Text("미리 보기")
                                .font(.system(size: 18, weight: .bold))
                                .foregroundColor(.black)
                            
                            Spacer()
                        }
                        
                        Image(.appPreview1)
                            .resizable()
                            .frame(height: 450)
                        
                    }
                    .padding(.top, 20)
                    
                    Divider()
                        .padding(.top, 8)
                    
                    // MARK: AppInfoView
                    VStack (alignment: .leading, spacing: 8) {
                        HStack {
                            Text("토스뱅크, 토스증권 서비스를 이용하시려면 토스 앱 설치가 필요합니다.")
                                .font(.system(size: 12, weight: .regular))
                            
                            Spacer()
                        }
                        
                        HStack {
                            VStack (alignment: .leading) {
                                Text("Viva Republica")
                                    .font(.system(size: 12, weight: .regular))
                                    .foregroundColor(Color(UIColor.tintColor))
                                
                                HStack {
                                    Text("개발자")
                                        .font(.system(size: 12, weight: .regular))
                                        .foregroundColor(Color(UIColor.lightGray))
                                    
                                    Spacer()
                                }
                            }
                            
                            Spacer()
                            
                            Button {
                                
                            } label: {
                                Image(systemName: "chevron.right")
                            }
                        }
                        
                    }
                    .padding(.top, 10)
                    
                    // MARK: AppReview
                    VStack (spacing: 12){
                        Button {
                            
                        } label: {
                            HStack {
                                Text("평가 및 리뷰")
                                    .font(.system(size: 18, weight: .bold))
                                    .foregroundColor(.black)
                                
                                Image(systemName: "chevron.right")
                                    .resizable()
                                    .frame(width: 8, height: 12)
                                    .foregroundColor(.black)
                                
                                Spacer()
                            }
                        }
                        
                        HStack {
                            Text("4.4")
                                .font(.system(size: 40, weight: .bold))
                            
                            Spacer()
                            
                            VStack (alignment: .trailing){
                                Text("★★★★★")
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundColor(.black)
                                
                                Text("8.4만개의 평가")
                                    .font(.system(size: 16, weight: .regular))
                                    .foregroundColor(Color(UIColor.darkGray))
                            }
                        }
                    }
                    .padding(.top, 20)
                    
                    // MARK: AppHelpfulReview
                    VStack (spacing: 12){
                        HStack {
                            Text("가장 도움이 되는 리뷰")
                                .font(.system(size: 16, weight: .bold))
                                .foregroundColor(.black)
                            
                            Spacer()
                        }
                        
                        VStack (alignment: .leading, spacing: 10) {
                            HStack {
                                Text("안녕하세요 안녕히가세요.")
                                    .font(.system(size: 16, weight: .semibold))
                                    .padding(.top, 20)
                                
                                Spacer()
                            }
                            .padding(.leading, 20)
                            
                            HStack {
                                Text("★★★★★")
                                    .font(.system(size: 12))
                                    .foregroundColor(.black)
                                
                                Text("11월 17일 • 유비니")
                                    .font(.system(size: 12))
                                    .foregroundColor(Color(UIColor.lightGray))
                            }
                            .padding(.leading, 20)
                            
                            Text("시기다른 래퍼들의 반대편을 바라보던 래퍼들의 배포 그건 백프로 다 개뻥 텐션업을 해야지 제대로")
                                .font(.system(size: 12))
                                .foregroundColor(Color(UIColor.lightGray))
                                .padding(.horizontal, 20)
                            
                            Spacer()
                        }
                        .frame(height: 200)
                        .padding(.horizontal, 4)
                        .background(Color.white)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color(UIColor.lightGray), lineWidth: 0.5)
                        )
                        .shadow(color: Color.black.opacity(0.5), radius: 4, x: 2, y: 2)
                        
                    }
                    .padding(.top, 2)
                    
                    // MARK: - AppReviewWrite
                    VStack (spacing: 10){
                        Text("탭하여 평가하기")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(.black)
                        
                        Button {
                            
                        } label: {
                            Text("☆  ☆  ☆  ☆  ☆")
                                .font(.system(size: 20, weight: .bold))
                                .foregroundColor(.blue)
                        }
                        
                        HStack {
                            Button {
                                
                            } label: {
                                HStack {
                                    Image(systemName: "square.and.pencil")
                                    
                                    Text("리뷰 작성")
                                        .font(.system(size: 14, weight: .bold))
                                        .foregroundColor(.blue)
                                }
                            }
                            .frame(width: 180, height: 50)
                            .background(Color(UIColor.systemGray5))
                            .cornerRadius(10)
                            
                            Spacer()
                            
                            Button {
                                
                            } label: {
                                HStack {
                                    Image(systemName: "questionmark.circle")
                                    
                                    Text("앱 지원")
                                        .font(.system(size: 14, weight: .bold))
                                        .foregroundColor(.blue)
                                }
                            }
                            .frame(width: 180, height: 50)
                            .background(Color(UIColor.systemGray5))
                            .cornerRadius(10)
                        }
                    }
                    .padding(.top, 12)
                    
                    
                    // MARK: 하단 공백
                    HStack {
                        
                    }
                    .frame(height: 50)
                }
                .frame(width: geometry.size.width - 32)
            }
            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    TossView()
}
