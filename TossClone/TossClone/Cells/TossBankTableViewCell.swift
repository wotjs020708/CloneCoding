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
        titleLabel.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        return titleLabel
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(titleLabel)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let safeArea = self.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: safeArea.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor)
            

        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureCell(item: ListItem){
        titleLabel.text = item.title
    }
    
}
