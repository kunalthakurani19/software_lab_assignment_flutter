class GetStoreByIdModel {
  final dynamic message;
  final dynamic success;
  final List<Stores>? stores;

  GetStoreByIdModel({
    this.message,
    this.success,
    this.stores,
  });

  GetStoreByIdModel.fromJson(Map<dynamic, dynamic> json)
      : message = json['message'] as dynamic,
        success = json['success'] as dynamic,
        stores = (json['stores'] as List?)
            ?.map((dynamic e) => Stores.fromJson(e as Map<dynamic, dynamic>))
            .toList();

  Map<dynamic, dynamic> toJson() => {
        'message': message,
        'success': success,
        'stores': stores?.map((e) => e.toJson()).toList()
      };
}

class Stores {
  final dynamic id;
  final dynamic storeToken;
  final dynamic totalTabs;
  final dynamic completed;
  final dynamic purcentage;
  final dynamic isUpdatedAble;
  final List<dynamic>? completedKeys;
  final List<dynamic>? totalKeys;
  final dynamic isPublished;
  final Store? store;

  Stores({
    this.id,
    this.storeToken,
    this.totalTabs,
    this.completed,
    this.purcentage,
    this.isUpdatedAble,
    this.completedKeys,
    this.totalKeys,
    this.isPublished,
    this.store,
  });

  Stores.fromJson(Map<dynamic, dynamic> json)
      : id = json['_id'] as dynamic,
        storeToken = json['storeToken'] as dynamic,
        totalTabs = json['totalTabs'] as dynamic,
        completed = json['completed'] as dynamic,
        purcentage = json['purcentage'] as dynamic,
        isUpdatedAble = json['isUpdatedAble'] as dynamic,
        completedKeys = (json['completedKeys'] as List?)
            ?.map((dynamic e) => e as dynamic)
            .toList(),
        totalKeys = (json['totalKeys'] as List?)
            ?.map((dynamic e) => e as dynamic)
            .toList(),
        isPublished = json['isPublished'] as dynamic,
        store = (json['store'] as Map<dynamic, dynamic>?) != null
            ? Store.fromJson(json['store'] as Map<dynamic, dynamic>)
            : null;

  Map<dynamic, dynamic> toJson() => {
        '_id': id,
        'storeToken': storeToken,
        'totalTabs': totalTabs,
        'completed': completed,
        'purcentage': purcentage,
        'isUpdatedAble': isUpdatedAble,
        'completedKeys': completedKeys,
        'totalKeys': totalKeys,
        'isPublished': isPublished,
        'store': store?.toJson()
      };
}

class Store {
  final Businessdetails? businessdetails;
  final Location? location;
  final Socialnetwork? socialnetwork;
  final dynamic id;
  final dynamic isPublished;
  final List<Availibility>? availibility;
  final List<Photos>? photos;
  final List<Video>? video;
  final List<Menus>? menus;
  final Faq? faq;
  final List<dynamic>? events;

  Store({
    this.businessdetails,
    this.location,
    this.socialnetwork,
    this.id,
    this.isPublished,
    this.availibility,
    this.photos,
    this.video,
    this.menus,
    this.faq,
    this.events,
  });

