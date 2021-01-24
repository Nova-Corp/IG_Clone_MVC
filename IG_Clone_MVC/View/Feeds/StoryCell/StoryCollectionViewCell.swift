//
//  StoryCollectionViewCell.swift
//  IG_Clone_MVC
//
//  Created by ADMIN on 24/01/21.
//  Copyright © 2021 Success Resource Pte Ltd. All rights reserved.
//

import UIKit

class StoryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var storyContainerView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        configureStoryContainer()
    }
    
    private func configureStoryContainer(){
        storyContainerView.layer.masksToBounds = true
        storyContainerView.layer.cornerRadius = storyContainerView.frame.width/2
    }

}
