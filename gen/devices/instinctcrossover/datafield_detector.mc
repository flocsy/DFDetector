// GENERATED by https://github.com/flocsy/garmin-dev-tools/tree/main/monkey-generator/ ©2022-2024 by flocsy

import Toybox.Lang;
import Toybox.Graphics;

(:datafield, :datafield_hash, :datafield_field_names) const DEFAULT_FIELD_NAMES = null /*conflict*/; // x3
(:datafield, :datafield_hash, :datafield_field_names) const DATAFIELD_HASH_2_FIELD_NAMES = {
	8708703 /*87x87@lt*/ => "4.0", // {4.0: 4.0}
	8708706 /*87x87@rt*/ => "4.1", // {4.1: 4.1}
	8708709 /*87x87@bl*/ => "3.1|4.2", // {3.1: 3.1, 4.2: 4.2}
	8708712 /*87x87@br*/ => "3.2|4.3", // {3.2: 3.2, 4.3: 4.3}
	17608707 /*176x87@lrt*/ => "2.0|3.0", // {2.0: 2.0, 3.0: 3.0}
	17608713 /*176x87@blr*/ => "2.1", // {2.1: 2.1}
	17617615 /*176x176@blrt*/ => "1.0", // {1.0: 1.0}
} as Dictionary<Number, String>;

(:datafield, :datafield_hash, :datafield_field_status) const DEFAULT_FIELD_STATUS = 0; // x4
(:datafield, :datafield_hash, :datafield_field_status) const DATAFIELD_HASH_2_FIELD_STATUS = {
	// 8708703 /*87x87@lt*/ => 0 /*default*/, // {4.0: 0}
	// 8708706 /*87x87@rt*/ => 0 /*default*/, // {4.1: 0}
	8708709 /*87x87@bl*/ => 1, // {3.1: 1, 4.2: 1}
	8708712 /*87x87@br*/ => 1, // {3.2: 1, 4.3: 1}
	17608707 /*176x87@lrt*/ => 1, // {2.0: 1, 3.0: 1}
	// 17608713 /*176x87@blr*/ => 0 /*default*/, // {2.1: 0}
	// 17617615 /*176x176@blrt*/ => 0 /*default*/, // {1.0: 0}
} as Dictionary<Number, Number>;

(:datafield_detector)
const DEVICE_STATUS = 1;
