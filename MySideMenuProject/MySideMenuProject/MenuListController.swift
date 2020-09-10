//
//  MenuListController.swift
//  MySideMenuProject
//
//  Created by 윤병일 on 2020/09/11.
//  Copyright © 2020 Byoungil Youn. All rights reserved.
//

import UIKit

class MenuListController : UITableViewController {
  
  //MARK: - Properties
  var items = ["First", "Second", "Third", "Fourth", "Fifth", "Six"]
  let darkColor = UIColor(red: 33/255.0, green: 33/255.0, blue: 33/255.0, alpha: 1)
  //MARK: - LifeCycle
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.backgroundColor = darkColor
    tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
  }
  
  //MARK: - delegate method
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return items.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    cell.textLabel?.text = items[indexPath.row]
    cell.textLabel?.textColor = .white
    cell.backgroundColor = darkColor
    return cell
  }
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
    //do something here 
  }
}

