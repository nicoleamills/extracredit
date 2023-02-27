//
//  ViewController.swift
//  tableview
//
//  Created by Nicole Mills on 2/26/23.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var languages = [
        LanguageName("English", "EN"),
        LanguageName("Spanish", "ES"),
        LanguageName("Greek", "EL"),
        LanguageName("Finnish", "FI"),
        LanguageName("German", "DE"),
        LanguageName("French", "FR"),
        LanguageName("Italian", "IT"),
        LanguageName("Korean", "KO"),
        LanguageName("Chinese", "ZH"),
        LanguageName("Indonesian", "ID")
    ]
    
    var languageselected = ["You selected a language"]

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return languages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = languages[indexPath.row].language
        content.secondaryText = languages[indexPath.row].name
        cell.contentConfiguration = content
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "showlanguage", sender: self)
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

