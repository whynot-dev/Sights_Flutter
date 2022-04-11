import 'package:sights/domain/enums/photo_type.dart';

import 'network/document.dart';

class DocumentEntity {
  DocumentEntity({
    required this.type,
    required this.number,
    required this.series,
    required this.issuedBy,
    required this.issuedDate,
    this.photos,
  });

  String type;
  String number;
  String series;
  String issuedBy;
  DateTime issuedDate;
  List<PhotoType>? photos;

  factory DocumentEntity.fromResponse(Document response) => DocumentEntity(
    type: response.type,
    number: response.number,
    series: response.serial,
    issuedBy: response.issued_by,
    issuedDate: response.when_issued,
    photos: _getPhotos(response),
  );

  static dynamic _getPhotos(Document response) {
    List<PhotoType> photos = [];
    var data = response.photo;
    if (data != null) {
      data.forEach((item) {
        switch (item) {
          case 'main':
            photos.add(PhotoType.main);
            break;
          case 'registration':
            photos.add(PhotoType.registration);
            break;
          case 'selfie':
            photos.add(PhotoType.selfie);
            break;
        }
      });
      return photos;
    }
    return null;
  }
}