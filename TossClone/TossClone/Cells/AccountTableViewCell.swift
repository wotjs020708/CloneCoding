//
//  AccountTableViewCell.swift
//  TossClone
//
//  Created by 어재선 on 7/18/24.
//

import UIKit

class AccountTableViewCell: UITableViewCell {
    static let cellId = CellType.account.rawValue
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
        label.font = UIFont.systemFont(ofSize: 25, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var accountImageView: UIImageView  = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "face.smiling")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(titleLabel)
        addSubview(accountImageView)
        addSubview(subtitleLabel)
        addSubview(rightdetail)
        let safeArea = self.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            self.accountImageView.topAnchor.constraint(equalTo: safeArea.topAnchor),
            self.accountImageView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
            self.accountImageView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor),
            self.accountImageView.widthAnchor.constraint(equalToConstant: 90),
            
            self.titleLabel.topAnchor.constraint(equalTo: accountImageView.topAnchor),
            self.titleLabel.leadingAnchor.constraint(equalTo: accountImageView.trailingAnchor),
            self.titleLabel.trailingAnchor.constraint(equalTo: rightdetail.leadingAnchor),
            
            self.subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor),
            self.subtitleLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            self.subtitleLabel.leadingAnchor.constraint(equalTo: titleLabel.trailingAnchor),
            
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
        accountImageView.image = UIImage(named: item.imageName ?? "")
        rightdetail.text = item.rightdetail
        
    }

}
