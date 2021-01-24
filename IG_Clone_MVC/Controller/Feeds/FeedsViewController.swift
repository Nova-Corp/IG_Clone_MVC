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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        feedsView.setupNavigationBar(vc: self)
        navBarFunctionality()
        
        let nib = UINib.init(nibName: "FeedsTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "FeedsTableViewCell")
        tableView.separatorStyle = .none
        
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

extension FeedsViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "FeedsTableViewCell") as! FeedsTableViewCell
            return cell
//        }else{
//
//        }
        
    }
}

