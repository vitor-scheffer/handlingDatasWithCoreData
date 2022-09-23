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
        
        let getUserDatas = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
        do {
            let users = try context.fetch(getUserDatas)
            
            if users.count > 0 {
                for user in users as! [NSManagedObject] {
                    if let userName = user.value(forKey: "name") {
                        print(userName)
                    }
                }
                
            } else {
                print("Nenhum usuário encontrado.")
            }
            
        } catch  {
            print("Ocorreu um erro ao recuperar os dados.")
        }
        
//        let user = NSEntityDescription.insertNewObject(forEntityName: "User", into: context)
//
//        user.setValue("Joao Andrey", forKey: "name")
//        user.setValue( 29 , forKey: "age")
//        user.setValue("andreyantochevis", forKey: "login")
//        user.setValue("3456", forKey: "password")
//
//        do {
//            try context.save()
//            print("Usuário salvo com sucesso!")
//        } catch {
//            print("Ocorreu um erro ao salvar.")
//        }
        
    }


}

