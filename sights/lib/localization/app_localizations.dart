import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppLocalizations {
  AppLocalizations(this.locale);

  Locale locale;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  static String _getFormattedString(String string, List<String> inserts) {
    String newString = string;
    inserts.forEach((insert) {
      newString = newString.replaceFirst('{\$}', insert);
    });
    return newString;
  }

  Map<String, String> _localizedStrings = {};

  Future<bool> load() async {
    String? jsonString;
    try {
      jsonString = await rootBundle.loadString('assets/i18n/${locale.languageCode}.json');
    } catch (e) {}
    if (jsonString != null) {
      Map<String, dynamic> jsonMap = json.decode(jsonString);

      _localizedStrings = jsonMap.map((key, value) {
        return MapEntry(key, value.toString());
      });
    }

    return true;
  }

  String get enterNumberScreenTitle => _localizedStrings['enterNumberScreenTitle'] ?? '';

  String get sendCodeInSms => _localizedStrings['sendCodeInSms'] ?? '';

  String get createPinCodeScreenTitle => _localizedStrings['createPinCodeScreenTitle'] ?? '';

  String get createPinCodeScreenDescription => _localizedStrings['createPinCodeScreenDescription'] ?? '';

  String get continueStr => _localizedStrings['continueStr'] ?? '';

  String get enterPinCodeScreenTitle => _localizedStrings['enterPinCodeScreenTitle'] ?? '';

  String get usingFaceIdForEnter => _localizedStrings['usingFaceIdForEnter'] ?? '';

  String get usingTouchIdForEnter => _localizedStrings['usingTouchIdForEnter'] ?? '';

  String get enterByFaceId => _localizedStrings['enterByFaceId'] ?? '';

  String get enterByTouchId => _localizedStrings['enterByTouchId'] ?? '';

  String get enterByPinCode => _localizedStrings['enterByPinCode'] ?? '';

  String get noFingerprintsRegistered => _localizedStrings['noFingerprintsRegistered'] ?? '';

  String get tryAgainLaterTooManyFailedAttempts => _localizedStrings['tryAgainLaterTooManyFailedAttempts'] ?? '';

  String get error => _localizedStrings['error'] ?? '';

  String get cancel => _localizedStrings['cancel'] ?? '';

  String get authorizationRequired => _localizedStrings['authorizationRequired'] ?? '';

  String get verifyIdentity => _localizedStrings['verifyIdentity'] ?? '';

  String get pleaseLogInToBeAbleToUseYourFingerprints =>
      _localizedStrings['pleaseLogInToBeAbleToUseYourFingerprints'] ?? '';

  String get pleaseLogInToBeAbleToUseFaceId => _localizedStrings['pleaseLogInToBeAbleToUseFaceId'] ?? '';

  String get settings => _localizedStrings['settings'] ?? '';

  String get changePhoneNumber => _localizedStrings['changePhoneNumber'] ?? '';

  String againCodeCanBeSentInSeconds(String seconds) =>
      _getFormattedString(_localizedStrings['againCodeCanBeSentInSeconds'] ?? '', [seconds]);

  String get weSentToYourPhoneNumber => _localizedStrings['weSentToYourPhoneNumber'] ?? '';

  String get smsWithCode => _localizedStrings['smsWithCode'] ?? '';

  String get resendTheCode => _localizedStrings['resendTheCode'] ?? '';

  String get useNotPossess => _localizedStrings['useNotPossess'] ?? '';

  String get confirmationAccount => _localizedStrings['confirmationAccount'] ?? '';

  String get youCantRentYet => _localizedStrings['youCantRentYet'] ?? '';

  String get confirmationAccountDescription => _localizedStrings['confirmationAccountDescription'] ?? '';

  String get confirm => _localizedStrings['confirm'] ?? '';

  String get notNow => _localizedStrings['notNow'] ?? '';
  String get numberAndSeries => _localizedStrings['numberAndSeries'] ?? '';
  String get passportData => _localizedStrings['passportData'] ?? '';
  String get issuedByWhom => _localizedStrings['issuedByWhom'] ?? '';
  String get issueDate => _localizedStrings['issueDate'] ?? '';
  String get registrationAddress => _localizedStrings['registrationAddress'] ?? '';
  String get residentialAddress => _localizedStrings['residentialAddress'] ?? '';
  String get matchesRegistrationAddress => _localizedStrings['matchesRegistrationAddress'] ?? '';
  String get further => _localizedStrings['further'] ?? '';
  String get personalData => _localizedStrings['personalData'] ?? '';
  String get surname => _localizedStrings['surname'] ?? '';
  String get name => _localizedStrings['name'] ?? '';
  String get secondName => _localizedStrings['secondName'] ?? '';
  String get dateOfBirth => _localizedStrings['dateOfBirth'] ?? '';
  String get contactData => _localizedStrings['contactData'] ?? '';
  String get phoneNumber => _localizedStrings['phoneNumber'] ?? '';
  String get email => _localizedStrings['email'] ?? '';
  String get confirmation => _localizedStrings['confirmation'] ?? '';
  String get ready => _localizedStrings['ready'] ?? '';
  String get youHaveNotEnteredAnything => _localizedStrings['youHaveNotEnteredAnything'] ?? '';
  String get youEnteredIncorrectData => _localizedStrings['youEnteredIncorrectData'] ?? '';

  String get mainDocumentPage => _localizedStrings['mainDocumentPage'] ?? '';

  String get registrationDocumentPage => _localizedStrings['registrationDocumentPage'] ?? '';

  String get selfieWithMainDocumentPage => _localizedStrings['selfieWithMainDocumentPage'] ?? '';

  String get change => _localizedStrings['change'] ?? '';

  String step(String currentStep, String totalSteps) =>
      _getFormattedString(_localizedStrings['step'] ?? '', [currentStep, totalSteps]);
  String get confirmAccount => _localizedStrings['confirmAccount'] ?? '';
  String get userAndOfferAgreementDescription1 => _localizedStrings['userAndOfferAgreementDescription1'] ?? '';
  String get userAndOfferAgreementDescription2 => _localizedStrings['userAndOfferAgreementDescription2'] ?? '';

  String get confirmationStep3Description => _localizedStrings['confirmationStep3Description'] ?? '';
  String get termsOfUse => _localizedStrings['termsOfUse'] ?? '';
  String get andGive => _localizedStrings['andGive'] ?? '';
  String get agreementForProcessingPersonalData => _localizedStrings['agreementForProcessingPersonalData'] ?? '';
  String get mainPhotoPassportTitle => _localizedStrings['mainPhotoPassportTitle'] ?? '';
  String get mainPhotoPassportDescription => _localizedStrings['mainPhotoPassportDescription'] ?? '';
  String get snapPicture => _localizedStrings['snapPicture'] ?? '';
  String get registrationPhotoPassportTitle => _localizedStrings['registrationPhotoPassportTitle'] ?? '';
  String get registrationPhotoPassportDescription => _localizedStrings['registrationPhotoPassportDescription'] ?? '';
  String get selfiePhotoPassportTitle => _localizedStrings['selfiePhotoPassportTitle'] ?? '';
  String get selfiePhotoPassportDescription => _localizedStrings['selfiePhotoPassportDescription'] ?? '';
  String get weHaveCollectedAllTheNecessaryData => _localizedStrings['weHaveCollectedAllTheNecessaryData'] ?? '';
  String get confirmationFinishDescription => _localizedStrings['confirmationFinishDescription'] ?? '';
  String get startUsing => _localizedStrings['startUsing'] ?? '';

  String get man => _localizedStrings['man'] ?? '';
  String get woman => _localizedStrings['woman'] ?? '';
  String get city => _localizedStrings['city'] ?? '';
  String get street => _localizedStrings['street'] ?? '';
  String get house => _localizedStrings['house'] ?? '';
  String get flat => _localizedStrings['flat'] ?? '';
  String get dateOfPublishing => _localizedStrings['dateOfPublishing'] ?? '';
  String get wrongCodeFromSms => _localizedStrings['wrongCodeFromSms'] ?? '';
  String get ok => _localizedStrings['ok'] ?? '';
  String get cantGetData => _localizedStrings['cantGetData'] ?? '';
  String get cantGetGeoPermission => _localizedStrings['cantGetGeoPermission'] ?? '';
  String get checkYourInternetConnection => _localizedStrings['checkYourInternetConnection'] ?? '';
  String get checkYourGeoSettings => _localizedStrings['checkYourGeoSettings'] ?? '';
  String get somethingWentWrong => _localizedStrings['somethingWentWrong'] ?? '';
  String get biometricAuthIsNotSupportedByPlatform => _localizedStrings['biometricAuthIsNotSupportedByPlatform'] ?? '';

  String get enterYourAddress => _localizedStrings['enterYourAddress'] ?? '';
  String get searchInYouz => _localizedStrings['searchInYouz'] ?? '';

  String get prolongLease => _localizedStrings['prolongLease'] ?? '';
  String get giveCertificateYOUZ => _localizedStrings['giveCertificateYOUZ'] ?? '';
  String get repeatLease  => _localizedStrings['repeatLease'] ?? '';
  String get notifications  => _localizedStrings['notifications'] ?? '';
  String get today  => _localizedStrings['today'] ?? '';
  String get yesterday => _localizedStrings['yesterday'] ?? '';

  String get warningDescription1 => _localizedStrings['warningDescription1'] ?? '';

  String get rent  => _localizedStrings['rent'] ?? '';
  String get popular  => _localizedStrings['popular'] ?? '';
  String get availableBySubscription  => _localizedStrings['availableBySubscription'] ?? '';
  String get limitedOffer  => _localizedStrings['limitedOffer'] ?? '';
  String get all  => _localizedStrings['all'] ?? '';

  String get main  => _localizedStrings['main'] ?? '';
  String get catalog  => _localizedStrings['catalog'] ?? '';
  String get blog  => _localizedStrings['blog'] ?? '';

  String get okay  => _localizedStrings['okay'] ?? '';
  String get wrongEmailFormat  => _localizedStrings['wrongEmailFormat'] ?? '';
  String get enterName  => _localizedStrings['enterName'] ?? '';
  String get enterSecondName  => _localizedStrings['enterSecondName'] ?? '';
  String get enterSurname  => _localizedStrings['enterSurname'] ?? '';
  String get exit  => _localizedStrings['exit'] ?? '';
  String get wrongPinCode  => _localizedStrings['wrongPinCode'] ?? '';
  String get toMuchTryAgainLater  => _localizedStrings['toMuchTryAgainLater'] ?? '';
  String get abbrChange  => _localizedStrings['abbrChange'] ?? '';

  String get accountNotVerified  => _localizedStrings['accountNotVerified'] ?? '';
  String get favorites  => _localizedStrings['favorites'] ?? '';
  String get myOrders  => _localizedStrings['myOrders'] ?? '';
  String get addresses  => _localizedStrings['addresses'] ?? '';
  String get paymentMethods  => _localizedStrings['paymentMethods'] ?? '';
  String get support  => _localizedStrings['support'] ?? '';
  String get howServiceWorks  => _localizedStrings['howServiceWorks'] ?? '';
  String get accountInProgress  => _localizedStrings['accountInProgress'] ?? '';
  String get accountVerificationError  => _localizedStrings['accountVerificationError'] ?? '';
  String get repeat  => _localizedStrings['repeat'] ?? '';
  String get selectPhoto => _localizedStrings['selectPhoto'] ?? '';
  String get fullName => _localizedStrings['fullName'] ?? '';
  String get changePhone => _localizedStrings['changePhone'] ?? '';
  String get changeMail => _localizedStrings['changeMail'] ?? '';
  String get passportRF => _localizedStrings['passportRF'] ?? '';
  String get deleteAccount => _localizedStrings['deleteAccount'] ?? '';
  String get passportWarning => _localizedStrings['passportWarning'] ?? '';
  String get descriptionChangePhone => _localizedStrings['descriptionChangePhone'] ?? '';
  String get descriptionChangeEmail => _localizedStrings['descriptionChangeEmail'] ?? '';
  String get buy  => _localizedStrings['buy'] ?? '';
  String get howCanThisThingBeUsed  => _localizedStrings['howCanThisThingBeUsed'] ?? '';
  String get mightInterest  => _localizedStrings['mightInterest'] ?? '';
  String get day  => _localizedStrings['day'] ?? '';
  String get canBuyFor  => _localizedStrings['canBuyFor'] ?? '';
  String get passportPhoto => _localizedStrings['passportPhoto'] ?? '';
  String get abbrFullName => _localizedStrings['abbrFullName'] ?? '';
  String get selectFromGallery => _localizedStrings['selectFromGallery'] ?? '';
  String get use => _localizedStrings['use'] ?? '';
  String get reshoot => _localizedStrings['reshoot'] ?? '';
  String get youDontHaveFavoritesAddressesYet => _localizedStrings['youDontHaveFavoritesAddressesYet'] ?? '';
  String get newAddress => _localizedStrings['newAddress'] ?? '';
  String get deliveryAddress => _localizedStrings['deliveryAddress'] ?? '';
  String get save => _localizedStrings['save'] ?? '';
  String get apartmentOffice => _localizedStrings['apartmentOffice'] ?? '';
  String get entrance => _localizedStrings['entrance'] ?? '';
  String get floor => _localizedStrings['floor'] ?? '';
  String get comment => _localizedStrings['comment'] ?? '';
  String get selectThisAddress => _localizedStrings['selectThisAddress'] ?? '';
  String get changeAddress => _localizedStrings['changeAddress'] ?? '';
  String get delete => _localizedStrings['delete'] ?? '';
  String get iHaveANewPassport => _localizedStrings['iHaveANewPassport'] ?? '';
  String get descriptionNewPassport => _localizedStrings['descriptionNewPassport'] ?? '';
  String get changingPassportData => _localizedStrings['changingPassportData'] ?? '';
  String get descriptionChangingPassportData => _localizedStrings['descriptionChangingPassportData'] ?? '';
  String get changeData => _localizedStrings['changeData'] ?? '';
  String get youzPeopleInInstagram => _localizedStrings['youzPeopleInInstagram'] ?? '';
  String get photo1 => _localizedStrings['photo1'] ?? '';
  String get photo2 => _localizedStrings['photo2'] ?? '';
  String get photo3 => _localizedStrings['photo3'] ?? '';
  String get howToReach => _localizedStrings['howToReach'] ?? '';
  String get howToRentProductsInYouz => _localizedStrings['howToRentProductsInYouz'] ?? '';
  String get youDontHaveAnyNotificationsYet => _localizedStrings['youDontHaveAnyNotificationsYet'] ?? '';
  String get subscriptionYOUZ => _localizedStrings['subscriptionYOUZ'] ?? '';
  String get subscriptionDescription => _localizedStrings['subscriptionDescription'] ?? '';
  String get enterAddress => _localizedStrings['enterAddress'] ?? '';
  String get myAddresses => _localizedStrings['myAddresses'] ?? '';
  String get addNewAddress => _localizedStrings['addNewAddress'] ?? '';











  String get profile  => _localizedStrings['profile'] ?? '';
  String get routes  => _localizedStrings['routes'] ?? '';
  String get map  => _localizedStrings['map'] ?? '';
  String get createRoute  => _localizedStrings['createRoute'] ?? '';
  String get changeRoute  => _localizedStrings['changeRoute'] ?? '';

  String get monument  => _localizedStrings['monument'] ?? '';
  String get monuments  => _localizedStrings['monuments'] ?? '';
  String get historicalPlace  => _localizedStrings['historicalPlace'] ?? '';
  String get historicalPlaces  => _localizedStrings['historicalPlaces'] ?? '';
  String get religion  => _localizedStrings['religion'] ?? '';
  String get religions  => _localizedStrings['religions'] ?? '';
  String get museum  => _localizedStrings['museum'] ?? '';
  String get museums  => _localizedStrings['museums'] ?? '';
  String get zoo  => _localizedStrings['zoo'] ?? '';
  String get zoos  => _localizedStrings['zoos'] ?? '';
  String get theatre  => _localizedStrings['theatre'] ?? '';
  String get theatres  => _localizedStrings['theatres'] ?? '';
  String get square  => _localizedStrings['square'] ?? '';
  String get squares  => _localizedStrings['squares'] ?? '';
  String get sculpture  => _localizedStrings['sculpture'] ?? '';
  String get sculptures  => _localizedStrings['sculptures'] ?? '';
  String get fountain  => _localizedStrings['fountain'] ?? '';
  String get fountains  => _localizedStrings['fountains'] ?? '';
  String get park  => _localizedStrings['park'] ?? '';
  String get parks  => _localizedStrings['parks'] ?? '';
  String get natural  => _localizedStrings['natural'] ?? '';
  String get historicBuilding  => _localizedStrings['historicBuilding'] ?? '';
  String get historicBuildings  => _localizedStrings['historicBuildings'] ?? '';
  String get architecture  => _localizedStrings['architecture'] ?? '';
  String get apply  => _localizedStrings['apply'] ?? '';
  String get imInterested  => _localizedStrings['imInterested'] ?? '';
  String get buildingRoute  => _localizedStrings['buildingRoute'] ?? '';
  String get transport  => _localizedStrings['transport'] ?? '';

}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['ru', 'en', 'de'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    AppLocalizations localizations = new AppLocalizations(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}
