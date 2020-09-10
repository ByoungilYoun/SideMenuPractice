//
//  ViewController.swift
//  MySideMenuProject
//
//  Created by 윤병일 on 2020/09/11.
//  Copyright © 2020 Byoungil Youn. All rights reserved.
//

import UIKit
import SideMenu

class ViewController: UIViewController {
  
  //MARK: - Properties
  var menu : SideMenuNavigationController = {
    let mn = SideMenuNavigationController(rootViewController: MenuListController())
    mn.leftSide = true
    mn.setNavigationBarHidden(true, animated: false)
    return mn
  }()
  
  //MARK: - LifeCycle
  override func viewDidLoad() {
    super.viewDidLoad()
    setUI()
    SideMenuManager.default.leftMenuNavigationController = menu
    SideMenuManager.default.addPanGestureToPresent(toView: self.view)
  }

  private func setUI() {
    view.backgroundColor = .link
    navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Menu", style: .plain, target: self, action: #selector(didTapMenu))
    
  }
  
  
  @objc func didTapMenu() {
    present(menu, animated: true)
  }
}

