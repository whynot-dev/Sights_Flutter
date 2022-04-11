import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sights/domain/enums/confirm_document_part.dart';

part 'document_part_entity.freezed.dart';

@freezed
class DocumentPartEntity with _$DocumentPartEntity {
  const factory DocumentPartEntity({
    required ConfirmDocumentPart documentPart,
    required File file,
  }) = _DocumentPartEntity;
}
