// GENERATED by https://github.com/flocsy/garmin-dev-tools/tree/main/monkey-generator/ ©2022-2024 by flocsy

import Toybox.Lang;
import Toybox.Graphics;

(:datafield, :datafield_hash, :datafield_field_names) const DEFAULT_FIELD_NAMES = 1.0; // [1.0, 2.0, 2.1, 3.0, 3.1, 3.2, 4.0, 4.1, 4.2, 4.3] x1
(:datafield, :datafield_hash, :datafield_field_names) const DATAFIELD_HASH_2_FIELD_NAMES = {
	18710901 /*187x109@l*/ => "4.1", // {4.1: 4.1}
	18710904 /*187x109@r*/ => "4.2", // {4.2: 4.2}
	21414113 /*214x141@blr*/ => "3.2", // {3.2: 3.2}
	22014313 /*220x143@blr*/ => "4.3", // {4.3: 4.3}
	39011305 /*390x113@lr*/ => "3.1", // {3.1: 3.1}
	39013207 /*390x132@lrt*/ => "3.0", // {3.0: 3.0}
	39013407 /*390x134@lrt*/ => "4.0", // {4.0: 4.0}
	39019407 /*390x194@lrt*/ => "2.0", // {2.0: 2.0}
	39019413 /*390x194@blr*/ => "2.1", // {2.1: 2.1}
	39039015 /*390x390@blrt*/ => "1.0", // {1.0: 1.0}
} as Dictionary<Number, String>;

(:datafield, :datafield_hash, :datafield_field_status) const DEFAULT_FIELD_STATUS = 0; // x10
(:datafield, :datafield_hash, :datafield_field_status) const DATAFIELD_HASH_2_FIELD_STATUS = {
	// 18710901 /*187x109@l*/ => 0 /*default*/, // {4.1: 0}
	// 18710904 /*187x109@r*/ => 0 /*default*/, // {4.2: 0}
	// 21414113 /*214x141@blr*/ => 0 /*default*/, // {3.2: 0}
	// 22014313 /*220x143@blr*/ => 0 /*default*/, // {4.3: 0}
	// 39011305 /*390x113@lr*/ => 0 /*default*/, // {3.1: 0}
	// 39013207 /*390x132@lrt*/ => 0 /*default*/, // {3.0: 0}
	// 39013407 /*390x134@lrt*/ => 0 /*default*/, // {4.0: 0}
	// 39019407 /*390x194@lrt*/ => 0 /*default*/, // {2.0: 0}
	// 39019413 /*390x194@blr*/ => 0 /*default*/, // {2.1: 0}
	// 39039015 /*390x390@blrt*/ => 0 /*default*/, // {1.0: 0}
} as Dictionary<Number, Number>;

(:datafield_detector)
const DEVICE_STATUS = 0;
