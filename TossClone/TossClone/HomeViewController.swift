//
//  ViewController.swift
//  TossClone
//
//  Created by 어재선 on 7/15/24.
//

import UIKit

class HomeViewController: UIViewController {
    let list = ListSection.generateData()
    // tableView 생성
    
    private var tableView: UITableView = {
        let tableview = UITableView(frame: .zero, style: .insetGrouped)
        tableview.translatesAutoresizingMaskIntoConstraints = false
        return tableview
        
    }()
    
    
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
        super.viewDidLoad()
        self.tableView.register(TossBankTableViewCell.self, forCellReuseIdentifier: TossBankTableViewCell.cellId)
        self.tableView.register(AccountTableViewCell.self, forCellReuseIdentifier: AccountTableViewCell.cellId)
        self.tableView.register(ExpenditureTableViewCell.self, forCellReuseIdentifier: ExpenditureTableViewCell.cellId)
        self.view.backgroundColor = .systemBackground
        addSubView()
        self.tableView.separatorStyle = .none
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.rowHeight = UITableView.automaticDimension
        NSLayoutConstraint.activate([
            self.tableView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            self.tableView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
            self.tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
            
        ])
        
        
    }
    
    //MARK: - addView
    func addSubView() {
        self.navigationItem.rightBarButtonItems = [bellBarButtonItem, locationBarButtonItem]
        self.view.addSubview(tableView)
    }
    
}


extension HomeViewController: UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return list.count
    } // 섹션 숫자
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list[section].items.count
    } // 셀 숫자
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let target = list[indexPath.section].items[indexPath.row] // 셀에 표시할 데이터를 가져옴
        switch target.type { // 타입별로 값을 설정
        case .tossBank:
            let cell = tableView.dequeueReusableCell(withIdentifier: target.type.rawValue, for: indexPath) as! TossBankTableViewCell
            cell.configureCell(item: target)
            cell.selectionStyle = .none
            return cell
            
        case .account:
            let cell = tableView.dequeueReusableCell(withIdentifier: target.type.rawValue, for: indexPath) as! AccountTableViewCell
            cell.configureCell(item: target)
            cell.selectionStyle = .none
            return cell
            
            
        case .expenditure:
            let cell = tableView.dequeueReusableCell(withIdentifier: target.type.rawValue, for: indexPath) as! ExpenditureTableViewCell
            cell.configureCell(item: target)
            cell.selectionStyle = .none
            return cell
        }
    }
    
    
}
#Preview(body: {
    UINavigationController(rootViewController: HomeViewController())
})
