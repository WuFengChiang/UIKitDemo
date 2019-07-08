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
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellID = "MY_CELL"
        let cell: MyCell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! MyCell
        cell.titleLabel.text = "標題"
        cell.dateLabel.text = "日期"
        cell.messageLabel.text = "訊息"
        cell.headImageView.image = UIImage(named: "studioA")
        return cell
    }
}
