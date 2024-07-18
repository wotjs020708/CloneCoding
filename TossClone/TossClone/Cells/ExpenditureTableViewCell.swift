//
//  ExpenditureTableViewCell.swift
//  TossClone
//
//  Created by 어재선 on 7/18/24.
//


import UIKit

class ExpenditureTableViewCell: UITableViewCell {
    static let cellId = CellType.expenditure.rawValue
    
    let LogoimageSize: CGFloat = 40
    
    private lazy var accountImageView: UIImageView  = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "creditcard.trianglebadge.exclamationmark")
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .systemRed
        imageView.layer.cornerRadius = LogoimageSize / 2
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Title"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .lightGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private lazy var subtitleLabel: UILabel = {
        let label = UILabel()
        label.text = "SubTitle"
        label.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var rightButton: UIButton = {
        var configuration = UIButton.Configuration.gray()
        configuration.title = "title"
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10)
        configuration.baseForegroundColor = .systemGray
        let button = UIButton(configuration: configuration, primaryAction: UIAction { _ in  print("눌림")})
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        
        
        return button
    }()
    
    

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.layer.cornerRadius = 20
        
        self.contentView.addSubview(accountImageView)
        let labelContainerView = UIView()
        labelContainerView.addSubview(titleLabel)
        labelContainerView.addSubview(subtitleLabel)
        labelContainerView.setContentHuggingPriority(.defaultLow, for: .horizontal)
        
        labelContainerView.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(labelContainerView)
        self.contentView.addSubview(rightButton)
        let safeArea = self.contentView.safeAreaLayoutGuide
        
        
        
        NSLayoutConstraint.activate([
            self.accountImageView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 25),
            self.accountImageView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor,constant: 10),
            self.accountImageView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor,constant: -25),
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
            
            self.rightButton.leadingAnchor.constraint(equalTo: labelContainerView.trailingAnchor),
            self.rightButton.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor,constant: -20),
            self.rightButton.centerYAnchor.constraint(equalTo: safeArea.centerYAnchor),
            
            
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureCell(item: ListItem){
        titleLabel.text = item.title
        subtitleLabel.text = "\(item.subTitle ?? "0") 원"
        rightButton.setTitle(item.rightButton, for: .normal)
        
    }
    
}
