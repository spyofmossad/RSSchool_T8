//
//  SwiftViewController.swift
//  RSSchool_T8
//
//  Created by Dzmitry Navitski on 7/17/21.
//

import UIKit

class SwiftTimerViewController: ModalViewController {
    
    @objc public var timerCallback: ((Float) -> ())?
    
    lazy var timerSlider: UISlider = {
        let timer = UISlider()
        timer.minimumValue = 1.0
        timer.maximumValue = 5.0
        timer.tintColor = UIColor.lightGreenSea
        timer.value = 1.0
        return timer;
    }()
    
    lazy var min: UILabel = {
        let min = UILabel()
        min.text = "1";
        min.font = UIFont.montRegular(withSize: 18)
        return min;
    }()
    
    lazy var max: UILabel = {
        let max = UILabel()
        max.text = "5";
        max.font = UIFont.montRegular(withSize: 18)
        return max;
    }()
    
    lazy var current: UILabel = {
        let current = UILabel()
        current.font = UIFont.montRegular(withSize: 18)
        current.text = String(format: "%.2f s", timerSlider.value)
        current.translatesAutoresizingMaskIntoConstraints = false;
        self.view.addSubview(current)
        return current;
    }()
    
    @objc init(drawTime: Float) {
        super.init(nibName: nil, bundle: nil)
        timerSlider.value = drawTime;
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubViews()
        timerSlider.addTarget(self, action: #selector(sliderOnChange), for: .valueChanged)
    }
    
    func setupSubViews() {
        let timerStack = UIStackView(arrangedSubviews: [min, timerSlider, max]);
        timerStack.axis = .horizontal;
        timerStack.distribution = .fill;
        timerStack.spacing = 41;
        self.view.addSubview(timerStack);
        
        timerStack.translatesAutoresizingMaskIntoConstraints = false;
        NSLayoutConstraint.activate([
            timerStack.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 92),
            timerStack.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 26),
            timerStack.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -26),
            timerStack.heightAnchor.constraint(equalToConstant: 44)
        ]);
        
        NSLayoutConstraint.activate([
            current.topAnchor.constraint(equalTo: timerStack.bottomAnchor, constant: 25),
            current.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        ]);
    }
    
    @objc func sliderOnChange() {
        current.text = String(format: "%.2f s", timerSlider.value)
        timerCallback?(timerSlider.value);
    }
}
