//
//  ViewController.swift
//  dz8
//
//  Created by Артур on 11.01.2024.
//

import UIKit

class ListViewController: UIViewController {
    
    var personArray: [Person] = [Person(name: "Vova", lastname: "Vova"),
                                 Person(name: "Pupa", lastname: "Lupa")]

    @IBOutlet weak var listTableView: UITableView!
    
    @IBOutlet weak var addButton: UIBarButtonItem!
    
    @IBOutlet weak var editButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listTableView.delegate = self
        listTableView.dataSource = self
    }

    @IBAction func addButtonTapped(_ sender: Any) {
        openNewPersonVC()
    }
    
    @IBAction func editButtonTapped(_ sender: Any) {
    }
    
    private func openNewPersonVC() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController(identifier: NewPersonViewController.identifier) as? NewPersonViewController {
            vc.delegate = self
            self.present(vc, animated: true)
        }
    }
    
}

extension ListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: PersonTableViewCell.identifier) as? PersonTableViewCell else { return UITableViewCell() }
        
        cell.configure(person: personArray[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension ListViewController: NewPersonVCDelegate {
    func addPerson(person: Person) {
        personArray.append(person)
        listTableView.reloadData()
    }
}
