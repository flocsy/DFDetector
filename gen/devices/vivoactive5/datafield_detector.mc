// GENERATED by https://github.com/flocsy/garmin-dev-tools/tree/main/monkey-generator/ ©2022-2024 by flocsy

import Toybox.Lang;
import Toybox.Graphics;

(:datafield, :datafield_hash, :datafield_field_names) const DEFAULT_FIELD_NAMES = null /*conflict*/; // x2
(:datafield, :datafield_hash, :datafield_field_names) const DATAFIELD_HASH_2_FIELD_NAMES = {
	18712801 /*187x128@l*/ => "4.1", // {4.1: 4.1}
	18712804 /*187x128@r*/ => "4.2", // {4.2: 4.2}
	22312913 /*223x129@blr*/ => "3.2|4.3", // {3.2: 3.2, 4.3: 4.3}
	39012805 /*390x128@lr*/ => "3.1", // {3.1: 3.1}
	39012907 /*390x129@lrt*/ => "3.0|4.0", // {3.0: 3.0, 4.0: 4.0}
	39019407 /*390x194@lrt*/ => "2.0", // {2.0: 2.0}
	39019413 /*390x194@blr*/ => "2.1", // {2.1: 2.1}
	39039015 /*390x390@blrt*/ => "1.0", // {1.0: 1.0}
} as Dictionary<Number, String>;

(:datafield, :datafield_hash, :datafield_field_status) const DEFAULT_FIELD_STATUS = 0; // x6
(:datafield, :datafield_hash, :datafield_field_status) const DATAFIELD_HASH_2_FIELD_STATUS = {
	// 18712801 /*187x128@l*/ => 0 /*default*/, // {4.1: 0}
	// 18712804 /*187x128@r*/ => 0 /*default*/, // {4.2: 0}
	22312913 /*223x129@blr*/ => 1, // {3.2: 1, 4.3: 1}
	// 39012805 /*390x128@lr*/ => 0 /*default*/, // {3.1: 0}
	39012907 /*390x129@lrt*/ => 1, // {3.0: 1, 4.0: 1}
	// 39019407 /*390x194@lrt*/ => 0 /*default*/, // {2.0: 0}
	// 39019413 /*390x194@blr*/ => 0 /*default*/, // {2.1: 0}
	// 39039015 /*390x390@blrt*/ => 0 /*default*/, // {1.0: 0}
} as Dictionary<Number, Number>;

(:datafield_detector)
const DEVICE_STATUS = 1;
