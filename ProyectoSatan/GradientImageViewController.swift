//
//  GradientImageViewController.swift
//  ProyectoSatan
//
//  Created by Alumno on 20/11/24.
//

import UIKit

@IBOutlet weak var imageView: UIImageView!

class GradientImageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        applyGradientToImage()

        // Do any additional setup after loading the view.
    }
    
    private func applyGradientToImage() {
            let gradientLayer = CAGradientLayer()
            gradientLayer.frame = imageView.bounds
            gradientLayer.colors = [
                UIColor.black.withAlphaComponent(0.5).cgColor,
                UIColor.clear.cgColor
            ]
            gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
            gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)

            imageView.layer.addSublayer(gradientLayer)
        }
        
        override func viewDidLayoutSubviews() {
            super.viewDidLayoutSubviews()
            // Actualiza el marco del gradiente cuando la vista cambia de tamaño
            if let gradientLayer = imageView.layer.sublayers?.first as? CAGradientLayer {
                gradientLayer.frame = imageView.bounds
            }
        }
    
    
    /*
    // MARK: - Navigation
l
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
