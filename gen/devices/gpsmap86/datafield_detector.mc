// GENERATED by https://github.com/flocsy/garmin-dev-tools/tree/main/monkey-generator/ ©2022-2024 by flocsy

import Toybox.Lang;
import Toybox.Graphics;

(:datafield, :datafield_hash, :datafield_field_names) const DEFAULT_FIELD_NAMES = null /*conflict*/; // x4
(:datafield, :datafield_hash, :datafield_field_names) const DATAFIELD_HASH_2_FIELD_NAMES = {
	11805200 /*118x52@*/ => "2.0|2.1", // {2.0: 2.0, 2.1: 2.1}
	11806000 /*118x60@*/ => "6A.2|6A.3|6A.4|6A.5|6B.0|6B.1|6B.2|6B.3|9A.1|9A.2|9A.3|9A.4|9A.5|9A.6|9A.7|9A.8|9B.0|9B.1|9B.2|9B.3|9B.5|9B.6|9B.7|9B.8|10.0|10.1|10.2|10.3|12.0|12.1|12.2|12.3|12.4|12.5|12.6|12.7|12.8|12.9|12.10|12.11", // {6A.2: 6A.2, 6A.3: 6A.3, 6A.4: 6A.4, 6A.5: 6A.5, 6B.0: 6B.0, 6B.1: 6B.1, 6B.2: 6B.2, 6B.3: 6B.3, 9A.1: 9A.1, 9A.2: 9A.2, 9A.3: 9A.3, 9A.4: 9A.4, 9A.5: 9A.5, 9A.6: 9A.6, 9A.7: 9A.7, 9A.8: 9A.8, 9B.0: 9B.0, 9B.1: 9B.1, 9B.2: 9B.2, 9B.3: 9B.3, 9B.5: 9B.5, 9B.6: 9B.6, 9B.7: 9B.7, 9B.8: 9B.8, 10.0: 10.0, 10.1: 10.1, 10.2: 10.2, 10.3: 10.3, 12.0: 12.0, 12.1: 12.1, 12.2: 12.2, 12.3: 12.3, 12.4: 12.4, 12.5: 12.5, 12.6: 12.6, 12.7: 12.7, 12.8: 12.8, 12.9: 12.9, 12.10: 12.10, 12.11: 12.11}
	11808000 /*118x80@*/ => "7.1|7.2|7.3|7.4|7.5|7.6|10.4|10.5|10.6|10.7|10.8|10.9", // {7.1: 7.1, 7.2: 7.2, 7.3: 7.3, 7.4: 7.4, 7.5: 7.5, 7.6: 7.6, 10.4: 10.4, 10.5: 10.5, 10.6: 10.6, 10.7: 10.7, 10.8: 10.8, 10.9: 10.9}
	23812200 /*238x122@*/ => "3.0|3.1|3.2|6A.0|6A.1|6B.4|6B.5|7.0|9A.0|9B.4", // {3.0: 3.0, 3.1: 3.1, 3.2: 3.2, 6A.0: 6A.0, 6A.1: 6A.1, 6B.4: 6B.4, 6B.5: 6B.5, 7.0: 7.0, 9A.0: 9A.0, 9B.4: 9B.4}
} as Dictionary<Number, String>;

(:datafield, :datafield_hash, :datafield_field_status) const DEFAULT_FIELD_STATUS = 2; // x4
(:datafield, :datafield_hash, :datafield_field_status) const DATAFIELD_HASH_2_FIELD_STATUS = {
	// 11805200 /*118x52@*/ => 2 /*default*/, // {2.0: 2, 2.1: 2}
	// 11806000 /*118x60@*/ => 2 /*default*/, // {6A.2: 2, 6A.3: 2, 6A.4: 2, 6A.5: 2, 6B.0: 2, 6B.1: 2, 6B.2: 2, 6B.3: 2, 9A.1: 2, 9A.2: 2, 9A.3: 2, 9A.4: 2, 9A.5: 2, 9A.6: 2, 9A.7: 2, 9A.8: 2, 9B.0: 2, 9B.1: 2, 9B.2: 2, 9B.3: 2, 9B.5: 2, 9B.6: 2, 9B.7: 2, 9B.8: 2, 10.0: 2, 10.1: 2, 10.2: 2, 10.3: 2, 12.0: 2, 12.1: 2, 12.2: 2, 12.3: 2, 12.4: 2, 12.5: 2, 12.6: 2, 12.7: 2, 12.8: 2, 12.9: 2, 12.10: 2, 12.11: 2}
	// 11808000 /*118x80@*/ => 2 /*default*/, // {7.1: 2, 7.2: 2, 7.3: 2, 7.4: 2, 7.5: 2, 7.6: 2, 10.4: 2, 10.5: 2, 10.6: 2, 10.7: 2, 10.8: 2, 10.9: 2}
	// 23812200 /*238x122@*/ => 2 /*default*/, // {3.0: 2, 3.1: 2, 3.2: 2, 6A.0: 2, 6A.1: 2, 6B.4: 2, 6B.5: 2, 7.0: 2, 9A.0: 2, 9B.4: 2}
} as Dictionary<Number, Number>;

(:datafield_detector)
const DEVICE_STATUS = 2;
