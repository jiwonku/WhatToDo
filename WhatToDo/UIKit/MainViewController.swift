//
//  MainViewControllter.swift
//  WhatToDo
//
//  Created by Jason Wongu Ji on 11/1/24.
//

import Foundation
import UIKit
import SwiftUI

class MainViewController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#fileID, #function, #line, "- ")
        self.view.backgroundColor = .systemYellow
    }
}


struct MainViewControllerRepresentable : UIViewControllerRepresentable {
    
    /// SwiftUI가 UIViewController 인스턴스를 생성할 때 호출
    func makeUIViewController(context: Context) -> MainViewController {
        return MainViewController.instantiate(nil)
    }
    
    /// SwiftUI가 뷰의 상태가 변경되었을 때 호출
    func updateUIViewController(_ uiViewController: MainViewController, context: Context) {
    }
}


//extension MainViewController {
//    /// UIViewControllerRepresentable을 채택하여 MainViewController를 SwiftUI에서 사용할 수 있게 래핑하는 구조체
//    private struct ViewControllerRepresentable : UIViewControllerRepresentable {
//        
//        let mainViewControllter : MainViewController
//        
//        /// SwiftUI가 뷰의 상태가 변경되었을 때 호출
//        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
//        }
//        
//        /// SwiftUI가 UIViewController 인스턴스를 생성할 때 호출
//        func makeUIViewController(context: Context) -> some UIViewController {
//            return mainViewControllter
//        }
//    }
//    
//    /// ViewControllerRepresentable의 인스턴스를 반환하여 SwiftUI View로 사용할 수 있게 해줌.
//    func getRepresentable() -> some View {
//        ViewControllerRepresentable(mainViewControllter: self)
//    }
//}


