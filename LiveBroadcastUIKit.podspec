Pod::Spec.new do |spec|
  spec.name         = "LiveBroadcastUIKit"
  spec.version      = "1.0"
  spec.summary      = "Live Shopping & Video Streams UI Kit"
  spec.description  = <<-DESC
                    iOS UI Kit running with LiveBroadcastSDK for Live Shopping & Video Streams with Channeliz.io
                   DESC
  spec.homepage     = "https://channelize.io/solutions/live-streaming-commerce"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Channelize" => "info@channelize.io" }
  spec.platform     = :ios, "11.0"
  spec.source       = { :git => "https://github.com/ChannelizeIO/Channelize-Livestream-Ecommerce-IOS-SDK.git", :tag => "#{spec.version}", :branch => "releases" }
  spec.vendored_frameworks = 'SDKs/LiveBroadcastUIKit.xcframework'
  spec.dependency 'SDWebImage'
  spec.dependency 'MaterialComponents/Slider'
end
