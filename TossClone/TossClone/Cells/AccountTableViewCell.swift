//
//  AccountTableViewCell.swift
//  TossClone
//
//  Created by 어재선 on 7/18/24.
//

import UIKit

class AccountTableViewCell: UITableViewCell {
    static let cellId = CellType.account.rawValue
    
    let LogoimageSize: CGFloat = 50
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Title"
        label.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private lazy var subtitleLabel: UILabel = {
        let label = UILabel()
        label.text = "SubTitle"
        label.font = UIFont.systemFont(ofSize: 25, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var rightdetail: UILabel = {
        let label = UILabel()
        label.text = "rightdetail"
        label.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        label.setContentCompressionResistancePriority(.defaultHigh, for: .horizontal)
        return label
    }()
    
    
    private lazy var accountImageView: UIImageView  = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "face.smiling")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = LogoimageSize / 2
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.addSubview(accountImageView)
        let labelContainerView = UIView()
        labelContainerView.addSubview(titleLabel)
        labelContainerView.addSubview(subtitleLabel)
        labelContainerView.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(labelContainerView)
        self.contentView.addSubview(rightdetail)
        let safeArea = self.contentView.safeAreaLayoutGuide
        
        
        
        NSLayoutConstraint.activate([
            self.accountImageView.topAnchor.constraint(equalTo: safeArea.topAnchor),
                        self.accountImageView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
                        self.accountImageView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor),
                        self.accountImageView.widthAnchor.constraint(equalToConstant: LogoimageSize),
                        self.accountImageView.heightAnchor.constraint(equalToConstant: LogoimageSize),
                        
                        labelContainerView.leadingAnchor.constraint(equalTo: accountImageView.trailingAnchor, constant: 30),
                        labelContainerView.centerYAnchor.constraint(equalTo: safeArea.centerYAnchor),
                        
                        
                        self.titleLabel.topAnchor.constraint(equalTo: labelContainerView.topAnchor),
                        self.titleLabel.leadingAnchor.constraint(equalTo: labelContainerView.leadingAnchor),
                        self.titleLabel.trailingAnchor.constraint(equalTo: labelContainerView.trailingAnchor),
                        
                        self.subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor),
                        self.subtitleLabel.leadingAnchor.constraint(equalTo: labelContainerView.leadingAnchor),
                        self.subtitleLabel.trailingAnchor.constraint(equalTo: labelContainerView.trailingAnchor),
                        self.subtitleLabel.bottomAnchor.constraint(equalTo: labelContainerView.bottomAnchor),
                        
                        self.rightdetail.leadingAnchor.constraint(equalTo: labelContainerView.trailingAnchor),
                        self.rightdetail.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor,constant: -20),
                        self.rightdetail.centerYAnchor.constraint(equalTo: safeArea.centerYAnchor),
            
            
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureCell(item: ListItem){
        titleLabel.text = item.title
        subtitleLabel.text = item.subTitle
        
        if let imageName = item.imageName {
            accountImageView.image = UIImage(named: imageName)
        } else {
            accountImageView.image = UIImage(systemName: "bolt.fill")
        }
        rightdetail.text = item.rightdetail
        
    }
    
}
