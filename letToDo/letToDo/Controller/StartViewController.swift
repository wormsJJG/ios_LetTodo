//
//  StartViewController.swift
//  letToDo
//
//  Created by 정재근 on 2022/09/20.
//

import UIKit
import SnapKit

class StartViewController: UIViewController {
    private let viewModel = StartViewModel()
    
    let appNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Let-To-DO"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 40)
        label.textColor = .blue
        return label
    }()
    let goLoginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("로그인 하기", for: .normal)
        button.layer.cornerRadius = 21
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemGray5
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.layer.borderWidth = 3
        return button
    }()
    let goRegisterButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("아직 회원이 아니십니까?", for: .normal)
        button.layer.cornerRadius = 21
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemGray5
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.layer.borderWidth = 3
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        viewControllerSetting()
    }
    
    fileprivate func viewControllerSetting() {
        view.addSubview(appNameLabel)
        view.addSubview(goLoginButton)
        view.addSubview(goRegisterButton)
        layout()
    }
    
    fileprivate func layout() {
        appNameLabel.snp.makeConstraints { (label) in
            label.width.equalTo(200)
            label.height.equalTo(50)
            label.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(100)
            label.centerX.equalToSuperview()
        }
        goLoginButton.snp.makeConstraints { (button) in
            button.width.equalTo(300)
            button.height.equalTo(50)
            button.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom).offset(-180)
            button.centerX.equalToSuperview()
        }
        goRegisterButton.snp.makeConstraints { (button) in
            button.width.equalTo(goLoginButton.snp.width)
            button.height.equalTo(goLoginButton.snp.height)
            button.top.equalTo(goLoginButton.snp.bottom).offset(20)
            button.centerX.equalToSuperview()
        }
    }
}

#if DEBUG
import SwiftUI
struct ViewControllerRepresentable: UIViewControllerRepresentable {
    
func updateUIViewController(_ uiView: UIViewController,context: Context) {
        // leave this empty
}
@available(iOS 13.0.0, *)
func makeUIViewController(context: Context) -> UIViewController{
    StartViewController()
    }
}
@available(iOS 13.0, *)
struct ViewControllerRepresentable_PreviewProvider: PreviewProvider {
    static var previews: some View {
        Group {
            ViewControllerRepresentable()
                .ignoresSafeArea()
                .previewDisplayName(/*@START_MENU_TOKEN@*/"Preview"/*@END_MENU_TOKEN@*/)
                .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
        }
        
    }
} #endif
