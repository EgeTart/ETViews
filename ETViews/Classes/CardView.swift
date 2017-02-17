//
//  CardView.swift
//  CocoapodsDemo
//
//  Created by 高永效 on 17/02/2017.
//  Copyright © 2017 EgeTart. All rights reserved.
//

import UIKit
import SnapKit

class CardView: UIView {
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.lineBreakMode = .byWordWrapping
        label.text = "我本是，卧龙岗散淡的人 常记溪亭日暮，沉醉不知归路"
        return label
    }()
    
    lazy var bodyLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 16)
        label.text = "自古悠闲能生静，生雅兴，生出一股天地任我行的逍遥飘逸。当然，这里的清闲并不是指行为上的懒散，而是意指海阔天空的心胸，不计个人得失荣辱的豁达。不计较自然就会心静，心静自然凉，凉则不会轻易头脑发热，头脑清醒则生智慧，有智慧的人，才有闲情逸致观赏山景。因此，诸葛亮无疑是一个具有诗意的人。 春观夜樱，夏望繁星，秋赏满月，冬会初雪。”这些美妙的体验，在不读诗的人眼里，就如那些听不到音乐的人，以为跳舞的人疯了。"
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.white
        
        self.layer.cornerRadius = 8
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowRadius = 5
        self.layer.shadowOpacity = 0.4
        
        self.addSubview(titleLabel)
        self.addSubview(bodyLabel)
        
        self.configureSubsiews()
    }
    
    func configureSubsiews() {
        self.titleLabel.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(16)
            make.leading.equalToSuperview().offset(8)
            make.trailing.equalToSuperview().offset(-8)
        }
        
        self.bodyLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self.titleLabel.snp.bottom).offset(20)
            make.leading.trailing.equalTo(self.titleLabel)
            make.bottom.lessThanOrEqualTo(self).offset(-8)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
