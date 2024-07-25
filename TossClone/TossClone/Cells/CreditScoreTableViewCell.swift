//
//  CreditScoreTableViewCell.swift
//  TossClone
//
//  Created by 어재선 on 7/22/24.
//

import UIKit
// TODO: - extension 사용하기
class CreditScoreTableViewCell: UITableViewCell {
    
    static let cellId = CellType.creditScore.rawValue
    
    private lazy var titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = "Title"
        titleLabel.font = UIFont.systemFont(ofSize: 20 , weight: .bold)
        titleLabel.textColor = .lightGray
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        return titleLabel
    }()
    
    
    
    private lazy var leftImageView: UIImageView  = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "checkmark.circle.badge.questionmark")
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .systemBlue
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var rightLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = "확인하기"
        titleLabel.font = UIFont.systemFont(ofSize: 20 , weight: .bold)
        titleLabel.textColor = .systemGray
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
    
    private lazy var topRightStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [rightLabel, rightImageView])
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .leading
        
        return stackView
    }()
    
    private lazy var topLeftStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [leftImageView, titleLabel])
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .leading
        
        return stackView
    }()
    private lazy var topStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [topLeftStackView, topRightStackView])
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.layoutMargins = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        stackView.alignment = .center
        stackView.isLayoutMarginsRelativeArrangement = true

        return stackView
    }()
    
    private lazy var rightButton: UIButton = {
        var configuration = UIButton.Configuration.plain()
        configuration.title = "대출받기"
        configuration.baseForegroundColor = .lightGray
        let button = UIButton(configuration: configuration, primaryAction: UIAction { _ in  print("대출 받기")})
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        return button
    }()
    
    private lazy var leftButton: UIButton = {
        var configuration = UIButton.Configuration.plain()
        configuration.title = "계좌개설"
        configuration.baseForegroundColor = .lightGray
        let button = UIButton(configuration: configuration, primaryAction: UIAction { _ in  print("계좌 개설")})
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        return button
    }()
    
    private lazy var centerButton: UIButton = {
        var configuration = UIButton.Configuration.plain()
        configuration.title = "카드발급"
        configuration.baseForegroundColor = .lightGray
        let button = UIButton(configuration: configuration, primaryAction: UIAction { _ in  print("카드 발급")})
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        return button
    }()
    
    private lazy var bottomStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [leftButton, centerButton, rightButton ])
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.layoutMargins = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        stackView.alignment = .center
        stackView.isLayoutMarginsRelativeArrangement = true

        return stackView
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.addSubview(topStackView)
        self.contentView.addSubview(bottomStackView)
        let safeArea = self.contentView.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            self.leftImageView.widthAnchor.constraint(equalToConstant: 30),
            self.leftImageView.heightAnchor.constraint(equalToConstant: 30),
            
            self.rightImageView.centerYAnchor.constraint(equalTo: self.topStackView.centerYAnchor),
            self.titleLabel.centerYAnchor.constraint(equalTo: self.leftImageView.centerYAnchor),
            
            topStackView.topAnchor.constraint(equalTo: safeArea.topAnchor),
            topStackView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
            topStackView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor),
            
            bottomStackView.topAnchor.constraint(equalTo: topStackView.bottomAnchor),
            bottomStackView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
            bottomStackView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor),
            bottomStackView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor)
            
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureCell(item: ListItem){
        titleLabel.text = item.title
    }

    
}
