import Toybox.Ant;
import Toybox.Lang;
import Toybox.System;
import Toybox.Time;

(:release, :background_app, :inline)
function log(msg as String) as Void {}
(:debug, :background_app, :inline)
function log(msg as String) as Void {
    if (LOG) {
        logRelease(msg);
    }
}

(:release, :inline)
function logIf(isEnabled as Boolean, msg as String?) as Void  {}
(:debug, :inline)
function logIf(isEnabled as Boolean, msg as String?) as Void  {
    if (isEnabled) {
        logRelease(msg);
    }
}

(:release, :background_app, :inline)
function logDebug(msg as String?) as Void {}
(:debug, :background_app, :inline)
function logDebug(msg as String?) as Void {
    logRelease(msg);
}

(:foreground, :background_app)
function logRelease(msg as String?) as Void {
    // System.println(Time.now().value() + " " + msg);
    var time = timeFormat(Time.now());
    System.println(time + " " + msg);
}

(:foreground, :background_app, :inline)
function errorRelease(msg as String?) as Void {
    // var time = timeFormat(Time.now());
    // System.error(time + " " + msg);
    logRelease(msg);
}

(:no_inline)
function timeFormat(moment as Moment) as AlphaNumeric {
    var time = Time.Gregorian.info(moment as Moment, Time.FORMAT_SHORT);
    // var time = System.getClockTime(); // -13
    return "" + time.hour + ':' + time.min + ':' + time.sec;
}

(:inline)
function timestampFormat(timestamp as Number) as AlphaNumeric {
    return timeFormat(new Time.Moment(timestamp));
}
