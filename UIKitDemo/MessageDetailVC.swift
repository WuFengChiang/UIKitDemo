//
//  MessageDetailVC.swift
//  UIKitDemo
//
//  Created by wuufone on 2019/7/8.
//  Copyright © 2019 江武峯. All rights reserved.
//

import UIKit

class MessageDetailVC: UIViewController {

    var messageTitle: String?
    var messageContent: String?
    @IBOutlet weak var contentTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = messageTitle
        self.contentTextView.text = messageContent
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
