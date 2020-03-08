//
//  notificationViewController.swift
//  Hackgrid
//
//  Created by Aaryan Kothari on 08/03/20.
//  Copyright © 2020 ADG-VIT. All rights reserved.
//

import UIKit

class notificationViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    

    //MARK: - Outlets
    @IBOutlet weak var notificationTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    //MARK: - UITableView Delegate Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let notificationCell = notificationTableView.dequeueReusableCell(withIdentifier: "NotificationTableViewCell") as? NotificationTableViewCell
        
        notificationCell?.notificationLabel.text = "hey"
        
        return notificationCell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
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
