//
//  TossBankTableViewCell.swift
//  TossClone
//
//  Created by 어재선 on 7/18/24.
//

import UIKit

class TossBankTableViewCell: UITableViewCell {
    
    
    static let cellId = CellType.tossBank.rawValue
    private lazy var titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = "Title"
        titleLabel.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        return titleLabel
    }()
    
    
    private lazy var rightImageView: UIImageView  = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "chevron.right")
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .systemGray
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.addSubview(titleLabel)
        self.contentView.addSubview(rightImageView)
     
        let safeArea = self.contentView.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: safeArea.topAnchor,constant: 25),
            titleLabel.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 15),
            titleLabel.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -25),


            rightImageView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -25),
            rightImageView.centerYAnchor.constraint(equalTo: safeArea.centerYAnchor),
           
            

        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureCell(item: ListItem){
        titleLabel.text = item.title
    }
    
}
