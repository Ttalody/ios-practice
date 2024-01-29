//
//  PersonTableViewCell.swift
//  dz8
//
//  Created by Артур on 11.01.2024.
//

import UIKit

class PersonTableViewCell: UITableViewCell {
    
    static let identifier = "PersonTableViewCell"
    
    @IBOutlet private weak var nameLabel: UILabel!
    
    @IBOutlet private weak var lastnameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(person: Person) {
        self.nameLabel.text = person.name
        self.lastnameLabel.text = person.lastname
    }

}
