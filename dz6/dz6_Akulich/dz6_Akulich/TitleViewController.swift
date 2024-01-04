//
//  ViewController.swift
//  dz6_Akulich
//
//  Created by Артур on 04.01.2024.
//

import UIKit

final class TitleViewController: UIViewController {
    
    static let identifier = "TitleViewController"
    
    @IBOutlet weak var titleImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var scopeLabel: UILabel!
    
    @IBOutlet weak var nextButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func nextButtonDidTap(_ sender: Any) {
        guard let navController = navigationController else { return }
        pushToController(navigationController: navController, identifier: PersonalViewController.identifier)
    }
}

