//
//  ViewController.swift
//  dz7_Akulich
//
//  Created by Артур on 09.01.2024.
//

import UIKit

protocol CustomizationViewControllerDelegate {
    func updateSettings(imageName: String, nickname: String)
}

final class MainViewController: UIViewController {
    
    @IBOutlet weak var avatarButton: UIButton!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var customizeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        customizeButton.setupBorderedButton(title: "Customize", borderColor: .systemPurple)
        setupAvatarButton()
    }
    
    @IBAction func customizeButtonTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let navController = storyboard.instantiateViewController(identifier: "navigationController") as? UINavigationController {
            if let customizationVC = navController.viewControllers[0] as? CustomizationViewController {
                customizationVC.userSettings = UserSettings.shared
                customizationVC.delegate = self
                self.present(navController, animated: true)
            }
        }
    }
    
    private func setupAvatarButton() {
        avatarButton.setTitleColor(.systemGray, for: .normal)
        avatarButton.setTitle("No Avatar", for: .normal)
        avatarButton.layer.cornerRadius = avatarButton.frame.width / 2
        avatarButton.clipsToBounds = true
        avatarButton.layer.borderWidth = 1
        avatarButton.layer.borderColor = UIColor.systemPurple.cgColor
    }
}

// MARK: CustomizationViewControllerDelegate

extension MainViewController: CustomizationViewControllerDelegate {
    func updateSettings(imageName: String, nickname: String) {
        avatarButton.setImage(UIImage(systemName: imageName), for: .normal)
        avatarButton.setTitle("", for: .normal)
        avatarButton.titleLabel?.font = .systemFont(ofSize: 80)
        avatarButton.setPreferredSymbolConfiguration(.init(pointSize: 100), forImageIn: .normal)
        avatarButton.tintColor = .systemPurple
        
        nameLabel.text = nickname
    }
}

