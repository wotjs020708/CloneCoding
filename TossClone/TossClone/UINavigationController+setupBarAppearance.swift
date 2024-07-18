//
//  UINavigationController+setupBarAppearance.swift
//  TossClone
//
//  Created by 어재선 on 7/15/24.
//

import UIKit

extension UINavigationController {
    func setupBarAppearance() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithDefaultBackground()
        appearance.titlePositionAdjustment = UIOffset(horizontal: -(view.frame.width/2),
                                                      vertical: 0)
        appearance.titleTextAttributes = [.font: UIFont.boldSystemFont(ofSize: 40),
                                                  .foregroundColor: UIColor.darkGray]
        appearance.backgroundColor = .systemBackground
        navigationBar.scrollEdgeAppearance = appearance
        navigationBar.standardAppearance = appearance
        navigationBar.compactAppearance = appearance

    }
}

