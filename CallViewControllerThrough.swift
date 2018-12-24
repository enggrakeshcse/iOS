    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        AppDelegate.current = self
        
        window = UIWindow(frame: UIScreen.main.bounds)
        let contactTabBarController = ContactTabBarController()
        contactTabBarController.view.frame = UIScreen.main.bounds
        window?.rootViewController = contactTabBarController
        window?.makeKeyAndVisible()
        return true
    }
