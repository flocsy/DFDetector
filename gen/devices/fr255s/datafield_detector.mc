// GENERATED by https://github.com/flocsy/garmin-dev-tools/tree/main/monkey-generator/ ©2022-2024 by flocsy

import Toybox.Lang;
import Toybox.Graphics;

(:datafield, :datafield_hash, :datafield_field_names) const DEFAULT_FIELD_NAMES = null /*conflict*/; // x8
(:datafield, :datafield_hash, :datafield_field_names) const DATAFIELD_HASH_2_FIELD_NAMES = {
	10805201 /*108x52@l*/ => "6.1", // {6.1: 6.1}
	10805204 /*108x52@r*/ => "6.2", // {6.2: 6.2}
	10805301 /*108x53@l*/ => "5.2|6.3", // {5.2: 5.2, 6.3: 6.3}
	10805304 /*108x53@r*/ => "5.3|6.4", // {5.3: 5.3, 6.4: 6.4}
	10806501 /*108x65@l*/ => "4A.1", // {4A.1: 4A.1}
	10806504 /*108x65@r*/ => "4A.2", // {4A.2: 4A.2}
	10810803 /*108x108@lt*/ => "4B.0", // {4B.0: 4B.0}
	10810806 /*108x108@rt*/ => "4B.1", // {4B.1: 4B.1}
	10810809 /*108x108@bl*/ => "3C.1|4B.2", // {3C.1: 3C.1, 4B.2: 4B.2}
	10810812 /*108x108@br*/ => "3C.2|4B.3", // {3C.2: 3C.2, 4B.3: 4B.3}
	21805205 /*218x52@lr*/ => "4C.1|5.1", // {4C.1: 4C.1, 5.1: 5.1}
	21805305 /*218x53@lr*/ => "4C.2", // {4C.2: 4C.2}
	21805313 /*218x53@blr*/ => "4C.3|5.4|6.5", // {4C.3: 4C.3, 5.4: 5.4, 6.5: 6.5}
	21805407 /*218x54@lrt*/ => "4C.0|5.0|6.0", // {4C.0: 4C.0, 5.0: 5.0, 6.0: 6.0}
	21806205 /*218x62@lr*/ => "3A.1", // {3A.1: 3A.1}
	21806913 /*218x69@blr*/ => "3B.2", // {3B.2: 3B.2}
	21807007 /*218x70@lrt*/ => "3B.0", // {3B.0: 3B.0}
	21807213 /*218x72@blr*/ => "4A.3", // {4A.3: 4A.3}
	21807505 /*218x75@lr*/ => "3B.1", // {3B.1: 3B.1}
	21807607 /*218x76@lrt*/ => "3A.0", // {3A.0: 3A.0}
	21807707 /*218x77@lrt*/ => "4A.0", // {4A.0: 4A.0}
	21808013 /*218x80@blr*/ => "3A.2", // {3A.2: 3A.2}
	21810807 /*218x108@lrt*/ => "2.0|3C.0", // {2.0: 2.0, 3C.0: 3C.0}
	21810813 /*218x108@blr*/ => "2.1", // {2.1: 2.1}
	21821815 /*218x218@blrt*/ => "1.0", // {1.0: 1.0}
} as Dictionary<Number, String>;

(:datafield, :datafield_hash, :datafield_field_status) const DEFAULT_FIELD_STATUS = 0; // x17
(:datafield, :datafield_hash, :datafield_field_status) const DATAFIELD_HASH_2_FIELD_STATUS = {
	// 10805201 /*108x52@l*/ => 0 /*default*/, // {6.1: 0}
	// 10805204 /*108x52@r*/ => 0 /*default*/, // {6.2: 0}
	10805301 /*108x53@l*/ => 1, // {5.2: 1, 6.3: 1}
	10805304 /*108x53@r*/ => 1, // {5.3: 1, 6.4: 1}
	// 10806501 /*108x65@l*/ => 0 /*default*/, // {4A.1: 0}
	// 10806504 /*108x65@r*/ => 0 /*default*/, // {4A.2: 0}
	// 10810803 /*108x108@lt*/ => 0 /*default*/, // {4B.0: 0}
	// 10810806 /*108x108@rt*/ => 0 /*default*/, // {4B.1: 0}
	10810809 /*108x108@bl*/ => 1, // {3C.1: 1, 4B.2: 1}
	10810812 /*108x108@br*/ => 1, // {3C.2: 1, 4B.3: 1}
	21805205 /*218x52@lr*/ => 1, // {4C.1: 1, 5.1: 1}
	// 21805305 /*218x53@lr*/ => 0 /*default*/, // {4C.2: 0}
	21805313 /*218x53@blr*/ => 1, // {4C.3: 1, 5.4: 1, 6.5: 1}
	21805407 /*218x54@lrt*/ => 1, // {4C.0: 1, 5.0: 1, 6.0: 1}
	// 21806205 /*218x62@lr*/ => 0 /*default*/, // {3A.1: 0}
	// 21806913 /*218x69@blr*/ => 0 /*default*/, // {3B.2: 0}
	// 21807007 /*218x70@lrt*/ => 0 /*default*/, // {3B.0: 0}
	// 21807213 /*218x72@blr*/ => 0 /*default*/, // {4A.3: 0}
	// 21807505 /*218x75@lr*/ => 0 /*default*/, // {3B.1: 0}
	// 21807607 /*218x76@lrt*/ => 0 /*default*/, // {3A.0: 0}
	// 21807707 /*218x77@lrt*/ => 0 /*default*/, // {4A.0: 0}
	// 21808013 /*218x80@blr*/ => 0 /*default*/, // {3A.2: 0}
	21810807 /*218x108@lrt*/ => 1, // {2.0: 1, 3C.0: 1}
	// 21810813 /*218x108@blr*/ => 0 /*default*/, // {2.1: 0}
	// 21821815 /*218x218@blrt*/ => 0 /*default*/, // {1.0: 0}
} as Dictionary<Number, Number>;

(:datafield_detector)
const DEVICE_STATUS = 1;
