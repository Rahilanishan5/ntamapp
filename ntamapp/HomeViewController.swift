//
//  HomeViewController.swift
//  ntamapp
//
//  Created by RAHILA NISHAN on 15/05/2024.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {

    // Array of feature names corresponding to image names
    let featureNames = [
        "agenda", "badge", "cme", "home", "images",
         "more", "questions", "snapchat", "social",
        "speakers", "survey", "venue", "videos", "voting"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Set background color to white to avoid black screen
        view.backgroundColor = .white

        // Set up UI elements
        setupUI()
    }

    func setupUI() {
        // Calculate dimensions and spacing for the grid layout
        let screenWidth = UIScreen.main.bounds.width
        let padding: CGFloat = 20.0
        let columnCount: CGFloat = 3
        let itemSize = (screenWidth - (padding * (columnCount + 1))) / columnCount

        // Create a grid of feature buttons
        for (index, featureName) in featureNames.enumerated() {
            let row = index / Int(columnCount)
            let column = index % Int(columnCount)

            let button = UIButton(type: .custom)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.tag = index
            button.addTarget(self, action: #selector(featureButtonTapped(_:)), for: .touchUpInside)

            // Set background color (for debugging visibility)
            button.backgroundColor = .lightGray

            // Set background image from asset catalog
            if let featureImage = UIImage(named: featureName) {
                button.setImage(featureImage, for: .normal)
                button.imageView?.contentMode = .scaleAspectFit
                button.imageView?.clipsToBounds = true
                print("Image for \(featureName) found and set")
            } else {
                print("Image for \(featureName) not found")
            }

            view.addSubview(button)

            // Add constraints for button position and size
            NSLayoutConstraint.activate([
                button.widthAnchor.constraint(equalToConstant: itemSize),
                button.heightAnchor.constraint(equalToConstant: itemSize),
                button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding + CGFloat(column) * (itemSize + padding)),
                button.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: padding + CGFloat(row) * (itemSize + padding))
            ])
        }
    }

    @objc func featureButtonTapped(_ sender: UIButton) {
        let featureName = featureNames[sender.tag]
        print("Selected feature: \(featureName)")

        // Navigate to another view controller (e.g., DetailViewController)
        let detailViewController = DetailViewController()
        detailViewController.title = featureName.capitalized
        navigationController?.pushViewController(detailViewController, animated: true)
    }
}
