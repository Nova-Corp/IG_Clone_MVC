//
//  FeedsTableViewCell.swift
//  IG_Clone_MVC
//
//  Created by ADMIN on 23/01/21.
//  Copyright © 2021 Success Resource Pte Ltd. All rights reserved.
//

import UIKit

class FeedsTableViewCell: UITableViewCell {

    @IBOutlet weak var profilePic: UIImageView!
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var moreBtn: UIButton!
    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var makeFav: UIButton!
    @IBOutlet weak var commentBtn: UIButton!
    @IBOutlet weak var sendDirectMsg: UIButton!
    @IBOutlet weak var makeBookMark: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        configureProfilePic()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    private func configureProfilePic(){
        profilePic.layer.cornerRadius = profilePic.frame.width/2
        profilePic.layer.masksToBounds = true
    }
    
}
