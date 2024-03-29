// GENERATED by https://github.com/flocsy/garmin-dev-tools/tree/main/monkey-generator/ ©2022-2024 by flocsy

import Toybox.Lang;
import Toybox.Graphics;

(:datafield, :datafield_hash, :datafield_field_names) const DEFAULT_FIELD_NAMES = null /*conflict*/; // x9
(:datafield, :datafield_hash, :datafield_field_names) const DATAFIELD_HASH_2_FIELD_NAMES = {
	9905100 /*99x51@*/ => "5B.2|5B.3|7A.3|7A.4|7B.3|7B.4|8.2|8.3|8.4|8.5|9.1|9.2|9.3|9.4|9.5|9.6|10.2|10.3|10.4|10.5|10.6|10.7", // {5B.2: 5B.2, 5B.3: 5B.3, 7A.3: 7A.3, 7A.4: 7A.4, 7B.3: 7B.3, 7B.4: 7B.4, 8.2: 8.2, 8.3: 8.3, 8.4: 8.4, 8.5: 8.5, 9.1: 9.1, 9.2: 9.2, 9.3: 9.3, 9.4: 9.4, 9.5: 9.5, 9.6: 9.6, 10.2: 10.2, 10.3: 10.3, 10.4: 10.4, 10.5: 10.5, 10.6: 10.6, 10.7: 10.7}
	9905200 /*99x52@*/ => "4B.0|4B.1|6A.4|6A.5|6B.0|6B.1|6B.4|6B.5|7A.5|7A.6|7B.0|7B.1|7B.5|7B.6|8.6|8.7|9.7|9.8|10.0|10.1|10.8|10.9", // {4B.0: 4B.0, 4B.1: 4B.1, 6A.4: 6A.4, 6A.5: 6A.5, 6B.0: 6B.0, 6B.1: 6B.1, 6B.4: 6B.4, 6B.5: 6B.5, 7A.5: 7A.5, 7A.6: 7A.6, 7B.0: 7B.0, 7B.1: 7B.1, 7B.5: 7B.5, 7B.6: 7B.6, 8.6: 8.6, 8.7: 8.7, 9.7: 9.7, 9.8: 9.8, 10.0: 10.0, 10.1: 10.1, 10.8: 10.8, 10.9: 10.9}
	20005100 /*200x51@*/ => "5A.1|5A.2|5A.3|6A.1|6A.2|6A.3|6B.3|7A.1|7A.2|8.1", // {5A.1: 5A.1, 5A.2: 5A.2, 5A.3: 5A.3, 6A.1: 6A.1, 6A.2: 6A.2, 6A.3: 6A.3, 6B.3: 6B.3, 7A.1: 7A.1, 7A.2: 7A.2, 8.1: 8.1}
	20005200 /*200x52@*/ => "3B.0|5A.0|5A.4|5B.0|5B.4|6A.0|7A.0|8.0|9.0", // {3B.0: 3B.0, 5A.0: 5A.0, 5A.4: 5A.4, 5B.0: 5B.0, 5B.4: 5B.4, 6A.0: 6A.0, 7A.0: 7A.0, 8.0: 8.0, 9.0: 9.0}
	20006400 /*200x64@*/ => "4A.1|4A.2", // {4A.1: 4A.1, 4A.2: 4A.2}
	20006500 /*200x65@*/ => "4A.0|4A.3", // {4A.0: 4A.0, 4A.3: 4A.3}
	20008700 /*200x87@*/ => "3A.0|3A.1|3A.2", // {3A.0: 3A.0, 3A.1: 3A.1, 3A.2: 3A.2}
	20010500 /*200x105@*/ => "3B.1|3B.2|4B.2|4B.3|5B.1|6B.2|7B.2", // {3B.1: 3B.1, 3B.2: 3B.2, 4B.2: 4B.2, 4B.3: 4B.3, 5B.1: 5B.1, 6B.2: 6B.2, 7B.2: 7B.2}
	20013100 /*200x131@*/ => "2.0|2.1", // {2.0: 2.0, 2.1: 2.1}
	20026500 /*200x265@*/ => "1.0", // {1.0: 1.0}
} as Dictionary<Number, String>;

(:datafield, :datafield_hash, :datafield_field_status) const DEFAULT_FIELD_STATUS = 2; // x9
(:datafield, :datafield_hash, :datafield_field_status) const DATAFIELD_HASH_2_FIELD_STATUS = {
	// 9905100 /*99x51@*/ => 2 /*default*/, // {5B.2: 2, 5B.3: 2, 7A.3: 2, 7A.4: 2, 7B.3: 2, 7B.4: 2, 8.2: 2, 8.3: 2, 8.4: 2, 8.5: 2, 9.1: 2, 9.2: 2, 9.3: 2, 9.4: 2, 9.5: 2, 9.6: 2, 10.2: 2, 10.3: 2, 10.4: 2, 10.5: 2, 10.6: 2, 10.7: 2}
	// 9905200 /*99x52@*/ => 2 /*default*/, // {4B.0: 2, 4B.1: 2, 6A.4: 2, 6A.5: 2, 6B.0: 2, 6B.1: 2, 6B.4: 2, 6B.5: 2, 7A.5: 2, 7A.6: 2, 7B.0: 2, 7B.1: 2, 7B.5: 2, 7B.6: 2, 8.6: 2, 8.7: 2, 9.7: 2, 9.8: 2, 10.0: 2, 10.1: 2, 10.8: 2, 10.9: 2}
	// 20005100 /*200x51@*/ => 2 /*default*/, // {5A.1: 2, 5A.2: 2, 5A.3: 2, 6A.1: 2, 6A.2: 2, 6A.3: 2, 6B.3: 2, 7A.1: 2, 7A.2: 2, 8.1: 2}
	// 20005200 /*200x52@*/ => 2 /*default*/, // {3B.0: 2, 5A.0: 2, 5A.4: 2, 5B.0: 2, 5B.4: 2, 6A.0: 2, 7A.0: 2, 8.0: 2, 9.0: 2}
	// 20006400 /*200x64@*/ => 2 /*default*/, // {4A.1: 2, 4A.2: 2}
	// 20006500 /*200x65@*/ => 2 /*default*/, // {4A.0: 2, 4A.3: 2}
	// 20008700 /*200x87@*/ => 2 /*default*/, // {3A.0: 2, 3A.1: 2, 3A.2: 2}
	// 20010500 /*200x105@*/ => 2 /*default*/, // {3B.1: 2, 3B.2: 2, 4B.2: 2, 4B.3: 2, 5B.1: 2, 6B.2: 2, 7B.2: 2}
	// 20013100 /*200x131@*/ => 2 /*default*/, // {2.0: 2, 2.1: 2}
	20026500 /*200x265@*/ => 0, // {1.0: 0}
} as Dictionary<Number, Number>;

(:datafield_detector)
const DEVICE_STATUS = 2;
