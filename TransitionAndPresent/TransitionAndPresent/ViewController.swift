//
//  ViewController.swift
//  TransitionAndPresent
//
//  Created by Nguyen Van Cong on 12/30/21.
//

import UIKit

class ViewController: UIViewController {

    private let button: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        button.setTitle("Tap me", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemRed
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(button)
        button.center = view.center
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    @objc private func didTapButton(){
        let vc = SecondViewController()
//        vc.modalTransitionStyle = .flipHorizontal
        vc.modalPresentationStyle = .popover
        vc.popoverPresentationController?.sourceView = button
        
        present(vc, animated: true)
    }

}

