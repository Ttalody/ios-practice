//
//  ViewController.swift
//  dz8
//
//  Created by Артур on 11.01.2024.
//

import UIKit

final class NewPersonViewController: UIViewController {
    
    static let identifier = "NewPersonViewController"
    
    weak var delegate: NewPersonVCDelegate?
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var lastnameLabel: UILabel!
    
    @IBOutlet weak var lastnameTextField: UITextField!
    
    @IBOutlet weak var saveButton: UIButton!
    
    @IBOutlet weak var cancelButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextField.delegate = self
        lastnameTextField.delegate = self

        setupButton(button: saveButton)
        setupButton(button: cancelButton)
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let name = nameTextField.text, let lastname = lastnameTextField.text else { return }
        
        let person = Person(name: name, lastname: lastname)
        
        delegate?.addPerson(person: person)
        
        self.dismiss(animated: true)
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    private func setupButton(button: UIButton) {
        button.layer.cornerRadius = 10
        button.layer.borderColor = UIColor.systemBlue.cgColor
        button.layer.borderWidth = 1
        button.clipsToBounds = true
    }
}

extension NewPersonViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.endEditing(true)
    }
}
