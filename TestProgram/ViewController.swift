//
//  ViewController.swift
//  TestProgram
//
//  Created by ธนัท แสงเพิ่ม on 27/12/2565 BE.
//

import UIKit
import SwiftUI
import TinyConstraints

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        
        if #available(iOS 13.0, *) {
            var image = UIImage(named: "mask")
            let imageView = UIImageView(image: image!)
            view.addSubview(imageView)
            imageView.center(in: view)
            imageView.size(.init(width: 200, height: 200))
            
            let button = UIButton()
            view.addSubview(button)
            button.backgroundColor = .red
            button.center(in: view)
            button.size(.init(width: 300, height: 60))
        }
    }
}

struct PreviewViewController_Previews: PreviewProvider {
    @available(iOS 13.0.0, *)
    static var previews: some View {
        ViewControllerPreview {
            ViewController()
        }
    }
}
