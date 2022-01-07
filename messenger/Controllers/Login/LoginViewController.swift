//
//  LoginViewController.swift
//  messenger
//
//  Created by Ethan Shafran Moltz on 1/3/22.
//

import UIKit

class LoginViewController: UIViewController {

    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Log In"
        view.backgroundColor = .white
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Register",
                                                            style: .done,
                                                            target: self,
                                                            action: #selector(didTapRegister))
        
        // add subviews
        
        view.addSubview(imageView)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews();
        let size = view.frame.size.width / 3
        let midX = imageView.frame.midX
        // TODO: find mid of frame?
        
        imageView.frame = CGRect(x: midX, y: 100, width: size, height: size)
        
    }
 
    @objc private func didTapRegister(){
        let vc = RegisterViewController()
        vc.title = "Create Accoount"
        navigationController?.pushViewController(vc, animated: true)
        
    }
                                                            
                                                            
}
