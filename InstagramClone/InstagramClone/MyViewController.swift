//
//  ViewController.swift
//  InstagramClone
//
//  Created by 어재선 on 7/5/24.
//

import UIKit

class MyViewController: UIViewController {
    // MARK: - 스크롤 뷰
    let scrollView: UIScrollView = {
      let scrollView = UIScrollView()
        scrollView.backgroundColor = .gray
      scrollView.translatesAutoresizingMaskIntoConstraints = false
      return scrollView
    }()
    
    // MARK: - 플러스 버튼
    private let plusBarButtonItem: UIBarButtonItem  = {
        let buttonAction = UIAction{ _ in print("plus")}
        let barButton = UIBarButtonItem(image: UIImage(systemName: "plus.app"), primaryAction: buttonAction)
        barButton.tintColor = .black

        barButton.tag = 2
        return barButton
        
    }()
    
    // MARK: - 더보기 버튼
    private let line3BarButtonItem: UIBarButtonItem  = {
        let buttonAction = UIAction{ _ in print("line.3")}
        let barButton = UIBarButtonItem(image: UIImage(systemName: "line.3.horizontal"), primaryAction: buttonAction)
        barButton.tintColor = .black
        barButton.tag = 3
        return barButton
    }()
    // MARK: - 개정 아이디
    private let idBarButtonItem: UIBarButtonItem  = {
        let barButton = UIBarButtonItem(title: "jaesun", style: .plain, target: MyViewController.self, action: #selector(buttonTest))
        barButton.tintColor = .black

        barButton.tag = 1
        return barButton
        
    }()
    
    // MARK: - Top
    // MARK: 이미지
    private(set) lazy var myImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage (systemName: "face.smiling")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.tintColor = .black
        return imageView
    }()
    // MARK: 게시물
    private let postLabel: UILabel = {
        let label = UILabel()
        label.text = "게시물"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let postNumberLabel: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    lazy var postStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [postNumberLabel, postLabel])
        stackView.axis = .vertical // default
        stackView.distribution = .fill // default
        stackView.alignment = .center // default
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    // MARK: 팔루워
    private let followersLabel: UILabel = {
        let label = UILabel()
        label.text = "팔로워"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let followersNumberLabel: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    lazy var followersStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [followersNumberLabel, followersLabel])
        stackView.axis = .vertical // default
        stackView.distribution = .fill // default
        stackView.alignment = .center // default
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    // MARK:   팔로잉
    private let followingLabel: UILabel = {
        let label = UILabel()
        label.text = "팔로잉"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let followingNumberLabel: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    lazy var followingStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [self.followingNumberLabel, self.followingLabel])
        stackView.axis = .vertical // default
        stackView.distribution = .fill // default
        stackView.alignment = .center // default
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    // MARK:  TophorizontalStackView
    lazy var topHorizontalStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [self.myImageView, self.postStackView, self.followersStackView, self.followingStackView])
        stackView.axis = .horizontal
        stackView.spacing = 30
        stackView.distribution = .equalSpacing
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.layoutMargins = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 30)
        stackView.isLayoutMarginsRelativeArrangement = true
        
        stackView.alignment = .center
        return stackView
    }()
    
    // MARK: - 이름
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "어재선"
        label.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - Professional Dashboard
    lazy var professionalDashboardTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "프로페셔널 대시보드"
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var professionalDashboardTextLabel: UILabel = {
        let label = UILabel()
        label.text = "이제 세로운 도구를 사용할 수 있습니다."
        label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        label.textColor = .gray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    lazy var professionalDashboardStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [professionalDashboardTitleLabel, professionalDashboardTextLabel])
        stackView.axis = .vertical // default
        stackView.distribution = .fill // default
        stackView.alignment = .leading // default
        stackView.spacing = 5
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.backgroundColor = .lightGray
        stackView.layoutMargins = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.layer.cornerRadius = 10
        
        return stackView
    }()
    
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        viewSetUp()
        
    }
    
    func viewSetUp() {
        
        self.view.addSubview(scrollView)
        self.navigationItem.leftBarButtonItem = self.idBarButtonItem
        self.navigationItem.rightBarButtonItems = [line3BarButtonItem,plusBarButtonItem]
        
        
        self.scrollView.addSubview(topHorizontalStackView)

        self.scrollView.addSubview(nameLabel)

        self.scrollView.addSubview(professionalDashboardStackView)
        
        
        let safeArea = self.view.safeAreaLayoutGuide

        
        
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: safeArea.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor),
            
            
            self.myImageView.widthAnchor.constraint(equalToConstant: 100),
            self.myImageView.heightAnchor.constraint(equalToConstant: 100),
            topHorizontalStackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            topHorizontalStackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            topHorizontalStackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            

            // MARK: - nameLAbel
            nameLabel.leadingAnchor.constraint(equalTo: myImageView.leadingAnchor),
            nameLabel.topAnchor.constraint(equalTo: myImageView.bottomAnchor,constant: 10),
            nameLabel.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
              
            // MARK: - professionalDashboardStackView
            professionalDashboardStackView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 20),
            professionalDashboardStackView.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            professionalDashboardStackView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -20)
        ])
    }
    
    
    // func
    @objc private func buttonTest() {
        print("id")
        
    }
}



