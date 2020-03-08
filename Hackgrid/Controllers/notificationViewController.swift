//
//  notificationViewController.swift
//  Hackgrid
//
//  Created by Aaryan Kothari on 08/03/20.
//  Copyright © 2020 ADG-VIT. All rights reserved.
//

import UIKit

class notificationViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    //MARK: - To be removed later
    var notificationsArrray : [String] = ["You should fuck off now. The hack is over and you lost :(","You should fuck off now. The hack is over and you lost :(You should fuck off now. The hack is over and you lost :(","You should fuck off now. The hack is over and you lost :(","You should fuck off now. The hack is over and you lost :("]

    //MARK: - Outlets
    @IBOutlet weak var notificationTableView: UITableView!
    
    
    //MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        notificationTableView.rowHeight = UITableView.automaticDimension
        notificationTableView.estimatedRowHeight = 120.0
    }
    
    
    //MARK: - UITableView Delegate Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notificationsArrray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let notificationCell = notificationTableView.dequeueReusableCell(withIdentifier: "NotificationTableViewCell") as? NotificationTableViewCell
        
        notificationCell?.notificationLabel.text = notificationsArrray[indexPath.row]
        
        return notificationCell!
    }
}
