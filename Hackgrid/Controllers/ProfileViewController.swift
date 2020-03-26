//
//  ProfileViewController.swift
//  Hackgrid
//
//  Created by Aaryan Kothari on 26/03/20.
//  Copyright © 2020 ADG-VIT. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var profileTableView: UITableView!
    
    let queries = [["query":"What’s happing out there ?","answer":"No answer is really helping you to win the hack you can sleep :\""]]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return queries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = profileTableView.dequeueReusableCell(withIdentifier: "querycell") as? RecentQueriesTableViewCell
        
        cell?.queryLabel.text = queries[indexPath.row]["query"]
        cell?.queryAnswerLabel.text = queries[indexPath.row]["answer"]
        
        //setting view border
        cell?.querybackgroundView.layer.borderWidth = 1
         cell?.querybackgroundView.layer.borderColor = #colorLiteral(red: 0.5921568627, green: 0.5921568627, blue: 0.5921568627, alpha: 1)
        
        cell?.querybackgroundView.layer.masksToBounds = false
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 77
    }
    

}
