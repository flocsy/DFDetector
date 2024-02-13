# DF Detector

<a href="https://apps.garmin.com/en-US/apps/1535a238-cbac-463b-bde2-373403502a6f"><img src="images/available-connect-iq-badge.svg" height="60" alt="Download from Garmin Connect IQ"></a>

This datafield is an example for CIQ developers to demonstrate how a datafield can be added multiple times to a layout.

## Description

Add this datafield to any activity, multiple times. As you add it to multiple fields (places in the layout) you'll see the detected layout, field position.

If you like the app you can thank me by sending a beer: https://paypal.me/GavrielF or at least write a positive review with 5 stars ⭐⭐⭐⭐⭐.

Support Forum: https://forums.garmin.com/developer/connect-iq/f/showcase/359783/datafield-df-detector

## Legend
- 0 - white - field and layout detected
- 1 - gray - field detected inside the layout but could be in multiple layouts
- 2 - orange - in some layout(s) field can be detected but in some layout(s) the field is unknow (matches multiple fields in the same layout), unknown layout
- 3 - red - unknown field
- 4 - green - unknown field hash (need to add the device or fix the dimensions of the field in the source code)

## Changelog

1.0 (2024-02-07)
    - initial release
