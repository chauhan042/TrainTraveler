//
//  MTHNoTrain.swift
//  MyTravelHelper
//
//  Created by Nitin Singh on 06/01/21.
//  Copyright © 2021 Sample. All rights reserved.
//

import UIKit

class MTHNoTrain: UIView {
    
    lazy var contentScrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    lazy var errorImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "train")
        
        return imageView
    }()
    
    lazy var heading: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "No Train Found"
        label.textColor = UIColor(red: 59/255.0, green: 59/255.0, blue: 59/255.0, alpha: 1.0)
        label.font = UIFont(name: "Arial", size: 14.0)
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    lazy var subHeading: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Sorry, you have to select different stations"
        label.textColor = UIColor(red: 81/255.0, green: 81/255.0, blue: 81/255.0, alpha: 1.0)
        label.font = UIFont(name: "Arial", size: 12.0)
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonSetup()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonSetup()
    }
    
    private func commonSetup() {
        addSubview(contentScrollView)
        contentScrollView.addSubview(errorImageView)
        contentScrollView.addSubview(heading)
        contentScrollView.addSubview(subHeading)
        setupLayout()
    }
    
    private func setupLayout() {
        contentScrollView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true;
        contentScrollView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true;
        contentScrollView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true;
        contentScrollView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true;
        
        errorImageView.topAnchor.constraint(equalTo: contentScrollView.topAnchor, constant: 54.0).isActive = true
        errorImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        errorImageView.widthAnchor.constraint(equalToConstant: 64.0).isActive = true
        errorImageView.heightAnchor.constraint(equalToConstant: 64.0).isActive = true
        
        heading.topAnchor.constraint(equalTo: errorImageView.bottomAnchor, constant: 20.0).isActive = true
        heading.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        heading.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8.0).isActive = true
        heading.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8.0).isActive = true
        
        subHeading.topAnchor.constraint(equalTo: heading.bottomAnchor, constant: 16.0).isActive = true
        subHeading.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        subHeading.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8.0).isActive = true
        subHeading.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8.0).isActive = true
        
    }
}

