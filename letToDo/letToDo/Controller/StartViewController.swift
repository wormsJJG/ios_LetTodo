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
    private let hiLabel: UILabel = {
        let label = UILabel()
        label.text = "안녕하세요 :)"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 34)
        label.textColor = .black
        return label
    }()
    private let IntroduceLabel: UILabel = {
        let label = UILabel()
        label.text = "LetToDO입니다."
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 34)
        label.textColor = .black
        return label
    }()
    private let idTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "아이디를 입력해주세요."
        textField.borderStyle = .roundedRect
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.cornerRadius = 10
        return textField
    }()
    private let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "비밀번호를 입력해주세요."
        textField.borderStyle = .roundedRect
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.cornerRadius = 10
        return textField
    }()
    private let goLoginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("로그인 하기", for: .normal)
        button.layer.cornerRadius = 10
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .black
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.layer.borderWidth = 1
        return button
    }()
    private let goRegisterButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("아직 회원이 아니십니까?", for: .normal)
        button.layer.cornerRadius = 10
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .black
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.layer.borderWidth = 1
        button.addTarget(self, action: #selector(didTapRegisterButton), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewControllerSetting()
    }
    
    fileprivate func viewControllerSetting() {
        view.backgroundColor = .white
        view.addSubview(hiLabel)
        view.addSubview(goLoginButton)
        view.addSubview(goRegisterButton)
        view.addSubview(IntroduceLabel)
        view.addSubview(idTextField)
        view.addSubview(passwordTextField)
        layout()
    }
    //MARK: - Layout
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
    @objc private func didTapRegisterButton() {
        let registerVC = RegisterViewController()
        self.present(registerVC, animated: true)
    }
}


