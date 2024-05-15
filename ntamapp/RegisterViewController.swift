//
//  RegisterViewController.swift
//  ntamapp
//
//  Created by RAHILA NISHAN on 15/05/2024.
//

import UIKit

class RegisterViewController: UIViewController {

    // MARK: - UI Elements

    private var nameTextField: UITextField!
    private var emailTextField: UITextField!
    private var mobileTextField: UITextField!
    private var passwordTextField: UITextField!
    private var specialtyTextField: UITextField!
    private var countryTextField: UITextField!
    private var instagramTextField: UITextField!
    private var tiktokTextField: UITextField!
    private var registerButton: UIButton!

    // MARK: - View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    // MARK: - UI Setup

    private func setupUI() {
        view.backgroundColor = .white

        nameTextField = createTextField(placeholder: "Name")
        emailTextField = createTextField(placeholder: "Email *")
        mobileTextField = createTextField(placeholder: "Mobile *")
        passwordTextField = createTextField(placeholder: "Password *", isSecure: true)
        specialtyTextField = createTextField(placeholder: "Specialty")
        countryTextField = createTextField(placeholder: "Country")
        instagramTextField = createTextField(placeholder: "Instagram Link")
        tiktokTextField = createTextField(placeholder: "TikTok Link")

        registerButton = createButton(title: "Register")
        registerButton.addTarget(self, action: #selector(registerButtonTapped), for: .touchUpInside)

        let textFields: [UITextField] = [nameTextField, emailTextField, mobileTextField, passwordTextField, specialtyTextField, countryTextField, instagramTextField, tiktokTextField]
        textFields.forEach { view.addSubview($0) }
        
        view.addSubview(registerButton)

        setupConstraints()
    }

    private func createTextField(placeholder: String, isSecure: Bool = false) -> UITextField {
        let textField = UITextField()
        textField.placeholder = placeholder
        textField.isSecureTextEntry = isSecure
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }

    private func createButton(title: String) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(red: 0.3, green: 0.5, blue: 1.0, alpha: 1.0)
        button.layer.cornerRadius = 8
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }

    // MARK: - Auto Layout Constraints

    private func setupConstraints() {
        let padding: CGFloat = 20.0
        let textFieldHeight: CGFloat = 40.0
        let buttonHeight: CGFloat = 50.0

        NSLayoutConstraint.activate([
            nameTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: padding),
            nameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            nameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            nameTextField.heightAnchor.constraint(equalToConstant: textFieldHeight),

            emailTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: padding),
            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            emailTextField.heightAnchor.constraint(equalToConstant: textFieldHeight),

            mobileTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: padding),
            mobileTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            mobileTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            mobileTextField.heightAnchor.constraint(equalToConstant: textFieldHeight),

            passwordTextField.topAnchor.constraint(equalTo: mobileTextField.bottomAnchor, constant: padding),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            passwordTextField.heightAnchor.constraint(equalToConstant: textFieldHeight),

            specialtyTextField.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: padding),
            specialtyTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            specialtyTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            specialtyTextField.heightAnchor.constraint(equalToConstant: textFieldHeight),

            countryTextField.topAnchor.constraint(equalTo: specialtyTextField.bottomAnchor, constant: padding),
            countryTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            countryTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            countryTextField.heightAnchor.constraint(equalToConstant: textFieldHeight),

            instagramTextField.topAnchor.constraint(equalTo: countryTextField.bottomAnchor, constant: padding),
            instagramTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            instagramTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            instagramTextField.heightAnchor.constraint(equalToConstant: textFieldHeight),

            tiktokTextField.topAnchor.constraint(equalTo: instagramTextField.bottomAnchor, constant: padding),
            tiktokTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            tiktokTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            tiktokTextField.heightAnchor.constraint(equalToConstant: textFieldHeight),

            registerButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            registerButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            registerButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -padding),
            registerButton.heightAnchor.constraint(equalToConstant: buttonHeight)
        ])
    }

    // MARK: - Button Action

    @objc private func registerButtonTapped() {
        guard let name = nameTextField.text,
              let email = emailTextField.text,
              let mobile = mobileTextField.text,
              let password = passwordTextField.text,
              let specialty = specialtyTextField.text,
              let country = countryTextField.text,
              let instagram = instagramTextField.text,
              let tiktok = tiktokTextField.text else {
            showAlert(message: "Please fill in all required fields.")
            return
        }

        let parameters: [String: Any] = [
            "UserName": name,
            "Email": email,
            "Mobile": mobile,
            "Password": password,
            "Speciality": specialty,
            "Country": country,
            "InstagramLink": instagram,
            "TikTokLink": tiktok,
            "Userconsent": true
        ]

        registerUser(with: parameters)
    }

    private func registerUser(with parameters: [String: Any]) {
        guard let url = URL(string: "https://ldb-me.ve-live.com/api/AdminApiProvider/RegisterUser") else {
            showAlert(message: "Failed to initiate registration. Please try again later.")
            return
        }

        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")

        do {
            let jsonData = try JSONSerialization.data(withJSONObject: parameters, options: [])
            request.httpBody = jsonData

            URLSession.shared.dataTask(with: request) { (data, response, error) in
                if let error = error {
                    self.showAlert(message: "Error: \(error.localizedDescription)")
                    return
                }

                guard let httpResponse = response as? HTTPURLResponse else {
                    self.showAlert(message: "Invalid HTTP response")
                    return
                }

                if (200..<300).contains(httpResponse.statusCode) {
                    if let data = data {
                        do {
                            let jsonResponse = try JSONSerialization.jsonObject(with: data, options: [])
                            self.showAlert(message: "Registration successful")
                           
                            print("API Response: \(jsonResponse)")
                            // Handle response data as needed
                        } catch {
                            self.showAlert(message: "Error parsing JSON: \(error.localizedDescription)")
                        }
                    } else {
                        self.showAlert(message: "No data received from API")
                    }
                } else {
                    self.showAlert(message: "HTTP Status Code: \(httpResponse.statusCode)")
                    // Handle other HTTP status codes (e.g., show error message)
                }
            }.resume()
        } catch {
            self.showAlert(message: "Error serializing JSON: \(error.localizedDescription)")
        }
    }

    // MARK: - Helper Methods

    private func showAlert(message: String) {
        DispatchQueue.main.async {
            let alert = UIAlertController(title: "Registration", message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }

}
