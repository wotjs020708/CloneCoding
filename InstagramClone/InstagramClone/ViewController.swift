//
//  ViewController.swift
//  InstagramClone
//
//  Created by 어재선 on 7/5/24.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var myImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage (systemName: "face.smiling")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.tintColor = .black
        return imageView
    }()
    
    private lazy var plusImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "plus.app")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.tintColor = .black
        return imageView
        
    }()
    
    private lazy var line3ImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "line.3.horizontal")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.tintColor = .black
        return imageView
    }()
    
    private let idLabel: UILabel = {
        let label = UILabel()
        label.text = "jaesun_02"
        label.font = UIFont.systemFont(ofSize: 23, weight: .bold)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "어재선"
        label.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - 게시물
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
    // MARK: - 팔루워
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
    
    // MARK: - 팔로잉
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
        let stackView = UIStackView(arrangedSubviews: [followingNumberLabel, followingLabel])
        stackView.axis = .vertical // default
        stackView.distribution = .fill // default
        stackView.alignment = .center // default
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
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
        
        // Do any additional setup after loading the view.
        title = "ViewController"
        view.backgroundColor = .white
        
        viewSetUp()
        
    }
    
    func viewSetUp() {
        
        
        self.view.addSubview(idLabel)
        self.view.addSubview(myImageView)
        self.view.addSubview(line3ImageView)
        self.view.addSubview(plusImageView)
        self.view.addSubview(nameLabel)
        self.view.addSubview(postStackView)
        self.view.addSubview(followersStackView)
        self.view.addSubview(followingStackView)
        self.view.addSubview(professionalDashboardStackView)
        self.view.addSubview(editProfileLabel)
        let safeArea = self.view.safeAreaLayoutGuide
        
        
        
        NSLayoutConstraint.activate([
            // MARK: - idLabel
            idLabel.topAnchor.constraint(equalTo: safeArea.topAnchor,constant: 10),
            idLabel.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor,constant: 10),
            
            // MARK: - line3ImageView
            line3ImageView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -20),
            line3ImageView.centerYAnchor.constraint(equalTo: idLabel.centerYAnchor),
            line3ImageView.widthAnchor.constraint(equalToConstant: 30),
            line3ImageView.heightAnchor.constraint(equalToConstant: 30),
            
            // MARK: - plusImageView
            plusImageView.trailingAnchor.constraint(equalTo: line3ImageView.leadingAnchor, constant: -20),
            plusImageView.centerYAnchor.constraint(equalTo: idLabel.centerYAnchor),
            plusImageView.widthAnchor.constraint(equalToConstant: 30),
            plusImageView.heightAnchor.constraint(equalToConstant: 30),
            
            
            // MARK: - myImageView
            myImageView.leadingAnchor.constraint(equalTo: idLabel.leadingAnchor),
            myImageView.topAnchor.constraint(equalTo: idLabel.bottomAnchor,constant: 15),
            myImageView.widthAnchor.constraint(equalToConstant: 100),
            myImageView.heightAnchor.constraint(equalToConstant: 100),
            
            // MARK: - nameLAbel
            nameLabel.leadingAnchor.constraint(equalTo: idLabel.leadingAnchor),
            nameLabel.topAnchor.constraint(equalTo: myImageView.bottomAnchor,constant: 10),
            
            // MARK: - poststackView
            postStackView.leadingAnchor.constraint(equalTo: myImageView.trailingAnchor, constant: 40),
            postStackView.centerYAnchor.constraint(equalTo: myImageView.centerYAnchor),
            
            // MARK: - followersStackView
            followersStackView.leadingAnchor.constraint(equalTo: postStackView.trailingAnchor, constant: 40),
            followersStackView.centerYAnchor.constraint(equalTo: myImageView.centerYAnchor),
            
            // MARK: - followingStackView
            followingStackView.leadingAnchor.constraint(equalTo: followersStackView.trailingAnchor, constant: 40),
            followingStackView.centerYAnchor.constraint(equalTo: myImageView.centerYAnchor),
            
            // MARK: - professionalDashboardStackView
            professionalDashboardStackView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 20),
            professionalDashboardStackView.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            professionalDashboardStackView.trailingAnchor.constraint(equalTo: line3ImageView.trailingAnchor)
        ])
    }
    
    
}

