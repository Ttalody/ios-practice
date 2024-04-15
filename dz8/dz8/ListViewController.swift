//
//  ViewController.swift
//  dz8
//
//  Created by Артур on 11.01.2024.
//

import UIKit

final class ListViewController: UIViewController {
    
    private var personArray: [Person] = []
    
    private var sections = [Section]()
    
    @IBOutlet weak var listTableView: UITableView!
    
    @IBOutlet weak var addButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listTableView.delegate = self
        listTableView.dataSource = self
        
        self.navigationItem.leftBarButtonItem = self.editButtonItem
        
        groupPersons()
    }
    
    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        
        listTableView.setEditing(editing, animated: true)
    }
    
    @IBAction func addButtonTapped(_ sender: Any) {
        openNewPersonVC()
    }
    
    private func openNewPersonVC() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController(identifier: NewPersonViewController.identifier) as? NewPersonViewController {
            vc.delegate = self
            self.present(vc, animated: true)
        }
    }
    
    private func groupPersons() {
        let groupedDict = Dictionary(grouping: personArray, by: {String($0.name).prefix(1).uppercased()})
        let keys = groupedDict.keys.sorted()
        sections = keys.map { Section(letter: String($0), persons: groupedDict[$0]!.sorted())}
        listTableView.reloadData()
    }
}

extension ListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        sections[section].persons.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        sections.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        sections[section].letter
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: PersonTableViewCell.identifier) as? PersonTableViewCell else { return UITableViewCell() }
        
        let section = sections[indexPath.section]
        let person = section.persons[indexPath.row]
        
        cell.configure(person: person)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        switch editingStyle {
        case .delete:
            
            let personToRemove = sections[indexPath.section].persons[indexPath.row]
            
            if let index = personArray.firstIndex(where: { $0 == personToRemove }) {
                personArray.remove(at: index)
            }
            
            sections[indexPath.section].persons.remove(at: indexPath.row)
            
            tableView.beginUpdates()
            if sections[indexPath.section].persons.isEmpty {
                
                sections.remove(at: indexPath.section)
                
                tableView.deleteSections(IndexSet(integer: indexPath.section), with: .automatic)
            } else {
                tableView.deleteRows(at: [indexPath], with: .automatic)
                
            }
            tableView.endUpdates()
        default: break
        }
    }
}

extension ListViewController: NewPersonVCDelegate {
    func addPerson(person: Person) {
        personArray.append(person)
        groupPersons()
    }
}

