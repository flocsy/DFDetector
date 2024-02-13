import Toybox.Attention;
import Toybox.Graphics;
import Toybox.Lang;

(:debug) const LOG = true;
(:debug, :no_color) const DEBUG_LAYOUT = false;
(:debug, :color) const DEBUG_LAYOUT = false;

(:release) const LOG = false;
(:release) const DEBUG_LAYOUT = false;

(:no_rectangle) const ROUND = true;
(:rectangle) const ROUND = false;
(:no_rectangle) const RECTANGLE = false;
(:rectangle) const RECTANGLE = true;

const STATUS_FIELD_AND_LAYOUT = 0;
const STATUS_FIELD_ONLY = 1;
const STATUS_MIXED = 2;
const STATUS_INDISTINGUISHABLE_FIELD = 3;
const STATUS_RECTANGLE_DEVICE = 4;
const STATUS_UNKNOWN = 5;

(:no_color)
const FIELD_STATUS_2_COLOR as Array<Graphics.ColorType> = [
    Graphics.COLOR_WHITE,       // 0: field and layout known
    Graphics.COLOR_WHITE,       // 1: field known but could be in multiple layouts
    Graphics.COLOR_WHITE,       // 2: in some layout(s) field known, in som layout(s) field unknow (multiple fields in the same layout), unknown layout
    Graphics.COLOR_WHITE,       // 3: unknown field
    Graphics.COLOR_WHITE,       // 4: rectangle device
    Graphics.COLOR_WHITE        // 5: unknown hash
] as Array<Graphics.ColorType>;
(:color)
const FIELD_STATUS_2_COLOR as Array<Graphics.ColorType> = [
    Graphics.COLOR_WHITE,       // 0: field and layout known
    Graphics.COLOR_LT_GRAY,     // 1: field known but could be in multiple layouts
    Graphics.COLOR_ORANGE,      // 2: in some layout(s) field known, in som layout(s) field unknow (multiple fields in the same layout), unknown layout
    Graphics.COLOR_DK_RED,      // 3: unknown field
    Graphics.COLOR_BLUE,        // 4: rectangle device
    Graphics.COLOR_GREEN        // 5: unknown hash
] as Array<Graphics.ColorType>;

// types:
typedef AlphaNumeric as String or Number;
