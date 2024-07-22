//
//  Model.swift
//  TossClone
//
//  Created by 어재선 on 7/18/24.
//

import Foundation


enum CellType: String {
    case tossBank
    case account
    case expenditure
    case creditScore
}

struct ListItem {
    let title: String
    let subTitle: String?
    let rightButton: String?
    let type: CellType
    let imageName: String?
}


struct ListSection{
    let items: [ListItem]
    static func generateData() -> [ListSection] {
        return [
            ListSection(items: [ListItem(title: "토스뱅크", subTitle: nil, rightButton: nil, type: .tossBank, imageName: nil)]),
            ListSection(items: [ListItem(title: "토스뱅크 통장", subTitle: "30,515", rightButton: "송금", type: .account, imageName: "TossBank"),
                                ListItem(title: "카카오뱅크 통장", subTitle: "0", rightButton: "송금", type: .account, imageName: "KaKaoBank"),
                                ListItem(title: "토스뱅크에 쌓인 이자", subTitle: "19", rightButton: "지금 받기", type: .account, imageName: nil),
                                ListItem(title: "IBK뱅크 통장", subTitle: "0", rightButton: "송금", type: .account, imageName: "IBKBank")]),
            ListSection(items: [ListItem(title: "7월에 쓴돈", subTitle: "0", rightButton: "내역", type: .expenditure, imageName: nil)]),
            ListSection(items: [ListItem(title: "내 신용점수", subTitle: nil, rightButton: nil, type: .creditScore, imageName: nil)])
        ]
    }
    
}
