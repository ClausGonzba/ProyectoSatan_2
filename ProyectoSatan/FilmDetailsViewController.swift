//
//  FilmDetailsViewController.swift
//  ProyectoSatan
//
//  Created by Alumno on 25/11/24.
//

import UIKit
import AVKit



class FilmDetailsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    var videitos = ["Arcane", "FANTASTICMR.FOX", "HowToTrainYourDragon2", "LEGOBatman", "TheGrandBudapestHotel", "TheManFromU.N.C.L.E", "TLotriTheTwoTowers", "TurningRed", "WONKA", "TheBatman"]

    
    @IBAction func ObraMaestra(_ sender: UIButton) {
        let url = Bundle.main.url(forResource: videitos[0], withExtension: "mp4")
        
        let avPlayer = AVPlayer(url: url!)
        
        let avController = AVPlayerViewController()
        
        avController.player = avPlayer
        
        present(avController, animated: true){
            
            avPlayer.play()
        }
    }//Final de ObraMaestra
    
    
    @IBAction func ReproducirMrFox(_ sender: Any) {
        let url = Bundle.main.url(forResource: videitos[1], withExtension: "mp4")
        
        let avPlayer = AVPlayer(url: url!)
        
        let avController = AVPlayerViewController()
        
        avController.player = avPlayer
        
        present(avController, animated: true){
            
            avPlayer.play()
        }
    }
    
    
    @IBAction func HowToTrainYourDragon(_ sender: Any) {
        let url = Bundle.main.url(forResource: videitos[2], withExtension: "mp4")
        
        let avPlayer = AVPlayer(url: url!)
        
        let avController = AVPlayerViewController()
        
        avController.player = avPlayer
        
        present(avController, animated: true){
            
            avPlayer.play()
        }
    }
    
    
    @IBAction func LEGOBatman(_ sender: Any) {
        let url = Bundle.main.url(forResource: videitos[3], withExtension: "mp4")
        
        let avPlayer = AVPlayer(url: url!)
        
        let avController = AVPlayerViewController()
        
        avController.player = avPlayer
        
        present(avController, animated: true){
            
            avPlayer.play()
        }
    }
    
    
    @IBAction func HotelBudapest(_ sender: Any) {
        let url = Bundle.main.url(forResource: videitos[4], withExtension: "mp4")
        
        let avPlayer = AVPlayer(url: url!)
        
        let avController = AVPlayerViewController()
        
        avController.player = avPlayer
        
        present(avController, animated: true){
            
            avPlayer.play()
        }
    }
    
    
    @IBAction func ReproducirUNCLE(_ sender: Any) {
        let url = Bundle.main.url(forResource: videitos[5], withExtension: "mp4")
        
        let avPlayer = AVPlayer(url: url!)
        
        let avController = AVPlayerViewController()
        
        avController.player = avPlayer
        
        present(avController, animated: true){
            
            avPlayer.play()
        }
    }
    
    
    @IBAction func ReproducirLOTR(_ sender: Any) {
        let url = Bundle.main.url(forResource: videitos[6], withExtension: "mp4")
        
        let avPlayer = AVPlayer(url: url!)
        
        let avController = AVPlayerViewController()
        
        avController.player = avPlayer
        
        present(avController, animated: true){
            
            avPlayer.play()
        }
    }
    
    
    @IBAction func ReproducirTurningRed(_ sender: Any) {
        let url = Bundle.main.url(forResource: videitos[7], withExtension: "mp4")
        
        let avPlayer = AVPlayer(url: url!)
        
        let avController = AVPlayerViewController()
        
        avController.player = avPlayer
        
        present(avController, animated: true){
            
            avPlayer.play()
        }
    }
    
    
    @IBAction func reproducirWonka(_ sender: Any) {
        let url = Bundle.main.url(forResource: videitos[8], withExtension: "mp4")
        
        let avPlayer = AVPlayer(url: url!)
        
        let avController = AVPlayerViewController()
        
        avController.player = avPlayer
        
        present(avController, animated: true){
            
            avPlayer.play()
        }
    }
    
    
    @IBAction func reproducirTheBatman(_ sender: Any) {
        let url = Bundle.main.url(forResource: videitos[9], withExtension: "mp4")
        
        let avPlayer = AVPlayer(url: url!)
        
        let avController = AVPlayerViewController()
        
        avController.player = avPlayer
        
        present(avController, animated: true){
            
            avPlayer.play()
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
