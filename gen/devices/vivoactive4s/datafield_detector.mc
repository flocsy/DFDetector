// GENERATED by https://github.com/flocsy/garmin-dev-tools/tree/main/monkey-generator/ ©2022-2024 by flocsy

import Toybox.Lang;
import Toybox.Graphics;

(:datafield, :datafield_hash, :datafield_field_names) const DEFAULT_FIELD_NAMES = null /*conflict*/; // x2
(:datafield, :datafield_hash, :datafield_field_names) const DATAFIELD_HASH_2_FIELD_NAMES = {
	10807101 /*108x71@l*/ => "4.1", // {4.1: 4.1}
	10807104 /*108x71@r*/ => "4.2", // {4.2: 4.2}
	21807105 /*218x71@lr*/ => "3.1", // {3.1: 3.1}
	21807107 /*218x71@lrt*/ => "3.0|4.0", // {3.0: 3.0, 4.0: 4.0}
	21807213 /*218x72@blr*/ => "3.2|4.3", // {3.2: 3.2, 4.3: 4.3}
	21810807 /*218x108@lrt*/ => "2.0", // {2.0: 2.0}
	21810813 /*218x108@blr*/ => "2.1", // {2.1: 2.1}
	21821815 /*218x218@blrt*/ => "1.0", // {1.0: 1.0}
} as Dictionary<Number, String>;

(:datafield, :datafield_hash, :datafield_field_status) const DEFAULT_FIELD_STATUS = 0; // x6
(:datafield, :datafield_hash, :datafield_field_status) const DATAFIELD_HASH_2_FIELD_STATUS = {
	// 10807101 /*108x71@l*/ => 0 /*default*/, // {4.1: 0}
	// 10807104 /*108x71@r*/ => 0 /*default*/, // {4.2: 0}
	// 21807105 /*218x71@lr*/ => 0 /*default*/, // {3.1: 0}
	21807107 /*218x71@lrt*/ => 1, // {3.0: 1, 4.0: 1}
	21807213 /*218x72@blr*/ => 1, // {3.2: 1, 4.3: 1}
	// 21810807 /*218x108@lrt*/ => 0 /*default*/, // {2.0: 0}
	// 21810813 /*218x108@blr*/ => 0 /*default*/, // {2.1: 0}
	// 21821815 /*218x218@blrt*/ => 0 /*default*/, // {1.0: 0}
} as Dictionary<Number, Number>;

(:datafield_detector)
const DEVICE_STATUS = 1;
