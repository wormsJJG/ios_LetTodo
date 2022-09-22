//
//  RegisterViewController.swift
//  letToDo
//
//  Created by 정재근 on 2022/09/22.
//

import UIKit

class RegisterViewController: UIViewController {
    private let viewModel = RegisterViewModel()
    //MARK: - UI
    private let introduceLabel: UILabel = {
        let label = UILabel()
        label.text = "Let-To-Do 가입하기"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 34)
        label.textColor = .black
        return label
    }()
    private let idTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "아이디"
        textField.borderStyle = .roundedRect
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.cornerRadius = 10
        return textField
    }()
    private let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "비밀번호"
        textField.borderStyle = .roundedRect
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.cornerRadius = 10
        return textField
    }()
    private let nickNameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "사용할 별명"
        textField.borderStyle = .roundedRect
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.cornerRadius = 10
        return textField
    }()
    private let goRegisterButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("함께하기", for: .normal)
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
        view.backgroundColor = .white
        view.addSubview(introduceLabel)
        view.addSubview(idTextField)
        layout()
    }
    //MARK: - Layout
    fileprivate func layout() {
        introduceLabel.snp.makeConstraints { (label) in
            label.left.equalTo(self.view.safeAreaLayoutGuide.snp.left).offset(20)
            label.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(20)
        }
        idTextField.snp.makeConstraints { (textField) in
            textField.height.equalTo(50)
            textField.left.equalTo(self.view.safeAreaLayoutGuide.snp.left).offset(20)
            textField.right.equalTo(self.view.safeAreaLayoutGuide.snp.right).offset(-20)
            textField.top.equalTo(introduceLabel.snp.bottom).offset(50)
        }
//        passwordTextField.snp.makeConstraints { (textField) in
//            textField.height.equalTo(50)
//            textField.left.equalTo(self.view.safeAreaLayoutGuide.snp.left).offset(20)
//        }
//        nickNameTextField.snp.makeConstraints { (textField) in
//            textField.height.equalTo(50)
//            textField.left.equalTo(self.view.safeAreaLayoutGuide.snp.left).offset(20)
//        }
//
    }
}

//MARK: - 프리뷰
#if DEBUG
import SwiftUI
struct ViewControllerRepresentable: UIViewControllerRepresentable {
    
func updateUIViewController(_ uiView: UIViewController,context: Context) {
        // leave this empty
}
@available(iOS 13.0.0, *)
func makeUIViewController(context: Context) -> UIViewController{
    RegisterViewController()
    }
}
@available(iOS 13.0, *)
struct ViewControllerRepresentable_PreviewProvider: PreviewProvider {
    static var previews: some View {
        Group {
            ViewControllerRepresentable()
                .ignoresSafeArea()
                .previewDisplayName(/*@START_MENU_TOKEN@*/"Preview"/*@END_MENU_TOKEN@*/)
                .previewDevice(PreviewDevice(rawValue: "iPhone 13"))
        }
        
    }
} #endif
