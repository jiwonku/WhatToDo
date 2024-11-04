//
//  ToDoCell.swift
//  WhatToDo
//
//  Created by Jason Wongu Ji on 11/4/24.
//

import Foundation
import UIKit

class ToDoCell : UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var contentLabel: UILabel!
        
    @IBOutlet weak var selectionSwitch: UISwitch!
    
    override class func awakeFromNib() {
        super.awakeFromNib()
        print(#fileID, #function, #line, "- ")
    }
    @IBAction func onEditButtonClicked(_ sender: UIButton) {
        print(#fileID, #function, #line, "- ")
    }
    @IBAction func onDeleteButtonClicked(_ sender: UIButton) {
        print(#fileID, #function, #line, "- ")
    }
}
