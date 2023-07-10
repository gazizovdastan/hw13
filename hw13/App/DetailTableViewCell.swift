//
//  DetailTableViewCell.swift
//  hw13
//
//  Created by Dastan on 10.07.2023.
//

import Foundation
import UIKit
import SnapKit

class DetailTableViewCell: UITableViewCell {
    
    var settingModel: Setting? {
        didSet {
            label.text = settingModel?.label
            detailLabel.text = settingModel?.detailText
            iconImageView.image = settingModel?.icon
            iconImageView.backgroundColor = settingModel?.iconBackgroundColor
        }
    }
    
    // MARK: - UI
    
    private lazy var iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 8
        imageView.layer.masksToBounds = true
        imageView.tintColor = .white
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private lazy var label: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private lazy var detailLabel: UILabel = {
        let label = UILabel()
        label.textColor = .gray
        return label
    }()
}
