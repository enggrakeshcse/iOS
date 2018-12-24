 override func viewDidLoad() {
        super.viewDidLoad()
        
        let favouriteViewController = FavouriteViewController.creatObject
        favouriteViewController.tabBarItem = UITabBarItem(title: "Favourites", image: UIImage(named: "favourite"), tag: 0)
        
        let recentViewController = RecentViewController.creatObject
        recentViewController.tabBarItem = UITabBarItem(title: "Recents", image: UIImage(named: "recent") , tag: 1)
        
        let contactViewController = ContactViewController.creatObject
        contactViewController.tabBarItem = UITabBarItem(title: "Contacts", image: UIImage(named: "contacts"), tag: 2)
        
        let keypadViewController = KeypadViewController.creatObject
        keypadViewController.tabBarItem = UITabBarItem(title: "Keypad", image: UIImage(named: "keypad"), tag: 3)
        
        let voiceMailViewController = VoiceMailViewController.creatObject
        voiceMailViewController.tabBarItem = UITabBarItem(title: "Voicemail", image: UIImage(named: "voicemail"), tag: 0)
        
        self.viewControllers = [
            UINavigationController(rootViewController: favouriteViewController),
            UINavigationController(rootViewController: recentViewController),
            UINavigationController(rootViewController: contactViewController),
            UINavigationController(rootViewController: keypadViewController),
            UINavigationController(rootViewController: voiceMailViewController)
        ]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
