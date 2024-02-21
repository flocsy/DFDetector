// GENERATED by https://github.com/flocsy/garmin-dev-tools/tree/main/monkey-generator/ ©2022-2024 by flocsy

import Toybox.Lang;
import Toybox.Graphics;

(:datafield, :datafield_hash, :datafield_field_names) const DEFAULT_FIELD_NAMES = null /*conflict*/; // x10
(:datafield, :datafield_hash, :datafield_field_names) const DATAFIELD_HASH_2_FIELD_NAMES = {
	14009200 /*140x92@*/ => "5B.2|5B.3|7A.3|7A.4|7B.3|7B.4|8.2|8.3|8.4|8.5|9.1|9.2|9.3|9.4|9.5|9.6|10.2|10.3|10.4|10.5|10.6|10.7", // {5B.2: 5B.2, 5B.3: 5B.3, 7A.3: 7A.3, 7A.4: 7A.4, 7B.3: 7B.3, 7B.4: 7B.4, 8.2: 8.2, 8.3: 8.3, 8.4: 8.4, 8.5: 8.5, 9.1: 9.1, 9.2: 9.2, 9.3: 9.3, 9.4: 9.4, 9.5: 9.5, 9.6: 9.6, 10.2: 10.2, 10.3: 10.3, 10.4: 10.4, 10.5: 10.5, 10.6: 10.6, 10.7: 10.7}
	14009300 /*140x93@*/ => "4B.0|4B.1|6A.4|6A.5|6B.0|6B.1|6B.4|6B.5|7A.5|7A.6|7B.0|7B.1|7B.5|7B.6|8.6|8.7|9.7|9.8|10.0|10.1|10.8|10.9", // {4B.0: 4B.0, 4B.1: 4B.1, 6A.4: 6A.4, 6A.5: 6A.5, 6B.0: 6B.0, 6B.1: 6B.1, 6B.4: 6B.4, 6B.5: 6B.5, 7A.5: 7A.5, 7A.6: 7A.6, 7B.0: 7B.0, 7B.1: 7B.1, 7B.5: 7B.5, 7B.6: 7B.6, 8.6: 8.6, 8.7: 8.7, 9.7: 9.7, 9.8: 9.8, 10.0: 10.0, 10.1: 10.1, 10.8: 10.8, 10.9: 10.9}
	28209200 /*282x92@*/ => "5A.1|5A.2|5A.3|6A.1|6A.2|6A.3|6B.3|7A.1|7A.2|8.1", // {5A.1: 5A.1, 5A.2: 5A.2, 5A.3: 5A.3, 6A.1: 6A.1, 6A.2: 6A.2, 6A.3: 6A.3, 6B.3: 6B.3, 7A.1: 7A.1, 7A.2: 7A.2, 8.1: 8.1}
	28209300 /*282x93@*/ => "3B.0|5A.0|5A.4|5B.0|5B.4|6A.0|7A.0|8.0|9.0", // {3B.0: 3B.0, 5A.0: 5A.0, 5A.4: 5A.4, 5B.0: 5B.0, 5B.4: 5B.4, 6A.0: 6A.0, 7A.0: 7A.0, 8.0: 8.0, 9.0: 9.0}
	28211500 /*282x115@*/ => "4A.1|4A.2", // {4A.1: 4A.1, 4A.2: 4A.2}
	28211600 /*282x116@*/ => "4A.0|4A.3", // {4A.0: 4A.0, 4A.3: 4A.3}
	28215400 /*282x154@*/ => "3A.1", // {3A.1: 3A.1}
	28215500 /*282x155@*/ => "3A.0|3A.2", // {3A.0: 3A.0, 3A.2: 3A.2}
	28218600 /*282x186@*/ => "3B.1|4B.2|5B.1|6B.2|7B.2", // {3B.1: 3B.1, 4B.2: 4B.2, 5B.1: 5B.1, 6B.2: 6B.2, 7B.2: 7B.2}
	28218700 /*282x187@*/ => "3B.2|4B.3", // {3B.2: 3B.2, 4B.3: 4B.3}
	28223400 /*282x234@*/ => "2.0|2.1", // {2.0: 2.0, 2.1: 2.1}
	28247000 /*282x470@*/ => "1.0", // {1.0: 1.0}
} as Dictionary<Number, String>;

(:datafield, :datafield_hash, :datafield_field_status) const DEFAULT_FIELD_STATUS = 2; // x8
(:datafield, :datafield_hash, :datafield_field_status) const DATAFIELD_HASH_2_FIELD_STATUS = {
	// 14009200 /*140x92@*/ => 2 /*default*/, // {5B.2: 2, 5B.3: 2, 7A.3: 2, 7A.4: 2, 7B.3: 2, 7B.4: 2, 8.2: 2, 8.3: 2, 8.4: 2, 8.5: 2, 9.1: 2, 9.2: 2, 9.3: 2, 9.4: 2, 9.5: 2, 9.6: 2, 10.2: 2, 10.3: 2, 10.4: 2, 10.5: 2, 10.6: 2, 10.7: 2}
	// 14009300 /*140x93@*/ => 2 /*default*/, // {4B.0: 2, 4B.1: 2, 6A.4: 2, 6A.5: 2, 6B.0: 2, 6B.1: 2, 6B.4: 2, 6B.5: 2, 7A.5: 2, 7A.6: 2, 7B.0: 2, 7B.1: 2, 7B.5: 2, 7B.6: 2, 8.6: 2, 8.7: 2, 9.7: 2, 9.8: 2, 10.0: 2, 10.1: 2, 10.8: 2, 10.9: 2}
	// 28209200 /*282x92@*/ => 2 /*default*/, // {5A.1: 2, 5A.2: 2, 5A.3: 2, 6A.1: 2, 6A.2: 2, 6A.3: 2, 6B.3: 2, 7A.1: 2, 7A.2: 2, 8.1: 2}
	// 28209300 /*282x93@*/ => 2 /*default*/, // {3B.0: 2, 5A.0: 2, 5A.4: 2, 5B.0: 2, 5B.4: 2, 6A.0: 2, 7A.0: 2, 8.0: 2, 9.0: 2}
	// 28211500 /*282x115@*/ => 2 /*default*/, // {4A.1: 2, 4A.2: 2}
	// 28211600 /*282x116@*/ => 2 /*default*/, // {4A.0: 2, 4A.3: 2}
	28215400 /*282x154@*/ => 0, // {3A.1: 0}
	// 28215500 /*282x155@*/ => 2 /*default*/, // {3A.0: 2, 3A.2: 2}
	28218600 /*282x186@*/ => 1, // {3B.1: 1, 4B.2: 1, 5B.1: 1, 6B.2: 1, 7B.2: 1}
	28218700 /*282x187@*/ => 1, // {3B.2: 1, 4B.3: 1}
	// 28223400 /*282x234@*/ => 2 /*default*/, // {2.0: 2, 2.1: 2}
	28247000 /*282x470@*/ => 0, // {1.0: 0}
} as Dictionary<Number, Number>;

(:datafield_detector)
const DEVICE_STATUS = 2;
