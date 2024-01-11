//
//  AvatarViewController.swift
//  dz7_Akulich
//
//  Created by Артур on 10.01.2024.
//

import UIKit

final class AvatarViewController: UIViewController {
    
    static let identifier = "AvatarViewController"

    @IBOutlet weak var chooseAvatarLabel: UILabel!
    
    @IBOutlet weak var antButton: UIButton!
    
    @IBOutlet weak var personButton: UIButton!
    
    @IBOutlet weak var crownButton: UIButton!
    
    @IBOutlet weak var starButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func antButtonTapped(_ sender: Any) {
        UserSettings.shared.avatarName = "ant"
        
        popToRootVC()
    }
    
    @IBAction func personButtonTapped(_ sender: Any) {
        UserSettings.shared.avatarName = "person"
        
        popToRootVC()
    }
    
    @IBAction func crownButtonTapped(_ sender: Any) {
        UserSettings.shared.avatarName = "crown"
        
        popToRootVC()
    }
    
    @IBAction func starButtonTapped(_ sender: Any) {
        UserSettings.shared.avatarName = "star"
        
        popToRootVC()
    }
    
    private func popToRootVC() {
        guard let rootVC = navigationController?.viewControllers[0] as? CustomizationViewController else { return }
        rootVC.updateSettings(nickname: UserSettings.shared.nickname, imageName: UserSettings.shared.avatarName)
        navigationController?.popToRootViewController(animated: true)
    }
}
