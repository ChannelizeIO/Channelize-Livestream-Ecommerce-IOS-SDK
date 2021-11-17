//
//  ViewController.swift
//  LSC-SAMPLE
//
//  Created by BigStep on 01/08/21.
//

import UIKit
import LiveBroadcastUIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton()
        button.frame.size = CGSize(width: 200, height: 50)
        button.center = self.view.center
        button.setTitle("Open", for: .normal)
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        self.view.addSubview(button)
        button.addTarget(self, action: #selector(didPressOpenButton(sender:)), for: .touchUpInside)
    }
    
    @objc
    private func didPressOpenButton(sender: UIButton) {
        let controller = LBBroadcastsViewController()
        let navigationController = UINavigationController(rootViewController: controller)
        navigationController.modalPresentationStyle = .overFullScreen
        navigationController.modalTransitionStyle = .coverVertical
        self.present(navigationController, animated: true, completion: nil)
    }


}

