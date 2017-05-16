//
//  RootTableViewController.swift
//  DevApp
//
//  Created by 菊地弘祐 on 2017/05/16.
//  Copyright © 2017 kou2kkkt. All rights reserved.
//

import UIKit

let ROOTTABLEVIEWCONTROLLER = "RootTableViewController"
let ROOTTABLEVIEWCELL = "RootTableViewCell"

class RootTableViewController: UITableViewController {
    
    static func instance() -> UINavigationController? {
        let sb = UIStoryboard.init(name: ROOTTABLEVIEWCONTROLLER, bundle: nil)
        return sb.instantiateInitialViewController() as! UINavigationController?
    }
    
    // MARK: View Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: TableView
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "test"
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: ROOTTABLEVIEWCELL, for: indexPath)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //
    }
}
