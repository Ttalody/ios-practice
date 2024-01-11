//
//  GenderViewController.swift
//  dz7_Akulich
//
//  Created by Артур on 10.01.2024.
//

import UIKit

final class GenderViewController: UIViewController {
    
    static let identifier = "GenderViewController"
    
    @IBOutlet weak var chooseGenderLabel: UILabel!
    
    @IBOutlet weak var maleButton: UIButton!
    
    @IBOutlet weak var femaleButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        maleButton.setupBorderedButton(title: "Male", borderColor: .systemPurple)
        femaleButton.setupBorderedButton(title: "Female", borderColor: .systemPurple)
    }
    
    @IBAction func maleButtonTapped(_ sender: Any) {
        guard let title = maleButton.titleLabel?.text else { return }
        
        pushToNicknameVC(buttonTitle: title)
    }
    
    @IBAction func femaleButtonTapped(_ sender: Any) {
        guard let title = femaleButton.titleLabel?.text else { return }
        
        pushToNicknameVC(buttonTitle: title)
    }
    

    private func pushToNicknameVC(buttonTitle: String){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController(identifier: NicknameViewController.identifier) as? NicknameViewController, let navController = navigationController{
            
            vc.loadView()
            
            if buttonTitle == maleButton.titleLabel?.text {
                vc.setupMaleOptions()
            } else {
                vc.setupFemaleOptions()
            }
            
            navController.pushViewController(vc, animated: true)
        }
    }
}
