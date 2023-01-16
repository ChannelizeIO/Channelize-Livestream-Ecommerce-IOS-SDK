<p align="right" display="block">
<img width="172" height="50" src="https://i.imgur.com/1E0VZCb.png">
</p>

## Integrate the SDK
To integrate the SDK using Swift Package Manager, please use below git repo and exact version

```
https://github.com/ChannelizeIO/Channelize-Livestream-Ecommerce-IOS-SDK.git
```

Version => 2.1.1

## Import SDKs

To Import the SDKs, please use below import statements.

```swift
import LiveBroadcastAPI
import LiveBroadcastUI
```

## Configure SDKs

Please configure the SDKs in `didFinishLaunchingWithOptions` method in your `AppDelegate.swift` file. Please use your Channelize LSC Public Key to configure the SDK. You can find your Public Key in your Channelize Dashboard.

### Configure API SDK

```swift
LSApi.instance.configurePublicKey("YOUR_PUBLIC_KEY")
```

### Configure UI SDK
By Default, UI SDKs uses system provided fonts. If you want to sent your App's font, please use `configure` instance method of `LSCUIManager` of UI SDK. You should call this method in `didFinishLaunchingWithOptions` method in your  `AppDelegate.swift` file.
For e.g

```swift
LSCUIManager.instance.configure(
    font: LSCUIFont(
        regularFont: "SourceSansPro-Regular",
        mediumOrSemiBoldFont: "SourceSansPro-SemiBold",
        boldFont: "SourceSansPro-Bold"
    )
)
```

## Fetch Broadcasts

To fetch all broadcasts, please call `getBroadcastsList` instance method of `LSApi` class. First create a query builder of `LSGetBroadcastListQuery` type to fetch the broadcasts according to your requirements. 

This table lists all parameters this API request supports to get filtered results. None of the parameters are required.

| Key | Type | Description  |
| ------- | --- | --- |
| includeUnpublished | Bool | Wether to include or not unPublished shows |
| limit | Int | Specifies the number of results to return. Default value is 25 |
| offSet | Int | Specifies the number of results you want to skip from the beginning. (Useful in Pagination) (Default: 0) |
| sortingOrder | LSBroadCastListSortOrder | Specifies the sorting criteria for the returned results. (Default: createdAt DESC). Allowed values are `.DESC`, `.ASC`, `.endTimeDESC`, `.endTimeASC`, `.startTimeDESC`, `.startTimeASC`  |
| isIncludeOnlyRecorded | Bool | Specifies the recording flag to filter the recorded or unrecorded live broadcasts. |
| status | `LSBroadcastStatus` | Specifies the status of the live broadcast. Allowed values are `.upcoming`, `.live`, `.completed` | 

Example Code

```swift
let getBroadcastsListRequest = LSGetBroadcastListQuery()
getBroadcastsListRequest.includeUnpublished = false
getBroadcastsListRequest.offSet = 0
getBroadcastsListRequest.limit = 30
getBroadcastsListRequest.sortingOrder = .startTimeDESC
getBroadcastsListRequest.isIncludeOnlyRecorded = true
getBroadcastsListRequest.status = .completed

LSApi.instance.getBroadcastsList(requestData: getBroadcastsListRequest) {[weak self] (broadcasts, error) in
    guard error == nil else {
        print("LOGS ::: Error Occurred: \(error?.errorMessage ?? "")")
        return
    }
    guard let strongBroadcasts = broadcasts else { return }
    self?.loaderIndicator.stopAnimating()
    self?.broadcasts = strongBroadcasts
    self?.broadcastsCollectionView.isHidden = false
    self?.broadcastsCollectionView.reloadData()
}

```

**NOTE: If you don't provide any values for `LSGetBroadcastListQuery`, API will return result in default behaviour.**

## UI Integration

Pre-Built UI of LSC SDKs are integrated within `LSBroadcastView` view. You can embed this view anywhere according to your requirements for e.g in a `ViewController` or inside `CollectionView` or `TableView`. Please assign the `LSBroadcast` you get from fetch broadcast API to this view. Once broadcast is assigned call the `play` or `pause` method to let handle the view according to the status of broadcast. Please check below code Example.

```swift
self.broadcastView = LSBroadcastView()
self.broadcastView?.tag = 3000
self.broadcastView?.assignBroadcast(broadcast)
```

### `LSBroadcastView` Methods

#### Assign Broadcast
Assign the broadcast to the view. This method is required.

```swift
self.broadcastView?.assignBroadcast(broadcast)
```

#### Set Broadcast View Config
Set the view configurations like wether to show products list, enable reactions or not, enable chat or not, etc. Please use `LSBroadcastViewConfig` type to set the config. This method is optional

```swift
let viewConfig = LSBroadcastViewConfig(
    enableReactions: true,
    enableLiveChat: true,
    enableLiveAudienceCount: true,
    showProductInfo: true
)
self.broadcastView?.setBroadcastViewConfig(viewConfig)
```

#### Closure
`LSBroadcastView` provide a closure `onRequestToEnableDisableScroll` to disable the scrolling of your collectionView or TableView. This comes handy when user is seeing chat messages and when he comes to the end, he might scroll to the next broadcast due to default scrolling behaviour of CollectionView. This closure is optional.

```swift
self.broadcastView?.onRequestToEnableDisableScroll = {[weak self] (isEnabled) in
    if isEnabled {
        // Enable CollectionView scrolling back
    } else {
        // Disable Collectionview Scrolling
    }
}
```

## Other Important Notes:
When you close any screen containing `LSBroadcastView`, please call this method `stopBroadcastsPlayingContents` of `LSCUIManager` instance. If you don't do this, content will keep playing on already closed screens and players will not stop.

```swift
LSCUIManager.instance.stopBroadcastsPlayingContents()
```

Also, if you want to show some other info in the same screen where you have embeded `LSBroadcastView`, we recommend to show that content as overlay on the top of `LSBroadcastView` instead of resizing frames of broadcast view.

## Example Code
We have attached a sample project along with this documentation. Please check following classes for example integration:

- DemoSelectViewController.swift
- ReelsDemoViewController.swift
- SingleBroadcastDemoViewController.swift
- BroadcastCollectionViewCell.swift
- BroadcastsListViewController.swift

To run the project:
- Put your Channelize Public Key in `Constants.swift` file
- Please manage Code Signings
- You can run project on both device and Simulator. For better experience test it on a physical device.
- If you are running it on Simulator, you will not be able to see host feed in case of live show.
