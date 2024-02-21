// GENERATED by https://github.com/flocsy/garmin-dev-tools/tree/main/monkey-generator/ ©2022-2024 by flocsy

import Toybox.Lang;
import Toybox.Graphics;

(:datafield, :datafield_hash, :datafield_field_names) const DEFAULT_FIELD_NAMES = 1.0; // [1.0, 2.0, 2.1, 3.0, 3.1, 3.2, null /*conflict*/] x1
(:datafield, :datafield_hash, :datafield_field_names) const DATAFIELD_HASH_2_FIELD_NAMES = {
	14806700 /*148x67@*/ => "3.0|3.1|3.2", // {3.0: 3.0, 3.1: 3.1, 3.2: 3.2}
	14810100 /*148x101@*/ => "2.1", // {2.1: 2.1}
	14810200 /*148x102@*/ => "2.0", // {2.0: 2.0}
	14820500 /*148x205@*/ => "1.0", // {1.0: 1.0}
} as Dictionary<Number, String>;

(:datafield, :datafield_hash, :datafield_field_status) const DEFAULT_FIELD_STATUS = 0; // x3
(:datafield, :datafield_hash, :datafield_field_status) const DATAFIELD_HASH_2_FIELD_STATUS = {
	14806700 /*148x67@*/ => 2, // {3.0: 2, 3.1: 2, 3.2: 2}
	// 14810100 /*148x101@*/ => 0 /*default*/, // {2.1: 0}
	// 14810200 /*148x102@*/ => 0 /*default*/, // {2.0: 0}
	// 14820500 /*148x205@*/ => 0 /*default*/, // {1.0: 0}
} as Dictionary<Number, Number>;

(:datafield_detector)
const DEVICE_STATUS = 2;