  Store.fromJson(Map<dynamic, dynamic> json)
      : businessdetails =
            (json['businessdetails'] as Map<dynamic, dynamic>?) != null
                ? Businessdetails.fromJson(
                    json['businessdetails'] as Map<dynamic, dynamic>)
                : null,
        location = (json['location'] as Map<dynamic, dynamic>?) != null
            ? Location.fromJson(json['location'] as Map<dynamic, dynamic>)
            : null,
        socialnetwork =
            (json['socialnetwork'] as Map<dynamic, dynamic>?) != null
                ? Socialnetwork.fromJson(
                    json['socialnetwork'] as Map<dynamic, dynamic>)
                : null,
        id = json['_id'] as dynamic,
        isPublished = json['isPublished'] as dynamic,
        availibility = (json['availibility'] as List?)
            ?.map((dynamic e) =>
                Availibility.fromJson(e as Map<dynamic, dynamic>))
            .toList(),
        photos = (json['photos'] as List?)
            ?.map((dynamic e) => Photos.fromJson(e as Map<dynamic, dynamic>))
            .toList(),
        video = (json['video'] as List?)
            ?.map((dynamic e) => Video.fromJson(e as Map<dynamic, dynamic>))
            .toList(),
        menus = (json['menus'] as List?)
            ?.map((dynamic e) => Menus.fromJson(e as Map<dynamic, dynamic>))
            .toList(),
        faq = (json['faq'] as Map<dynamic, dynamic>?) != null
            ? Faq.fromJson(json['faq'] as Map<dynamic, dynamic>)
            : null,
        events = json['events'] as List?;

  Map<dynamic, dynamic> toJson() => {
        'businessdetails': businessdetails?.toJson(),
        'location': location?.toJson(),
        'socialnetwork': socialnetwork?.toJson(),
        '_id': id,
        'isPublished': isPublished,
        'availibility': availibility?.map((e) => e.toJson()).toList(),
        'photos': photos?.map((e) => e.toJson()).toList(),
        'video': video?.map((e) => e.toJson()).toList(),
        'menus': menus?.map((e) => e.toJson()).toList(),
        'faq': faq?.toJson(),
        'events': events
      };
}

class Businessdetails {
  final dynamic businessName;
  final dynamic description;
  final dynamic sector;
  final dynamic category;
  final dynamic personName;
  final dynamic mobile;
  final dynamic email;
  final dynamic recieveOnWhatsapp;
  final dynamic countrycode;

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

  Businessdetails.fromJson(Map<dynamic, dynamic> json)
      : businessName = json['businessName'] as dynamic,
        description = json['description'] as dynamic,
        sector = json['sector'] as dynamic,
        category = json['category'] as dynamic,
        personName = json['personName'] as dynamic,
        mobile = json['mobile'] as dynamic,
        email = json['email'] as dynamic,
        recieveOnWhatsapp = json['recieveOnWhatsapp'] as dynamic,
        countrycode = json['countrycode'] as dynamic;

