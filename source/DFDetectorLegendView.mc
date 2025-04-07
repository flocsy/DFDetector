import Toybox.Activity;
import Toybox.Graphics;
import Toybox.Lang;
import Toybox.System;
import Toybox.WatchUi;

class DFDetectorLegendView extends WatchUi.DataField {
    hidden var screenWidth as Number;
    hidden var screenHeight as Number;
    hidden var width as Number = 0;
    hidden var height as Number = 0;
    hidden var isFullScreen as Boolean = false;

    hidden var font as FontType = 0 as FontType;

    hidden var currentStatus as Number = 0;
    hidden var timestamp as Number = 0;

    function initialize() {
        DataField.initialize();
        var deviceSettings = System.getDeviceSettings();
        screenWidth = deviceSettings.screenWidth;
        screenHeight = deviceSettings.screenHeight;
    }

    function onLayout(dc as Dc) as Void {
        // var obscurityFlags = DataField.getObscurityFlags();
        // log("onLayout: obscurityFlags = " + obscurityFlags);
        var width = dc.getWidth();
        var height = dc.getHeight();
        var isFullScreen = width == screenWidth && height == screenHeight;
        self.width = width;
        self.height = height;
        self.isFullScreen = isFullScreen;
        if (isFullScreen) {
            onLayoutFullScreen(dc);
        } else {
            onLayoutPartialScreen(dc);
        }
    }
    function onLayoutFullScreen(dc as Dc) as Void {
        var statuses = FIELD_STATUS_2_BACKGROUND_COLOR.size();
        var rectangleHeight = height / statuses;
        var font = LARGEST_TEXT_FONT;
        for (var status = 0; status < statuses; status++) {
            var legend = FIELD_STATUS_2_LEGEND[status];
            var statusFont = getBiggestFontIndex(dc, legend, LARGEST_TEXT_FONT, width * 8 / 10, rectangleHeight);
            if (statusFont < font) {
                font = statusFont;
            }
        }
        self.font = font as FontType;
    }
    function onLayoutPartialScreen(dc as Dc) as Void {
    }

    function onShow() as Void {
        self.currentStatus = 0;
        self.timestamp = Time.now().value();
    }

    // The given info object contains all the current workout information.
    // Calculate a value and save it locally in this method.
    // Note that compute() and onUpdate() are asynchronous, and there is no
    // guarantee that compute() will be called before onUpdate().
    function compute(info as Activity.Info) as Void {
        // log("compute");
        var now = Time.now().value();
        if (now - timestamp > 2) {
            self.currentStatus = (self.currentStatus + 1) % FIELD_STATUS_2_BACKGROUND_COLOR.size();
            self.timestamp = now;
        }
    }

    // Display the value you computed here. This will be called
    // once a second when the data field is visible.
    function onUpdate(dc as Dc) as Void {
        if (isFullScreen) {
            onUpdateFullScreen(dc);
        } else {
            onUpdatePartialScreen(dc);
        }
    }

    function onUpdateFullScreen(dc as Dc) as Void {
        var width = self.width;
        var height = self.height;

        var statuses = FIELD_STATUS_2_BACKGROUND_COLOR.size();
        var backgroundColor = FIELD_STATUS_2_BACKGROUND_COLOR[statuses - 1];

        dc.setColor(backgroundColor, backgroundColor);
        dc.clear();

        var rectangleHeight = height / statuses;
        var y = 0;
        for (var status = 0; status < statuses; status++) {
            var legend = FIELD_STATUS_2_LEGEND[status];
            backgroundColor = FIELD_STATUS_2_BACKGROUND_COLOR[status];
            var textColor = FIELD_STATUS_2_TEXT_COLOR[status];
            dc.setColor(backgroundColor, textColor);
            dc.fillRectangle(0, y, width, rectangleHeight);
            dc.setColor(textColor, Graphics.COLOR_TRANSPARENT);
            dc.drawText(width / 2, y + rectangleHeight / 2, font, legend, Graphics.TEXT_JUSTIFY_CENTER | Graphics.TEXT_JUSTIFY_VCENTER);
            y += rectangleHeight;
        }
    }

    function onUpdatePartialScreen(dc as Dc) as Void {
        var width = self.width;
        var height = self.height;
        var status = currentStatus;

        var backgroundColor = FIELD_STATUS_2_BACKGROUND_COLOR[status];
        dc.setColor(backgroundColor, backgroundColor);
        dc.clear();

        var legend = FIELD_STATUS_2_LEGEND[status];
        var textColor = FIELD_STATUS_2_TEXT_COLOR[status];
        dc.setColor(backgroundColor, textColor);
        dc.fillRectangle(0, 0, width, height);
        dc.setColor(textColor, Graphics.COLOR_TRANSPARENT);
        dc.drawText(width / 2, height / 2, font, legend, Graphics.TEXT_JUSTIFY_CENTER | Graphics.TEXT_JUSTIFY_VCENTER);
    }
}
