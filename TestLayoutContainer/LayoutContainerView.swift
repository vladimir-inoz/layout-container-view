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

/// Reusable view that applies application-wide layout rule to views
public class LayoutContainerView: UIView {
    
    private weak var maximumWidthConstraint: NSLayoutConstraint?
    
    /// Outlet contentView property. For use only as outlet in xib or storyboard.
    /// Use `setContentView(view:)`  to add content view in code
    @IBOutlet private(set) public var contentView: UIView?
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        //If user added contentView in xib or storyboard
        //then contentView is set there
        clearContentViewConstraints()
        applyConstraintsToContentView()
    }
    
    /// Set new contentView from code
    /// - Parameter newContentView: contentView
    public func setContentView(view newContentView: UIView) {
        guard newContentView !== contentView else { return }
        
        contentView?.removeFromSuperview()
        contentView = newContentView
        
        addNewContentView()
        applyConstraintsToContentView()
    }
    
    
    private func clearContentViewConstraints() {
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
