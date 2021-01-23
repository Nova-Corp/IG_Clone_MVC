//
//  ViewController.swift
//  IG_Clone_MVC
//
//  Created by ADMIN on 23/01/21.
//  Copyright © 2021 Success Resource Pte Ltd. All rights reserved.
//

import UIKit

class FeedsViewController: UITableViewController {

    private let feedsView = FeedsView()
    override func loadView() {
        feedsView.setupNavigationBar(vc: self)
        view = feedsView
        navBarFunctionality()
    }
    
    private func navBarFunctionality(){
        feedsView.messengerBtn.addTarget(self, action: #selector(composeMessage), for: .touchUpInside)
        feedsView.newPostBtn.addTarget(self, action: #selector(newPost), for: .touchUpInside)
    }
    
    @objc private func composeMessage() {
        print("New Message Button Tapped.")
    }
    
    @objc private func newPost() {
        print("New Post Button Tapped.")
    }
}

