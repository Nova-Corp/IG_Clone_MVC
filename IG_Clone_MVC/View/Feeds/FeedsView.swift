//
//  FeedsView.swift
//  IG_Clone_MVC
//
//  Created by ADMIN on 23/01/21.
//  Copyright © 2021 Success Resource Pte Ltd. All rights reserved.
//

import UIKit

class FeedsView: UIView {
    
    let messengerBtn: UIButton = {
        let btn = UIButton(type: .custom)
        btn.setImage( #imageLiteral(resourceName: "messenger-dark"), for: .normal)
        return btn
    }()
    
    let newPostBtn: UIButton = {
        let btn = UIButton(type: .custom)
        btn.setImage( #imageLiteral(resourceName: "add-dark"), for: .normal)
        return btn
    }()
    
    func setupNavigationBar(vc: UIViewController) {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "ig-font-dark"))
        imageView.contentMode = .scaleAspectFit
        
        vc.navigationItem.titleView = imageView
        vc.navigationItem.rightBarButtonItem = UIBarButtonItem.customIconBtn(customBtn: messengerBtn)
        vc.navigationItem.leftBarButtonItem = UIBarButtonItem.customIconBtn(customBtn: newPostBtn)
        
        vc.navigationController?.navigationBar.backgroundColor = .white
        vc.navigationController?.navigationBar.isTranslucent = false
        vc.navigationController?.navigationBar.shadowImage = UIImage()
    }
}

extension UIBarButtonItem{
    static func customIconBtn(customBtn: UIButton) -> UIBarButtonItem {
        let messengerBarItem = UIBarButtonItem(customView: customBtn)
        messengerBarItem.customView?.translatesAutoresizingMaskIntoConstraints = false
        messengerBarItem.customView?.heightAnchor.constraint(equalToConstant: 24).isActive = true
        messengerBarItem.customView?.widthAnchor.constraint(equalToConstant: 24).isActive = true
        return messengerBarItem
    }
}
