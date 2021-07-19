//
//  SwiftDrawingsViewController.swift
//  RSSchool_T8
//
//  Created by Dzmitry Navitski on 7/17/21.
//

import UIKit

@objc class SwiftDrawingsViewController: UIViewController {
    
    private var currentDrawing: DrawingType
    @objc public var drawingCallback: ((DrawingType) ->())?
    
    lazy var head: DrawingButton = {
        let button = DrawingButton(title: "Head", andSize: CGSize(width: 200, height: 40))
        button.drawing = .head
        return button
    }()
    
    lazy var planet: DrawingButton = {
        let button = DrawingButton(title: "Planet", andSize: CGSize(width: 200, height: 40))
        button.drawing = .planet
        return button
    }()
    
    lazy var tree: DrawingButton = {
        let button = DrawingButton(title: "Tree", andSize: CGSize(width: 200, height: 40))
        button.drawing = .tree
        return button
    }()
    
    lazy var landscape: DrawingButton = {
        let button = DrawingButton(title: "Landscape", andSize: CGSize(width: 200, height: 40))
        button.drawing = .landscape
        return button
    }()
    
    @objc public init(currentDrawing: DrawingType) {
        self.currentDrawing = currentDrawing
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareSubviews()
        prepareTargets()
        [planet, head, tree, landscape].first(where: {$0.drawing == currentDrawing})?.isSelected = true;
    }
    
    func prepareSubviews() {
        self.navigationItem.title = "Drawings"
        self.view.backgroundColor = UIColor.white
        
        let buttonsStack = UIStackView(arrangedSubviews: [planet, head, tree, landscape])
        self.view.addSubview(buttonsStack)
        buttonsStack.axis = .vertical
        buttonsStack.distribution = .fillEqually
        buttonsStack.spacing = 15
        buttonsStack.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            buttonsStack.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 112),
            buttonsStack.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 88),
            buttonsStack.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -88),
            buttonsStack.heightAnchor.constraint(equalToConstant: 205)
        ]);
    }
    
    func prepareTargets() {
        [planet, head, tree, landscape].forEach {
            $0.addTarget(self, action: #selector(buttonOnTap(_:)), for: .touchUpInside);
        }
    }
    
    @objc func buttonOnTap(_ sender: DrawingButton) {
        [planet, head, tree, landscape].forEach({$0.isSelected = false});
        sender.isSelected = true
        drawingCallback?(sender.drawing)
        self.navigationController?.popToRootViewController(animated: true)
    }
}
