//
//  DesempenhoViewController.swift
//  IQuiz
//
//  Created by Walace Felix on 29/07/25.
//

import UIKit

class DesempenhoViewController: UIViewController {
    
    var pontuaca: Int?

    @IBOutlet weak var resultadoLabel: UILabel!
    
    
    @IBOutlet weak var percentualLabel: UILabel!
    
    
    @IBOutlet weak var botaoReiniciarQuiz: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        configurarLayout()
        configurarDesempenho()
    }
    
    func configurarLayout(){
        navigationItem.hidesBackButton = true
        botaoReiniciarQuiz.layer.cornerRadius = 16
    }
    
    func configurarDesempenho() {
        guard let pontuaca = pontuaca else { return }
        resultadoLabel.text = "Você acertou \(pontuaca) de \(questoes.count) questões."
        let percentual = Double(pontuaca) / Double(questoes.count) * 100
        percentualLabel.text = "Percentual final: \(percentual)%"
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
