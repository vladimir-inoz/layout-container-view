//
//  LayoutContainerView.swift
//  TestLayoutContainer
//
//  Created by Vladimir Inozemtsev on 20.03.2020.
//  Copyright © 2020 inozemtsev Vladimir. All rights reserved.
//

import UIKit

extension UIView {
    static var layoutContainerWidth: CGFloat { return 400 }
}

public class LayoutContainerView: UIView {
    
    private weak var maximumWidthConstraint: NSLayoutConstraint?
    
    @IBOutlet public var contentView: UIView? {
        didSet {
            guard contentView !== oldValue else { return }
            
            oldValue?.removeFromSuperview()
            
            guard let contentView = contentView else { return }
            
            if subviews.filter({ $0 == contentView }).isEmpty {
                addNewContentView()
            } else {
                updateExistingContentView()
            }
            
            applyConstraintsToContentView()
        }
    }
    
    private func updateExistingContentView() {
        guard let contentView = contentView else { return }
        let contentViewRelatedConstraints = constraints.filter{ $0.firstItem === contentView || $0.secondItem === contentView }
        NSLayoutConstraint.deactivate(contentViewRelatedConstraints)
    }
    
    private func addNewContentView() {
        guard let contentView = contentView else { return }
        addSubview(contentView)
        contentView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func applyConstraintsToContentView() {
        guard let contentView = contentView else { return }
        let containerWidthConstraint = contentView.widthAnchor.constraint(lessThanOrEqualToConstant: UIView.layoutContainerWidth)
        let widthConstraint = contentView.widthAnchor.constraint(equalTo: widthAnchor)
        widthConstraint.priority = .init(999.0)
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: topAnchor),
            contentView.bottomAnchor.constraint(equalTo: bottomAnchor),
            contentView.centerXAnchor.constraint(equalTo: centerXAnchor),
            widthConstraint,
            containerWidthConstraint,
        ])
        self.maximumWidthConstraint = containerWidthConstraint
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        maximumWidthConstraint?.constant = UIView.layoutContainerWidth
    }
}
