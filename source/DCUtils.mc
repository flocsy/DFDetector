import Toybox.Lang;
import Toybox.Graphics;
import Toybox.WatchUi;

// const FONTS = [Graphics.FONT_XTINY, Graphics.FONT_TINY, Graphics.FONT_SMALL, Graphics.FONT_MEDIUM, Graphics.FONT_LARGE,
//     Graphics.FONT_NUMBER_MILD, Graphics.FONT_NUMBER_MEDIUM, Graphics.FONT_NUMBER_HOT, Graphics.FONT_NUMBER_THAI_HOT] as Array<FontDefinition>;
const LARGEST_TEXT_FONT = 4;
const LARGEST_NUMBER_FONT = 8;

// eventhough this is +17 bytes this one doesn't cut the leading spaces
// (:no_ciq_3_1_0, :no_inline)
function getBiggestFontIndex(dc as Graphics.Dc, text as String, largestFontIdx as Number, width as Number, height as Number) as Number {
    var fontIdx = largestFontIdx;
    do {
        var dim = dc.getTextDimensions(text, fontIdx as FontType);
        if (dim[0] <= width && dim[1] <= height) {
            break;
        }
        fontIdx--;
    } while (fontIdx > 0);
    // log("getBiggestFontIndex: f: " + fontIdx + ": w: " + width + ", h: " + height + ", t: " + text);
    // if we didn't find in fonts[n..1] then we return 0
    return fontIdx;
}
// (:ciq_3_1_0, :inline)
// hidden function getBiggestFontIndex(dc as Graphics.Dc, text as String, largestFontIdx as Number, width as Number, height as Number) as Number {
//     return getBiggestFontIndexImpl(text, largestFontIdx, width, height);
// }
// (:ciq_3_1_0, :no_inline) // -17 bytes
// hidden function getBiggestFontIndexImpl(text as String, largestFontIdx as Number, width as Number, height as Number) as Number {
//     var fontIdxfontIdx = largestFontIdx;
//     do {
//         if (text.equals(Graphics.fitTextToArea(text, fontIdx as FontType, width, height, false))) {
//             break;
//         }
//         fontIdx--;
//     } while (fontIdx > 0);
//     log("getBiggestFontIndexImpl: f: " + fontIdx + ": w: " + width + ", h: " + height + ", t: " + text);
//     // if we didn't find in fonts[n..1] then we return 0
//     return fontIdx;
// }

(:datafield, :datafield_hash, :inline)
function datafield_hash(width as Number, height as Number, obscurityFlags as DataField.Obscurity) as Number {
    return (width * 1000 + height) * 100 + obscurityFlags;
}

function decreaseFontSize(font as FontType, by as Number) as FontType {
    var newFont = font as Number - by;
    if (newFont < 0) {
        newFont = 0;
    }
    return newFont as FontType;
}
