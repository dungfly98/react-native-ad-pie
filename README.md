# react-native-ad-pie

react native ad pie

## Installation

```sh
npm install react-native-ad-pie
```

1. Run `cd ios && pod install && cd ..` to install all the necessary CocoaPods dependencies.
​
2. Open up the `AppDelegate.m || AppDelegate.mm` file, and add an import statement for the AdPie headers:

   ```objective-c
   #import <AdPieSDK/AdPieSDK.h>
   ```

3. Within your existing didFinishLaunchingWithOptions method, add the following to the top of the method:

```
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  // Add me --- \/
  [[AdPieSDK sharedInstance] initWithMediaId:@"***MediaId***"];
  // Add me --- /\
  // ...
}
```

## Usage

```js
import { showAdPieVideoAds } from 'react-native-ad-pie';

// ...

const showAds = () => {
  showAdPieVideoAds({
    slotId: 'slotId',
  });
};
```

## Contributing

See the [contributing guide](CONTRIBUTING.md) to learn how to contribute to the repository and the development workflow.

## License

MIT

---

Made with [create-react-native-library](https://github.com/callstack/react-native-builder-bob)
