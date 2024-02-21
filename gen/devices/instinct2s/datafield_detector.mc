// GENERATED by https://github.com/flocsy/garmin-dev-tools/tree/main/monkey-generator/ ©2022-2024 by flocsy

import Toybox.Lang;
import Toybox.Graphics;

(:datafield, :datafield_hash, :datafield_field_names) const DEFAULT_FIELD_NAMES = null /*conflict*/; // x3
(:datafield, :datafield_hash, :datafield_field_names) const DATAFIELD_HASH_2_FIELD_NAMES = {
	5405415 /*54x54@blrt*/ => "2.1|3.2|4A.3|4B.3|5.4", // {2.1: 2.1, 3.2: 3.2, 4A.3: 4A.3, 4B.3: 4B.3, 5.4: 5.4}
	7806600 /*78x66@*/ => "5.1|5.2", // {5.1: 5.1, 5.2: 5.2}
	7809209 /*78x92@bl*/ => "4B.1", // {4B.1: 4B.1}
	7809212 /*78x92@br*/ => "4B.2", // {4B.2: 4B.2}
	9304903 /*93x49@lt*/ => "4A.0", // {4A.0: 4A.0}
	9306403 /*93x64@lt*/ => "3.0|4B.0|5.0", // {3.0: 3.0, 4B.0: 4B.0, 5.0: 5.0}
	9602400 /*96x24@*/ => "5.3", // {5.3: 5.3}
	10406403 /*104x64@lt*/ => "1.0", // {1.0: 1.0}
	15604813 /*156x48@blr*/ => "4A.2", // {4A.2: 4A.2}
	15605700 /*156x57@*/ => "4A.1", // {4A.1: 4A.1}
	15609213 /*156x92@blr*/ => "3.1", // {3.1: 3.1}
	15615615 /*156x156@blrt*/ => "2.0", // {2.0: 2.0}
} as Dictionary<Number, String>;

(:datafield, :datafield_hash, :datafield_field_status) const DEFAULT_FIELD_STATUS = 0; // x9
(:datafield, :datafield_hash, :datafield_field_status) const DATAFIELD_HASH_2_FIELD_STATUS = {
	5405415 /*54x54@blrt*/ => 1, // {2.1: 1, 3.2: 1, 4A.3: 1, 4B.3: 1, 5.4: 1}
	7806600 /*78x66@*/ => 2, // {5.1: 2, 5.2: 2}
	// 7809209 /*78x92@bl*/ => 0 /*default*/, // {4B.1: 0}
	// 7809212 /*78x92@br*/ => 0 /*default*/, // {4B.2: 0}
	// 9304903 /*93x49@lt*/ => 0 /*default*/, // {4A.0: 0}
	9306403 /*93x64@lt*/ => 1, // {3.0: 1, 4B.0: 1, 5.0: 1}
	// 9602400 /*96x24@*/ => 0 /*default*/, // {5.3: 0}
	// 10406403 /*104x64@lt*/ => 0 /*default*/, // {1.0: 0}
	// 15604813 /*156x48@blr*/ => 0 /*default*/, // {4A.2: 0}
	// 15605700 /*156x57@*/ => 0 /*default*/, // {4A.1: 0}
	// 15609213 /*156x92@blr*/ => 0 /*default*/, // {3.1: 0}
	// 15615615 /*156x156@blrt*/ => 0 /*default*/, // {2.0: 0}
} as Dictionary<Number, Number>;

(:datafield_detector)
const DEVICE_STATUS = 2;
