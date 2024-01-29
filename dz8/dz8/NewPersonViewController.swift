//
//  ViewController.swift
//  dz8
//
//  Created by Артур on 11.01.2024.
//

import UIKit

class NewPersonViewController: UIViewController {
    
    static let identifier = "NewPersonViewController"
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var lastnameLabel: UILabel!
    
    @IBOutlet weak var lastnameTextField: UITextField!
    
    @IBOutlet weak var saveButton: UIButton!
    
    @IBOutlet weak var cancelButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        setupButton(button: saveButton)
        setupButton(button: cancelButton)
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
    }
    
    private func setupButton(button: UIButton) {
        button.layer.cornerRadius = 10
        button.layer.borderColor = UIColor.systemBlue.cgColor
        button.layer.cornerRadius = 1
    }
}
