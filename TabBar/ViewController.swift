//
//  ViewController.swift
//  TabBar
//
//  Created by Santhosh K on 02/04/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.resetRoot()
    }

    
    func resetRoot() {
        
        var navigationController = UINavigationController()
        guard let rootVC = UIStoryboard.init(name: "TabBar", bundle: nil).instantiateViewController(withIdentifier: "TabBarVC") as? TabBarVC else {
            return
        }
        navigationController = UINavigationController(rootViewController: rootVC)
        UIApplication.shared.windows.first?.rootViewController = navigationController
        UIApplication.shared.windows.first?.makeKeyAndVisible()
    }

}

