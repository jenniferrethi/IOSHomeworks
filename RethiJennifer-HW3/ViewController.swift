//
//  ViewController.swift
//  RethiJennifer-HW3
//
//  Created by Rethi, Jennifer L on 2/9/18.
//  Copyright © 2018 Rethi, Jennifer L. All rights reserved.
//

import UIKit

public let operations = [
    "Add", "Subtract", "Multiply", "Divide"
]

let textCellIdentifier = "TextCell"

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "TextCell")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return operations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: textCellIdentifier, for: indexPath as IndexPath)
        
        let row = indexPath.row
        cell.textLabel?.text = operations[row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let row = indexPath.row
        print("Selected item = ", operations[row])
    }
    
    let calcSegueIdentifier = "calcSegueIdentifier"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if  segue.identifier == calcSegueIdentifier,
            let destination = segue.destination as? CalculateViewController,
            let opIndex = tableView.indexPathForSelectedRow?.row
        {
            destination.operatorType.text = operations[opIndex]
        }
    }


}

