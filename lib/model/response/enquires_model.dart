class EnquiresModel {
  final String? message;
  final bool? success;
  final List<Requests>? requests;
  final Pagination? pagination;

  EnquiresModel({
    this.message,
    this.success,
    this.requests,
    this.pagination,
  });

  EnquiresModel.fromJson(Map<String, dynamic> json)
      : message = json['message'] as String?,
        success = json['success'] as bool?,
        requests = (json['requests'] as List?)
            ?.map((dynamic e) => Requests.fromJson(e as Map<String, dynamic>))
            .toList(),
        pagination = (json['pagination'] as Map<String, dynamic>?) != null
            ? Pagination.fromJson(json['pagination'] as Map<String, dynamic>)
            : null;

  Map<String, dynamic> toJson() => {
        'message': message,
        'success': success,
        'requests': requests?.map((e) => e.toJson()).toList(),
        'pagination': pagination?.toJson()
      };
}

class Requests {
  final String? id;
  final String? vendor;
  final Store? store;
  final List<Request>? request;
  final String? createdAt;
  final String? updatedAt;
  final int? v;

  Requests({
    this.id,
    this.vendor,
    this.store,
    this.request,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  Requests.fromJson(Map<String, dynamic> json)
      : id = json['_id'] as String?,
        vendor = json['vendor'] as String?,
        store = (json['store'] as Map<String, dynamic>?) != null
            ? Store.fromJson(json['store'] as Map<String, dynamic>)
            : null,
        request = (json['request'] as List?)
            ?.map((dynamic e) => Request.fromJson(e as Map<String, dynamic>))
            .toList(),
        createdAt = json['createdAt'] as String?,
        updatedAt = json['updatedAt'] as String?,
        v = json['__v'] as int?;

  Map<String, dynamic> toJson() => {
        '_id': id,
        'vendor': vendor,
        'store': store?.toJson(),
        'request': request?.map((e) => e.toJson()).toList(),
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '__v': v
      };
}

class Store {
  final Businessdetails? businessdetails;
  final Location? location;
  final String? id;

  Store({
    this.businessdetails,
    this.location,
    this.id,
  });

  Store.fromJson(Map<String, dynamic> json)
      : businessdetails =
            (json['businessdetails'] as Map<String, dynamic>?) != null
                ? Businessdetails.fromJson(
                    json['businessdetails'] as Map<String, dynamic>)
                : null,
        location = (json['location'] as Map<String, dynamic>?) != null
            ? Location.fromJson(json['location'] as Map<String, dynamic>)
            : null,
        id = json['_id'] as String?;

  Map<String, dynamic> toJson() => {
        'businessdetails': businessdetails?.toJson(),
        'location': location?.toJson(),
        '_id': id
      };
}

class Businessdetails {
  final String? businessName;
  final String? description;
  final String? sector;
  final String? category;
  final String? personName;
  final String? mobile;
  final String? email;
  final dynamic recieveOnWhatsapp;
  final String? countrycode;

  Businessdetails({
    this.businessName,
    this.description,
    this.sector,
    this.category,
    this.personName,
    this.mobile,
    this.email,
    this.recieveOnWhatsapp,
    this.countrycode,
  });

  Businessdetails.fromJson(Map<String, dynamic> json)
      : businessName = json['businessName'] as String?,
        description = json['description'] as String?,
        sector = json['sector'] as String?,
        category = json['category'] as String?,
        personName = json['personName'] as String?,
        mobile = json['mobile'] as String?,
        email = json['email'] as String?,
        recieveOnWhatsapp = json['recieveOnWhatsapp'],
        countrycode = json['countrycode'] as String?;

  Map<String, dynamic> toJson() => {
        'businessName': businessName,
        'description': description,
        'sector': sector,
        'category': category,
        'personName': personName,
        'mobile': mobile,
        'email': email,
        'recieveOnWhatsapp': recieveOnWhatsapp,
        'countrycode': countrycode
      };
}

class Location {
  final String? completeAddress;
  final int? pincode;
  final String? city;
  final String? place;
  final String? formattedAddress;
  final String? state;
  final double? lat;
  final double? lng;

  Location({
    this.completeAddress,
    this.pincode,
    this.city,
    this.place,
    this.formattedAddress,
    this.state,
    this.lat,
    this.lng,
  });

  Location.fromJson(Map<String, dynamic> json)
      : completeAddress = json['completeAddress'] as String?,
        pincode = json['pincode'] as int?,
        city = json['city'] as String?,
        place = json['place'] as String?,
        formattedAddress = json['formatted_address'] as String?,
        state = json['state'] as String?,
        lat = json['lat'] as double?,
        lng = json['lng'] as double?;

  Map<String, dynamic> toJson() => {
        'completeAddress': completeAddress,
        'pincode': pincode,
        'city': city,
        'place': place,
        'formatted_address': formattedAddress,
        'state': state,
        'lat': lat,
        'lng': lng
      };
}

class Request {
  final String? name;
  final String? email;
  final String? phonenumber;
  final String? evendate;
  final int? totalguest;
  final String? message;
  final String? id;

  Request({
    this.name,
    this.email,
    this.phonenumber,
    this.evendate,
    this.totalguest,
    this.message,
    this.id,
  });

  Request.fromJson(Map<String, dynamic> json)
      : name = json['name'] as String?,
        email = json['email'] as String?,
        phonenumber = json['phonenumber'] as String?,
        evendate = json['evendate'] as String?,
        totalguest = json['totalguest'] as int?,
        message = json['message'] as String?,
        id = json['_id'] as String?;

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
        'phonenumber': phonenumber,
        'evendate': evendate,
        'totalguest': totalguest,
        'message': message,
        '_id': id
      };
}

class Pagination {
  final int? limit;
  final int? page;
  final int? totalpage;

  Pagination({
    this.limit,
    this.page,
    this.totalpage,
  });

  Pagination.fromJson(Map<String, dynamic> json)
      : limit = json['limit'] as int?,
        page = json['page'] as int?,
        totalpage = json['totalpage'] as int?;

  Map<String, dynamic> toJson() =>
      {'limit': limit, 'page': page, 'totalpage': totalpage};
}
