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
    
    //MARK: - UI
    let hiLabel: UILabel = {
        let label = UILabel()
        label.text = "안녕하세요 :)"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 34)
        label.textColor = .black
        return label
    }()
    let IntroduceLabel: UILabel = {
        let label = UILabel()
        label.text = "LetToDO입니다."
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 34)
        label.textColor = .black
        return label
    }()
    let idTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "아이디를 입력해주세요."
        textField.borderStyle = .roundedRect
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.cornerRadius = 10
        return textField
    }()
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "비밀번호를 입력해주세요."
        textField.borderStyle = .roundedRect
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.cornerRadius = 10
        return textField
    }()
    let goLoginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("로그인 하기", for: .normal)
        button.layer.cornerRadius = 10
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .black
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.layer.borderWidth = 1
        return button
    }()
    let goRegisterButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("아직 회원이 아니십니까?", for: .normal)
        button.layer.cornerRadius = 10
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .black
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.layer.borderWidth = 1
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewControllerSetting()
    }
    
    fileprivate func viewControllerSetting() {
        view.addSubview(hiLabel)
        view.addSubview(goLoginButton)
        view.addSubview(goRegisterButton)
        view.addSubview(IntroduceLabel)
        view.addSubview(idTextField)
        view.addSubview(passwordTextField)
        layout()
    }
    //MARK: - layout
    fileprivate func layout() {
        hiLabel.snp.makeConstraints { (label) in
            label.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(80)
            label.left.equalTo(self.view.snp.left).offset(20)
        }
        IntroduceLabel.snp.makeConstraints { (label) in
            label.top.equalTo(hiLabel.snp.bottom).offset(20)
            label.left.equalTo(self.view.snp.left).offset(20)
        }
        idTextField.snp.makeConstraints { (textField) in
            textField.height.equalTo(50)
            textField.left.equalTo(self.view.safeAreaLayoutGuide.snp.left).offset(20)
            textField.top.equalTo(IntroduceLabel.snp.bottom).offset(110)
            textField.centerX.equalToSuperview()
        }
        passwordTextField.snp.makeConstraints { (textField) in
            textField.height.equalTo(50)
            textField.left.equalTo(self.view.safeAreaLayoutGuide.snp.left).offset(20)
            textField.top.equalTo(idTextField.snp.bottom).offset(10)
            textField.centerX.equalToSuperview()
        }
        goLoginButton.snp.makeConstraints { (button) in
            button.height.equalTo(50)
            button.bottom.equalTo(passwordTextField.snp.bottom).offset(70)
            button.left.equalTo(view.safeAreaLayoutGuide.snp.left).offset(20)
            button.centerX.equalToSuperview()
        }
        goRegisterButton.snp.makeConstraints { (button) in
            button.width.equalTo(goLoginButton.snp.width)
            button.height.equalTo(goLoginButton.snp.height)
            button.top.equalTo(goLoginButton.snp.bottom).offset(10)
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
                .previewDevice(PreviewDevice(rawValue: "iPhone 13 pro"))
        }
        
    }
} #endif
