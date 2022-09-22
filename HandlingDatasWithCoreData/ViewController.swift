//
//  ViewController.swift
//  HandlingDatasWithCoreData
//
//  Created by José Vitor Scheffer Boff dos Santos on 22/09/22.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let user = NSEntityDescription.insertNewObject(forEntityName: "User", into: context)
        
        
    }


}

