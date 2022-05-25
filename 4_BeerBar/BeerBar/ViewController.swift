//
//  ViewController.swift
//  BeerBar
//
//  Created by admin on 19.05.22.
//

import UIKit

class ViewController: UIViewController {
//присвоение перменных компонентам Формы класса
    @IBOutlet weak var beerType1: UILabel!
    @IBOutlet weak var beerImg1: UIImageView!
    @IBOutlet weak var beerName1: UILabel!
    @IBOutlet weak var beerDensity1: UILabel!
    @IBOutlet weak var beerDensityValue1: UILabel!
    @IBOutlet weak var beerAlcogol1: UILabel!
    @IBOutlet weak var beerAlcogolValue1: UILabel!
    @IBOutlet weak var beerVolume1: UILabel!
    @IBOutlet weak var beerVolumeValue1: UILabel!
    @IBOutlet weak var beerCountry1: UILabel!
    @IBOutlet weak var beerCountryValue1: UILabel!
    @IBOutlet weak var beerOst1: UILabel!
    @IBOutlet weak var beerOstValue1: UILabel!
    @IBOutlet weak var beerCost1: UILabel!
    @IBOutlet weak var beerCostValue1: UILabel!
    @IBOutlet weak var beerPay1: UILabel!
    @IBOutlet weak var beerPayValue1: UILabel!
    @IBOutlet weak var beerPayStep1: UIStepper!

    @IBOutlet weak var beerType2: UILabel!
    @IBOutlet weak var beerImg2: UIImageView!
    @IBOutlet weak var beerName2: UILabel!
    @IBOutlet weak var beerDensity2: UILabel!
    @IBOutlet weak var beerDensityValue2: UILabel!
    @IBOutlet weak var beerAlcogol2: UILabel!
    @IBOutlet weak var beerAlcogolValue2: UILabel!
    @IBOutlet weak var beerVolume2: UILabel!
    @IBOutlet weak var beerVolumeValue2: UILabel!
    @IBOutlet weak var beerCountry2: UILabel!
    @IBOutlet weak var beerCountryValue2: UILabel!
    @IBOutlet weak var beerOst2: UILabel!
    @IBOutlet weak var beerOstValue2: UILabel!
    @IBOutlet weak var beerCost2: UILabel!
    @IBOutlet weak var beerCostValue2: UILabel!
    @IBOutlet weak var beerPay2: UILabel!
    @IBOutlet weak var beerPayValue2: UILabel!
    @IBOutlet weak var beerPayStep2: UIStepper!

    @IBOutlet weak var beerType3: UILabel!
    @IBOutlet weak var beerImg3: UIImageView!
    @IBOutlet weak var beerName3: UILabel!
    @IBOutlet weak var beerDensity3: UILabel!
    @IBOutlet weak var beerDensityValue3: UILabel!
    @IBOutlet weak var beerAlcogol3: UILabel!
    @IBOutlet weak var beerAlcogolValue3: UILabel!
    @IBOutlet weak var beerVolume3: UILabel!
    @IBOutlet weak var beerVolumeValue3: UILabel!
    @IBOutlet weak var beerCountry3: UILabel!
    @IBOutlet weak var beerCountryValue3: UILabel!
    @IBOutlet weak var beerOst3: UILabel!
    @IBOutlet weak var beerOstValue3: UILabel!
    @IBOutlet weak var beerCost3: UILabel!
    @IBOutlet weak var beerCostValue3: UILabel!
    @IBOutlet weak var beerPay3: UILabel!
    @IBOutlet weak var beerPayValue3: UILabel!
    @IBOutlet weak var beerPayStep3: UIStepper!
  
    @IBOutlet weak var pay: UILabel!
    @IBOutlet weak var payValue: UILabel!
    @IBOutlet weak var payBut: UIButton!
 
    @IBOutlet weak var mngr: UIButton!
  
    @IBOutlet weak var profit: UILabel!
    @IBOutlet weak var profitValue: UILabel!
  
    @IBOutlet weak var dayEnd: UIButton!
 //буферные переменные
    var stp1: Double = 0.0
    var stp2: Double = 0.0
    var stp3: Double = 0.0
//формирование экземпляров классов
    var beer1 = Beer(beerType: "Пшеничный эль", beerName: "Beloff", beerDensity: "12.8", beerAlcogol: "4.7", beerVolume: "0.5", beerCountry: "Россия", beerOst: "20", beerCost: "1.5")
    var beer2 = Beer(beerType: "Портер", beerName: "Pardubicky Porter", beerDensity: "19", beerAlcogol: "8", beerVolume: "0.5", beerCountry: "Чехия", beerOst: "10", beerCost: "5")
    var beer3 = Beer(beerType: "Стаут", beerName: "Iron Woods", beerDensity: "11", beerAlcogol: "4.8", beerVolume: "0.5", beerCountry: "Россия", beerOst: "15", beerCost: "2")

