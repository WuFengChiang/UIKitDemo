//
//  MainVC.swift
//  UIKitDemo
//
//  Created by wuufone on 2019/7/8.
//  Copyright © 2019 江武峯. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let messages: [Message] = [
        Message(title: "AR 課程",
                date: Date(),
                content: "今天教 UIKit 哦！",
                headImage: UIImage(named: "studioA")!),
        Message(title: "暑假中的一天",
                date: Calendar.current.date(byAdding: .day, value: -1, to: Date())!,
                content: "放暑假真愉快",
                headImage: UIImage(named: "studioA")!)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UINib(nibName: "MyCell", bundle: nil), forCellReuseIdentifier: "MY_CELL")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        guard let _ = UserDefaults().object(forKey: "LoginEmail") else {
            performSegue(withIdentifier: "TO_LOGIN_VC", sender: nil)
            return
        }
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

extension MainVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150.5
    }
}

extension MainVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellID = "MY_CELL"
        let cell: MyCell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! MyCell
        cell.titleLabel.text = messages[indexPath.row].title
        cell.dateLabel.text = "\(messages[indexPath.row].date)"
        cell.messageLabel.text = messages[indexPath.row].content
        cell.headImageView.image = messages[indexPath.row].headImage
        return cell
    }
}

struct Message {
    var title: String
    var date: Date
    var content: String
    var headImage: UIImage
    init(title: String, date: Date, content: String, headImage: UIImage) {
        self.title = title
        self.date = date
        self.content = content
        self.headImage = headImage
    }
}
