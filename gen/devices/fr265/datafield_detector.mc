// GENERATED by https://github.com/flocsy/garmin-dev-tools/tree/main/monkey-generator/ ©2022-2024 by flocsy

import Toybox.Lang;
import Toybox.Graphics;

(:datafield, :datafield_hash, :datafield_field_names) const DEFAULT_FIELD_NAMES = null /*conflict*/; // x7
(:datafield, :datafield_hash, :datafield_field_names) const DATAFIELD_HASH_2_FIELD_NAMES = {
	20610001 /*206x100@l*/ => "6.1", // {6.1: 6.1}
	20610004 /*206x100@r*/ => "6.2", // {6.2: 6.2}
	20610201 /*206x102@l*/ => "5.2|6.3", // {5.2: 5.2, 6.3: 6.3}
	20610204 /*206x102@r*/ => "5.3|6.4", // {5.3: 5.3, 6.4: 6.4}
	20612301 /*206x123@l*/ => "4A.2", // {4A.2: 4A.2}
	20612304 /*206x123@r*/ => "4A.1", // {4A.1: 4A.1}
	20620603 /*206x206@lt*/ => "4B.0", // {4B.0: 4B.0}
	20620606 /*206x206@rt*/ => "4B.1", // {4B.1: 4B.1}
	20620609 /*206x206@bl*/ => "4B.2", // {4B.2: 4B.2}
	20620612 /*206x206@br*/ => "4B.3", // {4B.3: 4B.3}
	20620709 /*206x207@bl*/ => "3C.1", // {3C.1: 3C.1}
	20620712 /*206x207@br*/ => "3C.2", // {3C.2: 3C.2}
	41610005 /*416x100@lr*/ => "4C.1|5.1", // {4C.1: 4C.1, 5.1: 5.1}
	41610205 /*416x102@lr*/ => "4C.2", // {4C.2: 4C.2}
	41610213 /*416x102@blr*/ => "4C.3|5.4", // {4C.3: 4C.3, 5.4: 5.4}
	41610307 /*416x103@lrt*/ => "4C.0|5.0|6.0", // {4C.0: 4C.0, 5.0: 5.0, 6.0: 6.0}
	41610313 /*416x103@blr*/ => "6.5", // {6.5: 6.5}
	41611805 /*416x118@lr*/ => "3A.1", // {3A.1: 3A.1}
	41613213 /*416x132@blr*/ => "3B.2", // {3B.2: 3B.2}
	41613407 /*416x134@lrt*/ => "3B.0", // {3B.0: 3B.0}
	41613913 /*416x139@blr*/ => "4A.3", // {4A.3: 4A.3}
	41614405 /*416x144@lr*/ => "3B.1", // {3B.1: 3B.1}
	41614807 /*416x148@lrt*/ => "3A.0|4A.0", // {3A.0: 3A.0, 4A.0: 4A.0}
	41614813 /*416x148@blr*/ => "3A.2", // {3A.2: 3A.2}
	41620607 /*416x206@lrt*/ => "2.0|3C.0", // {2.0: 2.0, 3C.0: 3C.0}
	41620713 /*416x207@blr*/ => "2.1", // {2.1: 2.1}
	41641615 /*416x416@blrt*/ => "1.0", // {1.0: 1.0}
} as Dictionary<Number, String>;

(:datafield, :datafield_hash, :datafield_field_status) const DEFAULT_FIELD_STATUS = 0; // x20
(:datafield, :datafield_hash, :datafield_field_status) const DATAFIELD_HASH_2_FIELD_STATUS = {
	// 20610001 /*206x100@l*/ => 0 /*default*/, // {6.1: 0}
	// 20610004 /*206x100@r*/ => 0 /*default*/, // {6.2: 0}
	20610201 /*206x102@l*/ => 1, // {5.2: 1, 6.3: 1}
	20610204 /*206x102@r*/ => 1, // {5.3: 1, 6.4: 1}
	// 20612301 /*206x123@l*/ => 0 /*default*/, // {4A.2: 0}
	// 20612304 /*206x123@r*/ => 0 /*default*/, // {4A.1: 0}
	// 20620603 /*206x206@lt*/ => 0 /*default*/, // {4B.0: 0}
	// 20620606 /*206x206@rt*/ => 0 /*default*/, // {4B.1: 0}
	// 20620609 /*206x206@bl*/ => 0 /*default*/, // {4B.2: 0}
	// 20620612 /*206x206@br*/ => 0 /*default*/, // {4B.3: 0}
	// 20620709 /*206x207@bl*/ => 0 /*default*/, // {3C.1: 0}
	// 20620712 /*206x207@br*/ => 0 /*default*/, // {3C.2: 0}
	41610005 /*416x100@lr*/ => 1, // {4C.1: 1, 5.1: 1}
	// 41610205 /*416x102@lr*/ => 0 /*default*/, // {4C.2: 0}
	41610213 /*416x102@blr*/ => 1, // {4C.3: 1, 5.4: 1}
	41610307 /*416x103@lrt*/ => 1, // {4C.0: 1, 5.0: 1, 6.0: 1}
	// 41610313 /*416x103@blr*/ => 0 /*default*/, // {6.5: 0}
	// 41611805 /*416x118@lr*/ => 0 /*default*/, // {3A.1: 0}
	// 41613213 /*416x132@blr*/ => 0 /*default*/, // {3B.2: 0}
	// 41613407 /*416x134@lrt*/ => 0 /*default*/, // {3B.0: 0}
	// 41613913 /*416x139@blr*/ => 0 /*default*/, // {4A.3: 0}
	// 41614405 /*416x144@lr*/ => 0 /*default*/, // {3B.1: 0}
	41614807 /*416x148@lrt*/ => 1, // {3A.0: 1, 4A.0: 1}
	// 41614813 /*416x148@blr*/ => 0 /*default*/, // {3A.2: 0}
	41620607 /*416x206@lrt*/ => 1, // {2.0: 1, 3C.0: 1}
	// 41620713 /*416x207@blr*/ => 0 /*default*/, // {2.1: 0}
	// 41641615 /*416x416@blrt*/ => 0 /*default*/, // {1.0: 0}
} as Dictionary<Number, Number>;

(:datafield_detector)
const DEVICE_STATUS = 1;