    override func viewDidLoad() {
        super.viewDidLoad()
//заполнение графического интерфейса
        beerType1.text = beer1.beerType
        beerType2.text = beer2.beerType
        beerType3.text = beer3.beerType
        beerName1.text = beer1.beerName
        beerName2.text = beer2.beerName
        beerName3.text = beer3.beerName
        beerDensity1.text = "Плотность:"
        beerDensity2.text = "Плотность:"
        beerDensity3.text = "Плотность:"
        beerDensityValue1.text = beer1.beerDensity
        beerDensityValue2.text = beer2.beerDensity
        beerDensityValue3.text = beer3.beerDensity
        beerAlcogol1.text = "Крепость:"
        beerAlcogol2.text = "Крепость:"
        beerAlcogol3.text = "Крепость:"
        beerAlcogolValue1.text = beer1.beerAlcogol
        beerAlcogolValue2.text = beer2.beerAlcogol
        beerAlcogolValue3.text = beer3.beerAlcogol
        beerVolume1.text = "Объём:"
        beerVolume2.text = "Объём:"
        beerVolume3.text = "Объём:"
        beerVolumeValue1.text = beer1.beerVolume
        beerVolumeValue2.text = beer2.beerVolume
        beerVolumeValue3.text = beer3.beerVolume
        beerCountry1.text = "Страна:"
        beerCountry2.text = "Страна:"
        beerCountry3.text = "Страна:"
        beerCountryValue1.text = beer1.beerCountry
        beerCountryValue2.text = beer2.beerCountry
        beerCountryValue3.text = beer3.beerCountry
        beerOst1.text = "Остаток:"
        beerOst2.text = "Остаток:"
        beerOst3.text = "Остаток:"
        beerOstValue1.text = beer1.beerOst
        beerOstValue2.text = beer2.beerOst
        beerOstValue3.text = beer3.beerOst
        beerCost1.text = "Цена:"
        beerCost2.text = "Цена:"
        beerCost3.text = "Цена:"
        beerCostValue1.text = beer1.beerCost
        beerCostValue2.text = beer2.beerCost
        beerCostValue3.text = beer3.beerCost
        beerPay1.text = "В корзине:"
        beerPay2.text = "В корзине:"
        beerPay3.text = "В корзине:"
        beerPayValue1.text = "0"
        beerPayValue2.text = "0"
        beerPayValue3.text = "0"
        pay.text = "Итого:"
        payValue.text = "0"
        payBut.setTitle("Купить", for: .normal)
        mngr.setTitle("Менеджер", for: .normal)
        profit.text = "Выручка за день:"
        profitValue.text = "0"
        dayEnd.setTitle("Конец дня", for: .normal)
        

    }
   //функция кнопки купить
    @IBAction func payButAction(_ sender: Any) {
        profitValue.text = "\(Double(profitValue.text!)! +  Double(payValue.text!)!)"
        beerOstValue1.text = "\(Int(Double(beerOstValue1.text!)! -  beerPayStep1.value))"
        beerOstValue2.text = "\(Int(Double(beerOstValue2.text!)! -  beerPayStep2.value))"
        beerOstValue3.text = "\(Int(Double(beerOstValue3.text!)! -  beerPayStep3.value))"
        beerPayValue1.text = "0"
        beerPayValue2.text = "0"
        beerPayValue3.text = "0"
        beerPayStep1.value = 0
        beerPayStep2.value = 0
        beerPayStep3.value = 0
        payValue.text = "0"
        stp1 = 0
        stp2 = 0
        stp3 = 0
    }
    //подсчет 1 наименования пива
    @IBAction func payStep1Action(_ sender: Any) {
        beerPayStep1.maximumValue = Double(beerOstValue1.text!)!
        beerPayValue1.text = "\(Int(beerPayStep1.value))"
        if beerPayStep1.value > stp1
        {
            payValue.text = "\(Double(payValue.text!)! + Double(beerCostValue1.text!)!)"
        }
        else if beerPayStep1.value < stp1
        {
            payValue.text = "\(Double(payValue.text!)! - Double(beerCostValue1.text!)!)"
        }
        stp1 = beerPayStep1.value
    }
    //подсчет 2 наименования пива
    @IBAction func payStep2Action(_ sender: Any) {
        beerPayStep2.maximumValue = Double(beerOstValue2.text!)!
        beerPayValue2.text = "\(Int(beerPayStep2.value))"
        if beerPayStep2.value > stp2
        {
            payValue.text = "\(Double(payValue.text!)! + Double(beerCostValue2.text!)!)"
        }
        else if beerPayStep2.value < stp2
        {
            payValue.text = "\(Double(payValue.text!)! - Double(beerCostValue2.text!)!)"
        }
        stp2 = beerPayStep2.value
    }
    //подсчет 3 наименования пива
    @IBAction func payStep3Action(_ sender: Any) {
        beerPayStep3.maximumValue = Double(beerOstValue3.text!)!
        beerPayValue3.text = "\(Int(beerPayStep3.value))"
        if beerPayStep3.value > stp3
        {
            payValue.text = "\(Double(payValue.text!)! + Double(beerCostValue3.text!)!)"
        }
        else if beerPayStep3.value < stp3
        {
            payValue.text = "\(Double(payValue.text!)! - Double(beerCostValue3.text!)!)"
        }
        stp3 = beerPayStep3.value
    }
    //функция смены режимов покупатель/менеджер
    @IBAction func mngrAction(_ sender: Any) {
        if mngr.currentTitle == "Менеджер"{
            profit.isHidden = false
            profitValue.isHidden = false
            dayEnd.isHidden = false
            mngr.setTitle("Покупатель", for: .normal)}
        else if mngr.currentTitle == "Покупатель"{
            profit.isHidden = true
            profitValue.isHidden = true
            dayEnd.isHidden = true
            mngr.setTitle("Менеджер", for: .normal)}
    }
    //функция конец дня
    @IBAction func dayEndAction(_ sender: Any) {
        payValue.text = "0"
        profitValue.text = "0"
    }
}