  Map<dynamic, dynamic> toJson() => {
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
  final dynamic completeAddress;
  final dynamic pincode;
  final dynamic city;
  final dynamic place;
  final dynamic formattedAddress;
  final dynamic state;
  final dynamic lat;
  final dynamic lng;

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

  Location.fromJson(Map<dynamic, dynamic> json)
      : completeAddress = json['completeAddress'] as dynamic,
        pincode = json['pincode'] as dynamic,
        city = json['city'] as dynamic,
        place = json['place'] as dynamic,
        formattedAddress = json['formatted_address'] as dynamic,
        state = json['state'] as dynamic,
        lat = json['lat'] as dynamic,
        lng = json['lng'] as dynamic;

  Map<dynamic, dynamic> toJson() => {
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

class Socialnetwork {
  final dynamic facebook;
  final dynamic twitter;
  final dynamic pinterest;
  final dynamic instagram;

  Socialnetwork({
    this.facebook,
    this.twitter,
    this.pinterest,
    this.instagram,
  });

  Socialnetwork.fromJson(Map<dynamic, dynamic> json)
      : facebook = json['facebook'] as dynamic,
        twitter = json['twitter'] as dynamic,
        pinterest = json['pinterest'] as dynamic,
        instagram = json['instagram'] as dynamic;

  Map<dynamic, dynamic> toJson() => {
        'facebook': facebook,
        'twitter': twitter,
        'pinterest': pinterest,
        'instagram': instagram
      };
}

class Availibility {
  final dynamic startDate;
  final dynamic endDate;
  final dynamic uuid;
  final dynamic id;

  Availibility({
    this.startDate,
    this.endDate,
    this.uuid,
    this.id,
  });

  Availibility.fromJson(Map<dynamic, dynamic> json)
      : startDate = json['startDate'] as dynamic,
        endDate = json['endDate'] as dynamic,
        uuid = json['uuid'] as dynamic,
        id = json['_id'] as dynamic;

  Map<dynamic, dynamic> toJson() =>
      {'startDate': startDate, 'endDate': endDate, 'uuid': uuid, '_id': id};
}

class Photos {
  final dynamic url;
  final dynamic uuid;
  final dynamic id;

  Photos({
    this.url,
    this.uuid,
    this.id,
  });

  Photos.fromJson(Map<dynamic, dynamic> json)
      : url = json['url'] as dynamic,
        uuid = json['uuid'] as dynamic,
        id = json['_id'] as dynamic;

  Map<dynamic, dynamic> toJson() => {'url': url, 'uuid': uuid, '_id': id};
}

class Video {
  final dynamic url;
  final dynamic uuid;
  final dynamic id;

  Video({
    this.url,
    this.uuid,
    this.id,
  });

  Video.fromJson(Map<dynamic, dynamic> json)
      : url = json['url'] as dynamic,
        uuid = json['uuid'] as dynamic,
        id = json['_id'] as dynamic;

  Map<dynamic, dynamic> toJson() => {'url': url, 'uuid': uuid, '_id': id};
}

class Menus {
  final dynamic menuName;
  final dynamic price;
  final dynamic menuDetails;
  final dynamic uuid;
  final dynamic id;

  Menus({
    this.menuName,
    this.price,
    this.menuDetails,
    this.uuid,
    this.id,
  });

  Menus.fromJson(Map<dynamic, dynamic> json)
      : menuName = json['menuName'] as dynamic,
        price = json['price'] as dynamic,
        menuDetails = json['menuDetails'] as dynamic,
        uuid = json['uuid'] as dynamic,
        id = json['_id'] as dynamic;

  Map<dynamic, dynamic> toJson() => {
        'menuName': menuName,
        'price': price,
        'menuDetails': menuDetails,
        'uuid': uuid,
        '_id': id
      };
}

class Faq {
  final dynamic platePricing;
  final GuestAccomodation? guestAccomodation;
  final Covid19Enabled? covid19Enabled;
  final MenuCaterings? menuCaterings;
  final EventSpaces? eventSpaces;

  Faq({
    this.platePricing,
    this.guestAccomodation,
    this.covid19Enabled,
    this.menuCaterings,
    this.eventSpaces,
  });

  Faq.fromJson(Map<dynamic, dynamic> json)
      : platePricing = json['platePricing'] as dynamic,
        guestAccomodation =
            (json['guestAccomodation'] as Map<dynamic, dynamic>?) != null
                ? GuestAccomodation.fromJson(
                    json['guestAccomodation'] as Map<dynamic, dynamic>)
                : null,
        covid19Enabled =
            (json['covid19Enabled'] as Map<dynamic, dynamic>?) != null
                ? Covid19Enabled.fromJson(
                    json['covid19Enabled'] as Map<dynamic, dynamic>)
                : null,
        menuCaterings =
            (json['menuCaterings'] as Map<dynamic, dynamic>?) != null
                ? MenuCaterings.fromJson(
                    json['menuCaterings'] as Map<dynamic, dynamic>)
                : null,
        eventSpaces = (json['eventSpaces'] as Map<dynamic, dynamic>?) != null
            ? EventSpaces.fromJson(json['eventSpaces'] as Map<dynamic, dynamic>)
            : null;

  Map<dynamic, dynamic> toJson() => {
        'platePricing': platePricing,
        'guestAccomodation': guestAccomodation?.toJson(),
        'covid19Enabled': covid19Enabled?.toJson(),
        'menuCaterings': menuCaterings?.toJson(),
        'eventSpaces': eventSpaces?.toJson()
      };
}

class GuestAccomodation {
  final dynamic min;
  final dynamic max;

  GuestAccomodation({
    this.min,
    this.max,
  });

  GuestAccomodation.fromJson(Map<dynamic, dynamic> json)
      : min = json['min'] as dynamic,
        max = json['max'] as dynamic;

  Map<dynamic, dynamic> toJson() => {'min': min, 'max': max};
}

class Covid19Enabled {
  final dynamic informationNotAvailable;
  final dynamic notOperational;
  final dynamic yes;

  Covid19Enabled({
    this.informationNotAvailable,
    this.notOperational,
    this.yes,
  });

  Covid19Enabled.fromJson(Map<dynamic, dynamic> json)
      : informationNotAvailable = json['informationNotAvailable'] as dynamic,
        notOperational = json['notOperational'] as dynamic,
        yes = json['yes'] as dynamic;

  Map<dynamic, dynamic> toJson() => {
        'informationNotAvailable': informationNotAvailable,
        'notOperational': notOperational,
        'yes': yes
      };
}

class MenuCaterings {
  final dynamic northIndian;
  final dynamic italian;
  final dynamic chinese;
  final dynamic southIndian;
  final dynamic garlicOnionFree;
  final dynamic liveFoodCounters;
  final dynamic chaat;
  final dynamic seafood;
  final dynamic drinks;

  MenuCaterings({
    this.northIndian,
    this.italian,
    this.chinese,
    this.southIndian,
    this.garlicOnionFree,
    this.liveFoodCounters,
    this.chaat,
    this.seafood,
    this.drinks,
  });

  MenuCaterings.fromJson(Map<dynamic, dynamic> json)
      : northIndian = json['northIndian'] as dynamic,
        italian = json['italian'] as dynamic,
        chinese = json['chinese'] as dynamic,
        southIndian = json['southIndian'] as dynamic,
        garlicOnionFree = json['garlicOnionFree'] as dynamic,
        liveFoodCounters = json['liveFoodCounters'] as dynamic,
        chaat = json['chaat'] as dynamic,
        seafood = json['seafood'] as dynamic,
        drinks = json['drinks'] as dynamic;

  Map<dynamic, dynamic> toJson() => {
        'northIndian': northIndian,
        'italian': italian,
        'chinese': chinese,
        'southIndian': southIndian,
        'garlicOnionFree': garlicOnionFree,
        'liveFoodCounters': liveFoodCounters,
        'chaat': chaat,
        'seafood': seafood,
        'drinks': drinks
      };
}

class EventSpaces {
  final dynamic banquet;
  final dynamic hotel;
  final dynamic farmHouse;
  final dynamic lawn;
  final dynamic resort;
  final dynamic marriageGarden;
  final dynamic palace;
  final dynamic mandapam;
  final dynamic marriageHalls;

  EventSpaces({
    this.banquet,
    this.hotel,
    this.farmHouse,
    this.lawn,
    this.resort,
    this.marriageGarden,
    this.palace,
    this.mandapam,
    this.marriageHalls,
  });

  EventSpaces.fromJson(Map<dynamic, dynamic> json)
      : banquet = json['banquet'] as dynamic,
        hotel = json['hotel'] as dynamic,
        farmHouse = json['farmHouse'] as dynamic,
        lawn = json['lawn'] as dynamic,
        resort = json['resort'] as dynamic,
        marriageGarden = json['marriageGarden'] as dynamic,
        palace = json['palace'] as dynamic,
        mandapam = json['mandapam'] as dynamic,
        marriageHalls = json['marriageHalls'] as dynamic;

  Map<dynamic, dynamic> toJson() => {
        'banquet': banquet,
        'hotel': hotel,
        'farmHouse': farmHouse,
        'lawn': lawn,
        'resort': resort,
        'marriageGarden': marriageGarden,
        'palace': palace,
        'mandapam': mandapam,
        'marriageHalls': marriageHalls
      };
}
