// GENERATED by https://github.com/flocsy/garmin-dev-tools/tree/main/monkey-generator/ ©2022-2024 by flocsy

import Toybox.Lang;
import Toybox.Graphics;

(:datafield, :datafield_hash, :datafield_field_names) const DEFAULT_FIELD_NAMES = null /*conflict*/; // x11
(:datafield, :datafield_hash, :datafield_field_names) const DATAFIELD_HASH_2_FIELD_NAMES = {
	13808701 /*138x87@l*/ => "9.1|9.2", // {9.1: 9.1, 9.2: 9.2}
	20708701 /*207x87@l*/ => "7.1|7.4|8.1|8.3|8.5", // {7.1: 7.1, 7.4: 7.4, 8.1: 8.1, 8.3: 8.3, 8.5: 8.5}
	20708704 /*207x87@r*/ => "7.2|7.5|8.2|8.4|8.6", // {7.2: 7.2, 7.5: 7.5, 8.2: 8.2, 8.4: 8.4, 8.6: 8.6}
	20710201 /*207x102@l*/ => "5.2|6.1|6.3", // {5.2: 5.2, 6.1: 6.1, 6.3: 6.3}
	20710204 /*207x102@r*/ => "5.3|6.2|6.4", // {5.3: 5.3, 6.2: 6.2, 6.4: 6.4}
	20711601 /*207x116@l*/ => "4B.1", // {4B.1: 4B.1}
	20711604 /*207x116@r*/ => "4B.2", // {4B.2: 4B.2}
	20720609 /*207x206@bl*/ => "3C.1", // {3C.1: 3C.1}
	20720612 /*207x206@br*/ => "3C.2", // {3C.2: 3C.2}
	20720703 /*207x207@lt*/ => "4C.0", // {4C.0: 4C.0}
	20720706 /*207x207@rt*/ => "4C.1", // {4C.1: 4C.1}
	20720709 /*207x207@bl*/ => "4C.2", // {4C.2: 4C.2}
	20720712 /*207x207@br*/ => "4C.3", // {4C.3: 4C.3}
	25709804 /*257x98@r*/ => "9.4", // {9.4: 9.4}
	25710804 /*257x108@r*/ => "9.3", // {9.3: 9.3}
	41607307 /*416x73@lrt*/ => "7.0|8.0", // {7.0: 7.0, 8.0: 8.0}
	41607313 /*416x73@blr*/ => "9.5", // {9.5: 9.5}
	41607413 /*416x74@blr*/ => "7.6|8.7", // {7.6: 7.6, 8.7: 8.7}
	41608705 /*416x87@lr*/ => "7.3", // {7.3: 7.3}
	41610205 /*416x102@lr*/ => "5.1", // {5.1: 5.1}
	41610305 /*416x103@lr*/ => "4A.1|4A.2", // {4A.1: 4A.1, 4A.2: 4A.2}
	41610307 /*416x103@lrt*/ => "4A.0|5.0|6.0", // {4A.0: 4A.0, 5.0: 5.0, 6.0: 6.0}
	41610313 /*416x103@blr*/ => "4A.3|5.4|6.5", // {4A.3: 4A.3, 5.4: 5.4, 6.5: 6.5}
	41613205 /*416x132@lr*/ => "3B.1", // {3B.1: 3B.1}
	41613207 /*416x132@lrt*/ => "3A.0|9.0", // {3A.0: 3A.0, 9.0: 9.0}
	41613213 /*416x132@blr*/ => "3A.2", // {3A.2: 3A.2}
	41614207 /*416x142@lrt*/ => "3B.0", // {3B.0: 3B.0}
	41614213 /*416x142@blr*/ => "3B.2", // {3B.2: 3B.2}
	41614605 /*416x146@lr*/ => "3A.1", // {3A.1: 3A.1}
	41614707 /*416x147@lrt*/ => "4B.0", // {4B.0: 4B.0}
	41614713 /*416x147@blr*/ => "4B.3", // {4B.3: 4B.3}
	41620707 /*416x207@lrt*/ => "2.0", // {2.0: 2.0}
	41620713 /*416x207@blr*/ => "2.1", // {2.1: 2.1}
	41620807 /*416x208@lrt*/ => "3C.0", // {3C.0: 3C.0}
	41641615 /*416x416@blrt*/ => "1.0", // {1.0: 1.0}
} as Dictionary<Number, String>;

