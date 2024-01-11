//
//  NicknameViewController.swift
//  dz7_Akulich
//
//  Created by Артур on 10.01.2024.
//

import UIKit

final class NicknameViewController: UIViewController {
    
    static let identifier = "NicknameViewController"
    
    @IBOutlet weak var chooseNicknameLabel: UILabel!
    
    @IBOutlet weak var firstOptionButton: UIButton!
    
    @IBOutlet weak var secondOptionButton: UIButton!
    
    @IBOutlet weak var thirdOptionButton: UIButton!
    
    @IBOutlet weak var fourthOptionButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setupMaleOptions() {
        firstOptionButton.setupBorderedButton(title: "Frog", borderColor: .systemPurple)
        secondOptionButton.setupBorderedButton(title: "Hammer", borderColor: .systemPurple)
        thirdOptionButton.setupBorderedButton(title: "King", borderColor: .systemPurple)
        fourthOptionButton.setupBorderedButton(title: "Gun", borderColor: .systemPurple)
    }
    
    func setupFemaleOptions() {
        firstOptionButton.setupBorderedButton(title: "Fox", borderColor: .systemPurple)
        secondOptionButton.setupBorderedButton(title: "Mirror", borderColor: .systemPurple)
        thirdOptionButton.setupBorderedButton(title: "Queen", borderColor: .systemPurple)
        fourthOptionButton.setupBorderedButton(title: "Candy", borderColor: .systemPurple)
    }
    
    @IBAction func firstOptionButtonTapped(_ sender: Any) {
        guard let title = firstOptionButton.titleLabel?.text else { return }
        UserSettings.shared.nickname = title
        pushToAvatarVC()
    }
    
    @IBAction func secondOptionButtonTapped(_ sender: Any) {
        guard let title = secondOptionButton.titleLabel?.text else { return }
        UserSettings.shared.nickname = title
        pushToAvatarVC()
    }
    
    @IBAction func thirdOptionButtonTapped(_ sender: Any) {
        guard let title = thirdOptionButton.titleLabel?.text else { return }
        UserSettings.shared.nickname = title
        pushToAvatarVC()
    }
    
    @IBAction func fourthOptionButtonTapped(_ sender: Any) {
        guard let title = fourthOptionButton.titleLabel?.text else { return }
        UserSettings.shared.nickname = title
        pushToAvatarVC()
    }
    
    private func pushToAvatarVC() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController(identifier: AvatarViewController.identifier) as? AvatarViewController, let navController = navigationController{
            navController.pushViewController(vc, animated: true)
        }
    }
}
