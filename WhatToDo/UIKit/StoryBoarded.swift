//
//  StoryBoarded.swift
//  WhatToDo
//
//  Created by Jason Wongu Ji on 11/4/24.
//

import Foundation
import UIKit


/// UIViewController를 상속받는 클래스들은 StoryBoarded를 자동으로 채택하게 된다.
extension UIViewController : StoryBoarded {}


/// StoryBoarded 프로토콜을 준수하는 대상은 instantiate를 사용한다.
/// 이 프로토콜을 채택한 클래스는 스토리 보드에서 인스턴스를 생성할 수 있는 instantiate메소드를 구현해야 한다.
protocol StoryBoarded {
    /// parameter : 스토리 보드 이름을 매개변수로 받는다. 다만 없을 수 있음
    /// return : StoryBoarded라는 프로토콜을 준수하는 클래스의 인스턴스
    static func instantiate(_ storyBoardName : String?) -> Self
}


/// StoryBoarded 프로토콜을 채택한 모든 클래스에 기본 구현을 제공
/// 목적 : 프로토콜을 구현한 클래스들이 별도의 구현 없이도 instantiate를 사용할 수 있음.
extension StoryBoarded {
    
    /// 호출할 때 매개변수를 생략 가능
    static func instantiate(_ storyBoardName : String? = nil) -> Self {
        
        /// 스토리 보드 이름이 제공되면 이를 사용하고, 그렇지 않으면 클래스 이름 자체를 문자열로 변환하여 사용.
        /// describing : 내가 바라보는 클래스의 이름 자체를 문자열로 만들어줌
        let name = storyBoardName ?? String(describing: self)
        
        /// 메인번들에서 해당 이름으로 스토리 보드를 얻어옴.
        let storyBoard = UIStoryboard(name: name, bundle: Bundle.main)
        
        /// as? Self는 자료형이 나 자신이다 라는 뜻 : StoryBoarded 프로토콜을 준수하고 있는 자신.
        guard let viewController = storyBoard.instantiateViewController(withIdentifier: String(describing: self)) as? Self else {
            fatalError("ViewController with identifier \(String(describing: self)) not found in storyboard \(name).")
        }
        
        return viewController
    }
}
