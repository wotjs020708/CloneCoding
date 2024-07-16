//
//  ViewController.swift
//  TossClone
//
//  Created by 어재선 on 7/15/24.
//

import UIKit

class HomeViewController: UIViewController {
    // MARK: Scrollview
    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.backgroundColor = .systemBackground
        
        return scrollView
    }()
    // TODO: 토스뱅크
    private let tossBankButton: UIButton = {
        var config = UIButton.Configuration.plain()
        config.baseBackgroundColor = .darkGray
        var titleAttr = AttributedString.init("토스뱅크")
        titleAttr.font = .systemFont(ofSize: 40, weight: .bold)
        config.attributedTitle = titleAttr
        
        config.image = UIImage(systemName: "chevron.right")
        config.imagePadding = 10
        config.imagePlacement = .trailing
        
        let button = UIButton(configuration: config)
        return button
        
        
    }()
    // TODO: 계좌 리스트
    
    // MARK:  위치
    private let locationBarButtonItem: UIBarButtonItem  = {
        let buttonAction = UIAction{ _ in print("location")}
        let barButton = UIBarButtonItem(image: UIImage(systemName: "location.fill"), primaryAction: buttonAction)
        barButton.tintColor = .darkGray
        
        barButton.tag = 2
        return barButton
        
    }()
    
    // MARK: 알림
    private let bellBarButtonItem: UIBarButtonItem  = {
        let buttonAction = UIAction{ _ in print("bell.fill")}
        let barButton = UIBarButtonItem(image: UIImage(systemName: "bell.fill"), primaryAction: buttonAction)
        barButton.tintColor = .darkGray
        barButton.tag = 3
        return barButton
    }()
    
    override func viewDidLoad() {
        
        self.view.backgroundColor = .systemBackground
        addSubView()
        setupView()
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK: - addView
    func addSubView() {
        self.view.addSubview(self.scrollView)
        self.navigationItem.rightBarButtonItems = [bellBarButtonItem, locationBarButtonItem]
        self.scrollView.addSubview(self.tossBankButton)
    }
    
    //MARK: - setupView
    
    func setupView() {
        NSLayoutConstraint.activate([
            self.scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            self.scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            self.scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            self.scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            self.tossBankButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            self.tossBankButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            self.tossBankButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
        ])
        
    }
}



