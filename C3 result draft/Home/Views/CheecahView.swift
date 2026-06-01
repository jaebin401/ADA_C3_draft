//
//  cheecahView.swift
//  C3 result draft
//
//  Created by Jaebin Ahn on 5/29/26.
//

import SwiftUI
import SwiftData

struct CheecahView: View {
    @Environment(\.modelContext) private var context
    
    // 각 상태별로 메인 텍스트에 들어갈 문구, 회색 텍스트 버튼에 들어갈 문구가 바뀝니다
    enum cheecahStatus {
        case ready
        case brushing
        case done
        case stop
        
        // 화면 메인에 검은색 볼드로 나타날 글자 입니다. 상태에 따라 변경
        var mainText: String {
            switch self {
            case .ready: "시작 버튼을 누르면 양치가 시작돼요. \n자동으로 시간이 줄어들어요."
            case .brushing: "칫솔질에 집중해봅시다. \n애플워치에서도 확인할  수 있어요!"
            case .done: "양치가 끝났어요! \n리포트를 확인하러 가볼까요?"
            case .stop: "칫솔질에 집중해봅시다.\n애플워치에서도 확인할  수 있어요!"
            }
        }
        
        var pointButtonText: String{
            switch self {
            case .ready: " "
            case .brushing: " "
            case .done: "결과 확인하러 가기"
            case .stop: "양치 다시 시작하기"
            }
        }
        
        // 상시로 표기될 회색 글자입니다. 이 글자 또한 상태에 따라 변경
        var buttonText: String {
            switch self {
            case .ready: "애플워치에서 시작하고싶어요"
            case .brushing: "양치를 중단하고 싶어요"
            case .done: "닫기"
            case .stop: "홈화면으로 돌아가기"
            }
        }
    }
    
    var status: cheecahStatus = .ready    // enum의 상태를 담을 변수 'status'입니다. 기본값은 .ready
    var interval: TimeInterval = 0        // 양치시각 3분을 카운트할 변수 입니다.
    
    // 메인 view 구성. 추후 UI 작업할 때 여기에 각 컴포넌트를 수정하면 됩니다
    var body: some View {
        
        // 검은색 볼드로 나타날 메인 텍스트
        Text("\(status.mainText)")
            .navigationTitle("양치를 해볼까요?")
            .navigationBarTitleDisplayMode(.inline)
        
        // start 버튼 + 커스텀 에셋 들어갈 자리 (모드 바뀌면 칫솔 그림 나오는 그거)
        
        
        // 양치 중단, 완료 시 나올 keyColor의 알약모양 버튼
        pointButton
        
        // 회색 텍스트로 상시 표기될 버튼
        Button(status.buttonText) {
            
        }
        
    }
    
    // point button의 구현부, .ready, .brushing일 땐 버튼이 사라지는 구조
    @ViewBuilder
    private var pointButton: some View {
        switch status {
        case .stop:
            Button(status.pointButtonText) {
                
            }
        case .done:
            Button(status.pointButtonText) {
                
            }
        case .ready, .brushing: EmptyView()
        }
    }
        
}

#Preview {
    CheecahView()
        .modelContainer(for: CheecahData.self)
}
