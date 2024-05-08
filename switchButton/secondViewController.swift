//
//  secondViewController.swift
//  switchButton
//
//  Created by STC on 22/11/22.
//

import UIKit

class secondViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    var student: [Student] = []
    
    
    
    @IBOutlet weak var detailsTableView: UITableView!
    var dataFromFVC1: String?
    var dataFromFVC2: String?
    var dataFromFVC3: String?
    var dataFromFVC4: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        detailsTableView.delegate  = self
        detailsTableView.dataSource = self
    
        let nibname = UINib(nibName: "detailsTableViewCell", bundle: nil)
        detailsTableView.register(nibname, forCellReuseIdentifier: "detailsTableViewCell")
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.detailsTableView.dequeueReusableCell(withIdentifier: "detailsTableViewCell", for: indexPath) as! detailsTableViewCell
        cell.rollNo.text = "\(dataFromFVC1!)"
        cell.StudentName.text = "\(dataFromFVC2!)"
        cell.studentEmail.text = "\(dataFromFVC3!)"
        cell.studentAddress.text = "\(dataFromFVC4!)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110
    }
    
}
