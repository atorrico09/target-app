//
//  HomeContainerViewController.swift
//  target-app
//
//  Created by Andres Leonel Torrico Cossio on 12/09/2022.
//

import UIKit

final class HomeContainerViewController: BottomSheetContainerViewController <HomeViewController, TargetBottomSheetViewController> {
    
    override func viewDidAppear(_ animated: Bool) {
        setupNavigationBar()
    }
    
    func setupNavigationBar() {
        navigationController?.setNavigationBarHidden(false, animated: true)
        
        navigationItem.titleView = UILabel(style: .secondary(text: "home_title".localized))
        
        let barLeftButtonItem = UIBarButtonItem(image: UIImage(named: "ic_home_profile"),
                                                style: .plain,
                                                target: self,
                                                action: nil)
        navigationItem.leftBarButtonItem = barLeftButtonItem
        navigationItem.leftBarButtonItem?.tintColor = .black
        
        let barRightButtonItem = UIBarButtonItem(image: UIImage(named: "ic_home_chat"),
                                                 style: .plain,
                                                 target: self,
                                                 action: nil)
        navigationItem.rightBarButtonItem = barRightButtonItem
        navigationItem.rightBarButtonItem?.tintColor = .black
    }
    
}
