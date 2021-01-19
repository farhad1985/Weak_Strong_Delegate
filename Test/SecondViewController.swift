//
//  SecondViewController.swift
//  Test
//
//  Created by Farhad on 1/19/21.
//

import UIKit

class SecondViewController: UIViewController {

    var person: Person? = Person()

    override func viewDidLoad() {
        super.viewDidLoad()

        print("viewDidLoad")

        person?.delegate = self

    }
    

    @IBAction
    func dismiss() {
        person?.foo()
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
    }
}

extension SecondViewController: Personable {
    func hello() {
        DispatchQueue.global(qos: .background).async { [weak self] in
            for i in 0...100000 {
                guard let _ = self else {
                    // it means SecondViewController is not in memory
                    return
                }
                
                // it means SecondViewController is in memory
                print("\(i)")
            }
        }
    }
}
