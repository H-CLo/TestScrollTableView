//
//  ViewController.swift
//  TestScrollTableView
//
//  Created by RD-WilleyLo on 07/06/2017.
//  Copyright © 2017 RD-WilleyLo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var catogories: [String] = ["Sport", "Movie", "Love", "Adventure", "Tech"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Step 1
    // MARK: tableView delegate and datasource
    func numberOfSections(in tableView: UITableView) -> Int {
        return catogories.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return catogories[section]
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CatogoriesRow
        
        return cell
    }
    
    
}

