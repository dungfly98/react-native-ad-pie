@objc(AdPie)
class AdPie: NSObject {

  @objc(multiply:withB:withResolver:withRejecter:)
  func multiply(a: Float, b: Float, resolve:RCTPromiseResolveBlock,reject:RCTPromiseRejectBlock) -> Void {
    resolve(a*b)
  }

  @objc(showAdPieVideoAds:withResolver:withRejecter:)
    func showAdPieVideoAds(_ data: NSDictionary,
     resolver resolve:  RCTPromiseResolveBlock,
      rejecter reject: RCTPromiseRejectBlock) -> Void {
        do {
            let params = data as? [String:AnyObject]
            DispatchQueue.main.async {
                let vc = AdPieVC()
                vc.slotId = params?["slotId"] as! String;
                vc.modalPresentationStyle = .fullScreen
                let controller = RCTPresentedViewController()
                controller?.present(vc, animated: true)
            }
            resolve(true)
        } catch {
            resolve(false)
        }
  }
}
