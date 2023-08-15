import 'package:bookly/features/home/model/volume_info.dart';
import 'package:bookly/features/home/model/sale_info.dart';
import 'package:bookly/features/home/model/access_info.dart';
import 'package:bookly/features/home/model/search_info.dart';

class Items {

  final String kind;
  final String id;
  final String etag;
  final String selfLink;
  final VolumeInfo volumeInfo;
  final SaleInfo saleInfo;
  final AccessInfo accessInfo;
  final SearchInfo searchInfo;

	Items.fromJsonMap(Map<String, dynamic> map): 
		kind = map["kind"],
		id = map["id"],
		etag = map["etag"],
		selfLink = map["selfLink"],
		volumeInfo = VolumeInfo.fromJson(map["volumeInfo"]),
		saleInfo = SaleInfo.fromJson(map["saleInfo"]),
		accessInfo = AccessInfo.fromJson(map["accessInfo"]),
		searchInfo = SearchInfo.fromJson(map["searchInfo"]);

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['kind'] = kind;
		data['id'] = id;
		data['etag'] = etag;
		data['selfLink'] = selfLink;
		data['volumeInfo'] = volumeInfo == null ? null : volumeInfo.toJson();
		data['saleInfo'] = saleInfo == null ? null : saleInfo.toJson();
		data['accessInfo'] = accessInfo == null ? null : accessInfo.toJson();
		data['searchInfo'] = searchInfo == null ? null : searchInfo.toJson();
		return data;
	}
}
