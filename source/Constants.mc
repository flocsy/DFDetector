import Toybox.Graphics;
import Toybox.Lang;

(:debug) const LOG = true;
(:debug, :no_color) const DEBUG_LAYOUT = false;
(:debug, :color) const DEBUG_LAYOUT = false;

(:release) const LOG = false;
(:release) const DEBUG_LAYOUT = false;

(:no_shape_rectangle) const ROUND = true;
(:shape_rectangle) const ROUND = false;
(:no_shape_rectangle) const RECTANGLE = false;
(:shape_rectangle) const RECTANGLE = true;

const STATUS_FIELD_AND_LAYOUT = 0;
const STATUS_FIELD_ONLY = 1;
const STATUS_MIXED = 2;
const STATUS_INDISTINGUISHABLE_FIELD = 3;
const STATUS_UNKNOWN = 4;
// const STATUS_RECTANGLE_DEVICE = 5;

(:no_color)
const FIELD_STATUS_2_BACKGROUND_COLOR as Array<Graphics.ColorType> = [
    Graphics.COLOR_WHITE,       // 0: field and layout known
    Graphics.COLOR_WHITE,       // 1: field known but could be in multiple layouts
    Graphics.COLOR_WHITE,       // 2: in some layout(s) field known, in some layout(s) field unknown (multiple fields in the same layout), unknown layout
    Graphics.COLOR_WHITE,       // 3: unknown field
    Graphics.COLOR_WHITE,       // 4: unknown hash
    // Graphics.COLOR_WHITE,       // 5: rectangle device
] as Array<Graphics.ColorType>;
(:color)
const FIELD_STATUS_2_BACKGROUND_COLOR as Array<Graphics.ColorType> = [
    0x00FF00, // 0: field and layout known
    0x00FFFF, // 1: field known but could be in multiple layouts
    0xFF00FF, // 2: in some layout(s) field known, in some layout(s) field unknown (multiple fields in the same layout), unknown layout
    0xFF0000, // 3: unknown field
    0x000000, // 4: unknown hash
    // 0x0000FF, // 5: rectangle device
] as Array<Graphics.ColorType>;

(:no_color)
const FIELD_STATUS_2_TEXT_COLOR as Array<Graphics.ColorType> = [
    Graphics.COLOR_BLACK,       // 0: field and layout known
    Graphics.COLOR_BLACK,       // 1: field known but could be in multiple layouts
    Graphics.COLOR_BLACK,       // 2: in some layout(s) field known, in some layout(s) field unknown (multiple fields in the same layout), unknown layout
    Graphics.COLOR_BLACK,       // 3: unknown field
    Graphics.COLOR_BLACK,       // 4: unknown hash
    // Graphics.COLOR_BLACK,    // 5: rectangle device
] as Array<Graphics.ColorType>;
(:color)
const FIELD_STATUS_2_TEXT_COLOR as Array<Graphics.ColorType> = [
    0x000000, // 0: field and layout known
    0x000000, // 1: field known but could be in multiple layouts
    0x000000, // 2: in some layout(s) field known, in some layout(s) field unknown (multiple fields in the same layout), unknown layout
    0x000000, // 3: unknown field
    0xFFFFFF, // 4: unknown hash
    // 0xFFFFFF, // 5: rectangle device
] as Array<Graphics.ColorType>;

const FIELD_STATUS_2_LEGEND as Array<String> = [
    // LONG LINES

    // "[0] recognized field and layout",     // 0: field and layout known
    // "[1] field recognized layout unknown", // 1: field known but could be in multiple layouts
    // "[2] field (un)known in some layouts",  // 2: in some layout(s) field known, in some layout(s) field unknown (multiple fields in the same layout), unknown layout
    // "[3] unknown field",                    // 3: unknown field
    // "[4] unknown hash Report BUG!"         // 4: unknown hash
    // // "[5] rectangle device",                 // 5: rectangle device

    // 2 SHORT LINES

    // "[0] recognized\nfield and layout",     // 0: field and layout known
    // "[1] field recognized\nlayout unknown", // 1: field known but could be in multiple layouts
    // "[2] field (un)known\nin some layouts",  // 2: in some layout(s) field known, in some layout(s) field unknown (multiple fields in the same layout), unknown layout
    // "[3] unknown field",                    // 3: unknown field
    // "[4] unknown hash\nReport BUG!"         // 4: unknown hash
    // // "[5] rectangle device",                 // 5: rectangle device

    // SHORT LINES

    "[0] field+ layout+",            // 0: field and layout known
    "[1] field+ layout-",            // 1: field known but could be in multiple layouts
    "[2] field? layout-",            // 2: in some layout(s) field known, in some layout(s) field unknown (multiple fields in the same layout), unknown layout
    "[3] field-",                    // 3: unknown field
    "[4] unknown hash\nReport BUG!"  // 4: unknown hash
    // "[5] rectangle device",         // 5: rectangle device
] as Array<String>;

const OBSCURITY_FLAG_2_DIRECTIONS = [
    /*  0 */ "", // no obscurity: rectangle field
    /*  1 */ "l", // left: middle-left field
    /*  2 */ "t", // top: IMHO can't exist
    /*  3 */ "tl", // top-left: top-left-arc field
    /*  4 */ "r", // right: middle-right field
    /*  5 */ "rl", // right-left: middle, full width field on round screen
    /*  6 */ "rt", // right-top: top-right-arc
    /*  7 */ "rtl", // right-top-left: top-arc | top-half
    /*  8 */ "b", // bottom: IMHO can't exist
    /*  9 */ "bl", // bottom-left: bottom-left-arc
    /* 10 */ "bt", // bottom-top: IMHO can't exist
    /* 11 */ "btl", // bottom-top-left: IMHO can't exist
    /* 12 */ "br", // bottom-right: bottom-right-arc
    /* 13 */ "brl", // bottom-right-left: bottom-arc | bottom-half
    /* 14 */ "brt", // bottom-right-top: IMHO can't exist
    /* 15 */ "brtl", // bottom-right-top-left: full-screen field on round device
] as Array<String?>;
