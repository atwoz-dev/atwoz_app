import Flutter
import UIKit
import FirebaseCore

@main
@objc class AppDelegate: FlutterAppDelegate {
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        if #available(iOS 10.0, *) {
            UNUserNotificationCenter.current().delegate = self as? UNUserNotificationCenterDelegate
        }
        
        FirebaseApp.configure()
        GeneratedPluginRegistrant.register(with: self)
        
        // 화면 캡쳐 방지 설정
        window?.makeSecure()
        
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
}

extension UIWindow {
    private static let secureFieldTag = 1723
    
    // 로고 CALayer를 UITextField의 Layer 내부에 삽입
    func makeSecure() {
        DispatchQueue.main.async {
            // 이미 추가되어 있다면 중복 방지
            guard self.viewWithTag(UIWindow.secureFieldTag) == nil else { return }
            
            // UITextField를 윈도우 크기로 초기화합니다.
            let field = UITextField(frame: self.bounds)
            field.isSecureTextEntry = true
            field.tag = UIWindow.secureFieldTag
            
            self.addSubview(field)
            
            let colorLayer = CALayer()
            colorLayer.frame = field.bounds // UITextField 전체 크기에 맞춤
            colorLayer.backgroundColor = UIColor.white.cgColor
            
            // 레이어를 UITextField 레이어의 가장 아래에 삽입
            field.layer.insertSublayer(colorLayer, at: 0)
            
            // 캡처 방지 핵심: 레이어 강제 조작 코드 유지
            self.layer.superlayer?.addSublayer(field.layer)
            field.layer.sublayers?.last!.addSublayer(self.layer)
        }
    }
    
    // 쓸일이 없을 것 같지만 추가
    //    func makeUnsecure() {
    //        DispatchQueue.main.async {
    //            if let secureField = self.viewWithTag(UIWindow.secureFieldTag) as? UITextField {
    //                // 강제로 변경되었던 레이어 구조를 복원시도
    //                if let secureFieldSuperlayer = secureField.layer.superlayer {
    //                    secureFieldSuperlayer.addSublayer(self.layer)
    //                }
    //                // UITextField 제거 (내부의 logoLayer 포함하여 모두 제거됨)
    //                secureField.removeFromSuperview()
    //                secureField.layer.removeFromSuperlayer()
    //            }
    //        }
    //    }
}
