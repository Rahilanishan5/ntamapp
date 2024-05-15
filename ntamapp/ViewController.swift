//
//  ViewController.swift
//  ntamapp
//
//  Created by RAHILA NISHAN on 15/05/2024.
//


import UIKit

class ViewController: UIViewController {
    var titleLabel: UILabel!
    var subtitleLabel: UILabel!
    var emailTextField: UITextField!
    var passwordTextField: UITextField!
    var loginButton: UIButton!
    var forgotPasswordButton: UIButton!
    var createAccountButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        setupConstraints()
    }
    
    func setupUI() {
        // Create and configure UI elements
        titleLabel = UILabel()
        titleLabel.text = "LDB ME"
        titleLabel.textColor = .black
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont.boldSystemFont(ofSize: 24)
        view.addSubview(titleLabel)
        
        subtitleLabel = UILabel()
        subtitleLabel.text = "LOGIN"
        subtitleLabel.textColor = .black
        subtitleLabel.textAlignment = .center
        subtitleLabel.font = UIFont.systemFont(ofSize: 18)
        view.addSubview(subtitleLabel)
        
        emailTextField = UITextField()
        emailTextField.placeholder = "Enter a valid email"
        emailTextField.borderStyle = .roundedRect
        view.addSubview(emailTextField)
        
        passwordTextField = UITextField()
        passwordTextField.placeholder = "Enter a password"
        passwordTextField.isSecureTextEntry = true
        passwordTextField.borderStyle = .roundedRect
        view.addSubview(passwordTextField)
        
        loginButton = UIButton(type: .system)
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.backgroundColor = UIColor(red: 0.3, green: 0.5, blue: 1.0, alpha: 1.0)
        loginButton.layer.cornerRadius = 8
        loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        view.addSubview(loginButton)
        
        forgotPasswordButton = UIButton(type: .system)
        forgotPasswordButton.setTitle("Forget Password?", for: .normal)
        forgotPasswordButton.setTitleColor(.gray, for: .normal)
        view.addSubview(forgotPasswordButton)
        
        createAccountButton = UIButton(type: .system)
        createAccountButton.setTitle("Or Create an Account", for: .normal)
        createAccountButton.setTitleColor(.gray, for: .normal)
        createAccountButton.addTarget(self, action: #selector(createAccountButtonTapped), for: .touchUpInside)
        view.addSubview(createAccountButton)
    }
    
    func setupConstraints() {
        
            // Set up constraints
            titleLabel.translatesAutoresizingMaskIntoConstraints = false
            subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
            emailTextField.translatesAutoresizingMaskIntoConstraints = false
            passwordTextField.translatesAutoresizingMaskIntoConstraints = false
            loginButton.translatesAutoresizingMaskIntoConstraints = false
            forgotPasswordButton.translatesAutoresizingMaskIntoConstraints = false
            createAccountButton.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
                // Title Label
                titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
                
                // Subtitle Label
                subtitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
                
                // Email TextField
                emailTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                emailTextField.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: 20),
                emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
                emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
                emailTextField.heightAnchor.constraint(equalToConstant: 40),
                
                // Password TextField
                passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
                passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
                passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
                passwordTextField.heightAnchor.constraint(equalToConstant: 40),
                
                // Login Button
                loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
                loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
                loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
                loginButton.heightAnchor.constraint(equalToConstant: 50),
                
                // Forgot Password Button
                forgotPasswordButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                forgotPasswordButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 20),
                
                // Create Account Button
                createAccountButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                createAccountButton.topAnchor.constraint(equalTo: forgotPasswordButton.bottomAnchor, constant: 10)
            ])
        
        
        
    }
    
    @objc func createAccountButtonTapped() {
        let registerViewController = RegisterViewController()
        navigationController?.pushViewController(registerViewController, animated: true)
    }
    
    @objc func loginButtonTapped() {
        // Implement your login logic here
        // For example, navigate to HomeViewController after successful login
        let homeViewController = HomeViewController()
        navigationController?.pushViewController(homeViewController, animated: true)
    }
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .white
    }
}

