# Storyteller Brightcove Collector

This package is a utility to record player events from an `AVPlayer` and feed them into Brightcove analytics.

## Setup

Add Storyteller Brightcove Collector using SPM:

1. Add the package dependency: `https://github.com/getstoryteller/storyteller-brightcove-collector-swift`
1. Add the `StorytellerBrightcoveIntegration` target to your app target

To use the module, StorytellerSDK needs to be set to version `11.0.0` or higher.

In the file where you setup the StorytellerSDK, import the added package, set up the module, and set it up as a `Storyteller` module:

```swift
import StorytellerBrightcoveIntegration

func initializeStoryteller() {
    let brightcoveConfiguration = StorytellerBrightcoveModuleConfiguration(
        account: "<account ID>",
        playerName: "Video Player", // optional
        source: "<source>",
        destination: "<destination>"
    )

    Storyteller.shared.modules.append(StorytellerBrightcoveModule(configuration: brightcoveConfiguration))

    // other Storyteller initialization code
}
```
