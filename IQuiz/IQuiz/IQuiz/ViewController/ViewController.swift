//
//  ViewController.swift
//  IQuiz
//
//  Created by Walace Felix on 26/07/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var botaoIniciarQuiz: UIButton!
    
    @IBAction func botaoPressionado(_ sender: Any) {
        print("O botao foi pressionado")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        configuraLayout()
    }

    func configuraLayout() {
        navigationItem.hidesBackButton = true
        botaoIniciarQuiz.layer.cornerRadius = 16
    }
    
}

