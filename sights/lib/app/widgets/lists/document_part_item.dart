import 'package:flutter/material.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/domain/entities/document_part_entity.dart';
import 'package:sights/domain/enums/confirm_document_part.dart';
import 'package:sights/localization/app_localizations.dart';

class DocumentPartItem extends StatelessWidget {
  const DocumentPartItem({
    required this.documentPart,
    this.onPressed,
  });
  final VoidCallback? onPressed;
  final DocumentPartEntity documentPart;

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.all(Radius.circular(24)),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 19,
              spreadRadius: -5,
              color: AppColors.surfaceShadow,
            ),
          ],
        ),
        child: Row(
          children: [
            _buildImage(),
            const SizedBox(width: 16),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTitle(context),
                _buildSubtitle(context),
              ],
            ),
          ],
        ),
      );

  Widget _buildImage() => ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      child: (documentPart.file.path != '')
          ? Image.file(
              documentPart.file,
              width: 88,
              height: 88,
              fit: BoxFit.cover,
            )
          : Container(color: AppColors.gray2, width: 88, height: 88));

  Widget _buildTitle(BuildContext context) {
    String text;
    switch (documentPart.documentPart) {
      case ConfirmDocumentPart.mainPage:
        text = AppLocalizations.of(context).mainDocumentPage;
        break;
      case ConfirmDocumentPart.registrationPage:
        text = AppLocalizations.of(context).registrationDocumentPage;
        break;
      case ConfirmDocumentPart.selfieWithMainPage:
        text = AppLocalizations.of(context).selfieWithMainDocumentPage;
        break;
    }

    return Text(
      text,
      style: TextStyle(
        color: AppColors.onSurface,
        fontSize: 17,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  Widget _buildSubtitle(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 2),
        child: GestureDetector(
          onTap: (){
            onPressed?.call();
          },
          child: Text(
            AppLocalizations.of(context).change,
            style: TextStyle(
              color: AppColors.onSurface.withOpacity(0.4),
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      );
}
