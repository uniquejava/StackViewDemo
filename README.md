# StackViewDemo
Exercise for appcoda book

检测设备方向变化, API变化真快, 讨论热烈.

http://stackoverflow.com/questions/25666269/ios8-swift-how-to-detect-orientation-change

起因是在看appcoda的那本iOS 10的书, 有个练习是在ipad(portrait)模式下修改某个stack view的spacing从10变成30. 

![输入图片说明](https://static.oschina.net/uploads/img/201610/28010120_RTTW.png "在这里输入图片标题")

看了一下,好像ipad不管怎么摆size classes都是wR/hR, 所以不能通过interface builder修改, 只能通过写代码的方式.

最终的我的代码如下(AppDelegate.swift):

```swift
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
   // Override point for customization after application launch.
   NotificationCenter.default.addObserver(self, selector: #selector(rotated), name: NSNotification.Name.UIDeviceOrientationDidChange, object: nil)
   
   return true
}
    
func rotated() {
   let isIPad = UIDevice.current.userInterfaceIdiom == .pad
   let isPortrait = UIDeviceOrientationIsPortrait(UIDevice.current.orientation)
   print("isIPad: \(isIPad), iPortrait: \(isPortrait)")
   
   if isIPad {
       let controller = window!.rootViewController as! ViewController
       controller.myStackView.spacing = isPortrait ? 30.0 : 10.0
   }
}
```

参考: 
1. http://stackoverflow.com/questions/25666269/ios8-swift-how-to-detect-orientation-change
2. iOS Apprentice 5th edition
3. Beginning iOS programming with Swift