(:datafield, :datafield_hash, :datafield_field_status) const DEFAULT_FIELD_STATUS = 0; // x24
(:datafield, :datafield_hash, :datafield_field_status) const DATAFIELD_HASH_2_FIELD_STATUS = {
	13808701 /*138x87@l*/ => 2, // {9.1: 2, 9.2: 2}
	20708701 /*207x87@l*/ => 2, // {7.1: 2, 7.4: 2, 8.1: 2, 8.3: 2, 8.5: 2}
	20708704 /*207x87@r*/ => 2, // {7.2: 2, 7.5: 2, 8.2: 2, 8.4: 2, 8.6: 2}
	20710201 /*207x102@l*/ => 2, // {5.2: 2, 6.1: 2, 6.3: 2}
	20710204 /*207x102@r*/ => 2, // {5.3: 2, 6.2: 2, 6.4: 2}
	// 20711601 /*207x116@l*/ => 0 /*default*/, // {4B.1: 0}
	// 20711604 /*207x116@r*/ => 0 /*default*/, // {4B.2: 0}
	// 20720609 /*207x206@bl*/ => 0 /*default*/, // {3C.1: 0}
	// 20720612 /*207x206@br*/ => 0 /*default*/, // {3C.2: 0}
	// 20720703 /*207x207@lt*/ => 0 /*default*/, // {4C.0: 0}
	// 20720706 /*207x207@rt*/ => 0 /*default*/, // {4C.1: 0}
	// 20720709 /*207x207@bl*/ => 0 /*default*/, // {4C.2: 0}
	// 20720712 /*207x207@br*/ => 0 /*default*/, // {4C.3: 0}
	// 25709804 /*257x98@r*/ => 0 /*default*/, // {9.4: 0}
	// 25710804 /*257x108@r*/ => 0 /*default*/, // {9.3: 0}
	41607307 /*416x73@lrt*/ => 1, // {7.0: 1, 8.0: 1}
	// 41607313 /*416x73@blr*/ => 0 /*default*/, // {9.5: 0}
	41607413 /*416x74@blr*/ => 1, // {7.6: 1, 8.7: 1}
	// 41608705 /*416x87@lr*/ => 0 /*default*/, // {7.3: 0}
	// 41610205 /*416x102@lr*/ => 0 /*default*/, // {5.1: 0}
	41610305 /*416x103@lr*/ => 2, // {4A.1: 2, 4A.2: 2}
	41610307 /*416x103@lrt*/ => 1, // {4A.0: 1, 5.0: 1, 6.0: 1}
	41610313 /*416x103@blr*/ => 1, // {4A.3: 1, 5.4: 1, 6.5: 1}
	// 41613205 /*416x132@lr*/ => 0 /*default*/, // {3B.1: 0}
	41613207 /*416x132@lrt*/ => 1, // {3A.0: 1, 9.0: 1}
	// 41613213 /*416x132@blr*/ => 0 /*default*/, // {3A.2: 0}
	// 41614207 /*416x142@lrt*/ => 0 /*default*/, // {3B.0: 0}
	// 41614213 /*416x142@blr*/ => 0 /*default*/, // {3B.2: 0}
	// 41614605 /*416x146@lr*/ => 0 /*default*/, // {3A.1: 0}
	// 41614707 /*416x147@lrt*/ => 0 /*default*/, // {4B.0: 0}
	// 41614713 /*416x147@blr*/ => 0 /*default*/, // {4B.3: 0}
	// 41620707 /*416x207@lrt*/ => 0 /*default*/, // {2.0: 0}
	// 41620713 /*416x207@blr*/ => 0 /*default*/, // {2.1: 0}
	// 41620807 /*416x208@lrt*/ => 0 /*default*/, // {3C.0: 0}
	// 41641615 /*416x416@blrt*/ => 0 /*default*/, // {1.0: 0}
} as Dictionary<Number, Number>;

(:datafield_detector)
const DEVICE_STATUS = 2;
