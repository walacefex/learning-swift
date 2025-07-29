//
//  QuestaoViewController.swift
//  IQuiz
//
//  Created by Walace Felix on 28/07/25.
//

import UIKit

class QuestaoViewController: UIViewController {
    
    var pontuacao: Int = 0
    var numeroQuestao: Int = 0

    @IBOutlet var botoesRespostas: [UIButton]!
    @IBOutlet weak var tituloQuestaoLabel: UILabel!
    @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
        let usuarioAcertouAResposta: Bool = sender.tag == questoes[numeroQuestao].respostaCorreta
        
        if usuarioAcertouAResposta {
            pontuacao += 1
            sender.backgroundColor = UIColor.matching
        }else {sender.backgroundColor = UIColor.error}
        
        if numeroQuestao < questoes.count - 1 {
            numeroQuestao += 1
            Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(configurarQuestao), userInfo: nil, repeats: false)
            
        } else {
            navegaParaTelaDesempenho()
        }
      
    }
    
    func navegaParaTelaDesempenho(){
        performSegue(withIdentifier: "irParaTelaDesempenho", sender: nil)
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        configurarLayout()
        configurarQuestao()
    }
    
    func configurarLayout(){
        navigationItem.hidesBackButton = true
        tituloQuestaoLabel.numberOfLines = 0
        tituloQuestaoLabel.textAlignment = .center
        for botao in botoesRespostas {
            botao.layer.cornerRadius = 16
        }
    }
    
    @objc func configurarQuestao(){
        tituloQuestaoLabel.text = questoes[numeroQuestao].titulo
        for botao in botoesRespostas {
            let tituloBotao = questoes[numeroQuestao].respostas[botao.tag]
            botao.setTitle(tituloBotao, for: .normal)
            botao.backgroundColor = .primary
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let desepenhoVC = segue.destination as? DesempenhoViewController else { return }
        desepenhoVC.pontuaca = pontuacao
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
