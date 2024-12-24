//
//  WelcomeViewController.swift
//  Nearby
//
//  Created by Lenildo Melo on 12/12/24.
//

import UIKit

class WelcomeViewController: UIViewController {
    let contentView: WelcomeView
    
    init(contentView: WelcomeView) {
        self.contentView = contentView
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Colors.gray100
        setup()
    }
    
    private func setup() {
        self.view.addSubview(contentView)
        setupConstraints()
    }
    
    private func setupConstraints() {
        self.setupContentViewToViewController(contentView: contentView)
    }
}
