//
//  ViewController.swift
//  musictasklast
//
//  Created by Abdullah Bin Essa on 3/4/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let uiVisualEffect = UIVisualEffectView(effect: UIBlurEffect(style: .light))
    let backgroundImageView = UIImageView()
    let songImageView = UIImageView()
    let subLabel = UILabel()
    let slider = UISlider()
    let beginLabel = UILabel()
    let recordLabel = UILabel()
    let endLabel = UILabel()
    let prevButton = UIButton()
    let playButton = UIButton()
    let nextButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupViews()
        setupUI()
        setupConstraints()
        
        
    }
    
    func setupViews(){
        view.addSubview(backgroundImageView)
        view.addSubview(uiVisualEffect)
        view.addSubview(songImageView)
        view.addSubview(recordLabel)
        view.addSubview(subLabel)
        view.addSubview(slider)
        view.addSubview(beginLabel)
        view.addSubview(endLabel)
        view.addSubview(prevButton)
        view.addSubview(playButton)
        view.addSubview(nextButton)
    }
    
    func setupUI(){
        backgroundImageView.image = UIImage(named: "sinatra")
        backgroundImageView.contentMode = .scaleToFill
        backgroundImageView.frame = view.bounds
        
        uiVisualEffect.frame = backgroundImageView.bounds
        
        songImageView.image = UIImage(named: "sinatra")
        songImageView.contentMode = .scaleToFill
        songImageView.layer.cornerRadius = 15
        songImageView.clipsToBounds = true
        
        recordLabel.text = "Fly Me To The Moon"
        recordLabel.font = .systemFont(ofSize: 24)
        
        subLabel.text = "Playing"
        subLabel.font = .systemFont(ofSize: 22)
        
        beginLabel.text = "0.00"
        endLabel.text = "-3:37"
        
        playButton.setImage(.init(systemName: "play.fill", withConfiguration: UIImage.SymbolConfiguration(font: .systemFont(ofSize: 35))), for: .normal)
        playButton.tintColor = .white
        playButton.layer.cornerRadius = 50/2
        
        prevButton.setImage(.init(systemName: "backward.fill", withConfiguration: UIImage.SymbolConfiguration(font: .systemFont(ofSize: 35))), for: .normal)
        prevButton.tintColor = .white
        prevButton.layer.cornerRadius = 50/2
        
        nextButton.setImage(.init(systemName: "forward.fill", withConfiguration: UIImage.SymbolConfiguration(font: .systemFont(ofSize: 35))), for: .normal)
        nextButton.tintColor = .white
        nextButton.layer.cornerRadius = 50/2
    }
    
    func setupConstraints(){
        songImageView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-50)
            make.width.equalToSuperview().multipliedBy(0.8)
            make.height.equalTo(songImageView.snp.width).multipliedBy(0.9)
        }
        
        
        
        recordLabel.snp.makeConstraints { make in
            make.top.equalTo(songImageView.snp.bottom).offset(5)
            make.centerX.equalTo(songImageView.snp.centerX)
        }
        
        
        
        subLabel.snp.makeConstraints { make in
            make.top.equalTo(recordLabel.snp.bottom).offset(8)
            make.centerX.equalTo(songImageView.snp.centerX)
        }
        
        slider.snp.makeConstraints { make in
            make.top.equalTo(subLabel.snp.bottom).offset(20)
            make.centerX.equalTo(songImageView.snp.centerX)
            make.width.equalToSuperview().multipliedBy(0.9)
        }
        
        
        beginLabel.snp.makeConstraints { make in
            make.leading.equalTo(slider.snp.leading)
            make.top.equalTo(slider.snp.bottom).offset(5)
        }
        
        
        endLabel.snp.makeConstraints { make in
            make.trailing.equalTo(slider.snp.trailing)
            make.top.equalTo(slider.snp.bottom).offset(5)
        }
        
        
        
        playButton.snp.makeConstraints { make in
            make.top.equalTo(slider.snp.bottom).offset(30)
            make.centerX.equalToSuperview()
            make.width.height.equalTo(50)
        }
        
        
        
        prevButton.snp.makeConstraints { make in
            make.centerY.equalTo(playButton.snp.centerY)
            make.trailing.equalTo(playButton.snp.leading).offset(-35)
            make.height.width.equalTo(50)
        }
        
        
        
        nextButton.snp.makeConstraints { make in
            make.centerY.equalTo(playButton.snp.centerY)
            make.leading.equalTo(playButton.snp.trailing).offset(35)
            make.height.width.equalTo(50)
        }
    }
}



