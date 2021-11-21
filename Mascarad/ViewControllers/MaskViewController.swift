//
//  MaskViewController.swift
//  Mascarad
//
//  Created by Эдуард on 16.11.2021.
//

import UIKit

class MaskViewController: UIViewController {
    
    @IBOutlet weak var memberImage: UIImageView!
    @IBOutlet weak var pawsImages: UIImageView!
    
    var member: Member!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        memberImage.image = UIImage(named: member.image)
        pawsImages.image = UIImage(named: member.pawsImage)
    }
}
