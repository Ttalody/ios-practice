//
//  CustomizationViewController.swift
//  dz7_Akulich
//
//  Created by Артур on 10.01.2024.
//

import UIKit

final class CustomizationViewController: UIViewController {
    
    static let identifier = "CustomizationViewController"
    
    var delegate: CustomizationViewControllerDelegate?
    
    @IBOutlet weak var avatarButton: UIButton!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var saveButton: UIButton!
    
    @IBOutlet weak var editButton: UIButton!
    
    @IBOutlet weak var cancelButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        setupAvatarButton()
        saveButton.setupBorderedButton(title: "Save", borderColor: .systemPurple)
        saveButton.backgroundColor = .systemPurple
        editButton.setupBorderedButton(title: "Edit", borderColor: .systemPurple)
    }
    
    func updateSettings(nickname: String, imageName: String) {
        avatarButton.setImage(UIImage(systemName: imageName), for: .normal)
        avatarButton.setTitle("", for: .normal)
        avatarButton.titleLabel?.font = .systemFont(ofSize: 80)
        avatarButton.setPreferredSymbolConfiguration(.init(pointSize: 100), forImageIn: .normal)
        avatarButton.tintColor = .systemPurple
        avatarButton.setTitleColor(.systemPurple, for: .normal)
        
        nameLabel.text = nickname
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        delegate?.updateSettings(imageName: UserSettings.shared.avatarName, nickname: UserSettings.shared.nickname)
        dismiss(animated: true)
    }
    
    @IBAction func editButtonTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController(identifier: GenderViewController.identifier) as? GenderViewController, let navController = navigationController{
            navController.pushViewController(vc, animated: true)
        }
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    private func setupAvatarButton() {
        avatarButton.layer.cornerRadius = avatarButton.frame.width / 2
        avatarButton.clipsToBounds = true
        avatarButton.setTitleColor(.systemGray, for: .normal)
        avatarButton.layer.borderWidth = 1
        avatarButton.layer.borderColor = UIColor.systemPurple.cgColor
    }
}
