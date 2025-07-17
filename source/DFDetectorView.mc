import Toybox.Activity;
import Toybox.Graphics;
import Toybox.Lang;
import Toybox.WatchUi;

class DFDetectorView extends WatchUi.DataField {
    hidden var pageTimestamp as Number = 0;
    hidden var page as Number = 0;

    function initialize() {
        DataField.initialize();
    }

    // Set your layout here. Anytime the size of obscurity of
    // the draw context is changed this will be called.
    // function onLayout(dc as Dc) as Void {
    //     var obscurityFlags = DataField.getObscurityFlags();
    //     log("onLayout: obscurityFlags = " + obscurityFlags);
    // }

    function onShow() as Void {
        self.pageTimestamp = Time.now().value();
    }

    // The given info object contains all the current workout information.
    // Calculate a value and save it locally in this method.
    // Note that compute() and onUpdate() are asynchronous, and there is no
    // guarantee that compute() will be called before onUpdate().
    function compute(info as Activity.Info) as Void {
        // log("compute");
        var now = Time.now().value();
        if (now - pageTimestamp > 2) {
            self.page = (self.page + 1) % 2;
            self.pageTimestamp = now;
        }
    }

    // Display the value you computed here. This will be called
    // once a second when the data field is visible.
    function onUpdate(dc as Dc) as Void {
        var width = dc.getWidth();
        var height = dc.getHeight();
        var obscurityFlags = DataField.getObscurityFlags();
        var hash = datafield_hash(width, height, obscurityFlags);

        var status = DATAFIELD_HASH_2_FIELD_STATUS[hash];
        if (status == null) {
            status = DEFAULT_FIELD_STATUS;
        }
        // if (status == null) {
        //     // status = RECTANGLE ? STATUS_RECTANGLE_DEVICE : STATUS_UNKNOWN;
        //     status = STATUS_UNKNOWN;
        // }

        var obscurityDirections = OBSCURITY_FLAG_2_DIRECTIONS[obscurityFlags as Number];
        var text;
        switch (self.page) {
            case 0:
            default:
                text = FIELD_STATUS_2_LEGEND[status];
                break;
            case 1:
                text = "[" + status + "] " + width + "x" + height + "@" + obscurityDirections;
                break;
        }

        var label = DATAFIELD_HASH_2_FIELD_NAMES[hash];
        if (label == null) {
            // label = loadResource(RECTANGLE ? Rez.Strings.rectangleDevice : Rez.Strings.unknown) as String;
            label = loadResource(Rez.Strings.unknown) as String;
        }
        if (ROUND) {
            text = " " + text + " ";
            label = " " + label + " ";
        }
        var labelFont = getBiggestFontIndex(dc, label, LARGEST_TEXT_FONT, width, height / 2) as FontType;
        var labelFontHeight = dc.getFontHeight(labelFont);

        var backgroundColor = FIELD_STATUS_2_BACKGROUND_COLOR[status];
        var valueFont = getBiggestFontIndex(dc, text, LARGEST_TEXT_FONT, width, height / 2) as FontType;
        var valueFontHeight = dc.getFontHeight(valueFont);
        var lineHeight = (labelFontHeight + valueFontHeight) / 4;

        var justify = 0;
        var x = width / 2;
        var ly = (height - labelFontHeight) / 2;
        var vy = (height + valueFontHeight) / 2;
        switch (obscurityFlags) {
            case 0: // rectangle
                justify = Graphics.TEXT_JUSTIFY_CENTER | Graphics.TEXT_JUSTIFY_VCENTER;
                break;
            case 1: // l middle-left
                justify = Graphics.TEXT_JUSTIFY_RIGHT | Graphics.TEXT_JUSTIFY_VCENTER;
                x = width;
                break;
            // case 2: // t
            //     break;
            case 3: // tl top-left-arc
                justify = Graphics.TEXT_JUSTIFY_RIGHT /* should be BOTTOM */;
                x = width;
                ly = height - valueFontHeight - labelFontHeight;
                vy = height - valueFontHeight;
                break;
            case 4: // r middle-right
                justify = Graphics.TEXT_JUSTIFY_LEFT | Graphics.TEXT_JUSTIFY_VCENTER;
                x = 0;
                break;
            case 5: // rl middle
                justify = Graphics.TEXT_JUSTIFY_CENTER | Graphics.TEXT_JUSTIFY_VCENTER;
                break;
            case 6: // rt top-right-arc
                justify = Graphics.TEXT_JUSTIFY_LEFT /* should be BOTTOM */;
                x = 0;
                ly = height - valueFontHeight - labelFontHeight;
                vy = height - valueFontHeight;
                break;
            case 7: // rtl top-arc | top-half
                justify = Graphics.TEXT_JUSTIFY_CENTER /* should be BOTTOM */;
                if (height * 5 / 2 < width) {
                    labelFont = decreaseFontSize(labelFont, 2);
                    labelFontHeight = dc.getFontHeight(labelFont);
                    lineHeight = (labelFontHeight + valueFontHeight) / 4;
                }
                ly = height - valueFontHeight - labelFontHeight;
                vy = height - valueFontHeight;
                break;
            // case 8: // b
            //     break;
            case 9: // bl bottom-left-arc
                justify = Graphics.TEXT_JUSTIFY_RIGHT /* should be TOP */;
                x = width;
                ly = 0;
                vy = labelFontHeight;
                break;
            // case 10: // bt
            //     break;
            // case 11: // btl
            //     break;
            case 12: // br bottom-right-arc
                justify = Graphics.TEXT_JUSTIFY_LEFT /* should be TOP */;
                x = 0;
                ly = 0;
                vy = labelFontHeight;
                break;
            case 13: // brl bottom-arc | bottom-half
                justify = Graphics.TEXT_JUSTIFY_CENTER /* should be TOP */;
                if (height * 5 / 2 < width) {
                    valueFont = decreaseFontSize(valueFont, 2);
                    valueFontHeight = dc.getFontHeight(valueFont);
                    lineHeight = (labelFontHeight + valueFontHeight) / 4;
                }
                ly = 0;
                vy = labelFontHeight;
                break;
            // case 14: // brt
            //     break;
            case 15: // brtl full-circle
                justify = Graphics.TEXT_JUSTIFY_CENTER | Graphics.TEXT_JUSTIFY_VCENTER;
                break;
            default:
                log("unknown obscurityFlags: " + obscurityDirections + "(" + obscurityFlags + ")");
        }
        log("onUpdate: " + width + "x" + height + "@" + obscurityDirections + "(" + obscurityFlags + "), lF:" + labelFont + ", vF:" + (valueFont as Number) + ", labelH: " + labelFontHeight + ", valueH: " + valueFontHeight + ", ly: " + ly + ", vy: " + vy + ", lineH: " + lineHeight + ", label: " + label + ", data: " + text + ", status: " + status);

        dc.setColor(Graphics.COLOR_BLACK, backgroundColor);
        dc.clear();
        dc.setColor(Graphics.COLOR_BLACK, Graphics.COLOR_TRANSPARENT);
        if (DEBUG_LAYOUT) {
            dc.setColor(Graphics.COLOR_BLACK, 0x0000DD);
        }
        dc.drawText(x, ly, labelFont, label, justify);
        if (DEBUG_LAYOUT) {
            dc.setColor(Graphics.COLOR_BLACK, 0xEE00EE);
        }
        dc.drawText(x, vy, valueFont, text, justify);
    }
}
