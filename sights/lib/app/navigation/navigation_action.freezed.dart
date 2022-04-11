// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'navigation_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NavigateActionTearOff {
  const _$NavigateActionTearOff();

  NavigateBack navigateBack({dynamic result = null}) {
    return NavigateBack(
      result: result,
    );
  }

  NavigateToEnterPhoneNumber navigateToEnterPhoneNumber(
      NavigateType navigateType) {
    return NavigateToEnterPhoneNumber(
      navigateType,
    );
  }

  NavigateToEnterPinCode navigateToEnterPinCode(NavigateType navigateType,
      {required EnterCodeType enterCodeType}) {
    return NavigateToEnterPinCode(
      navigateType,
      enterCodeType: enterCodeType,
    );
  }

  NavigateToEnableBiometricAuth navigateToEnableBiometricAuth(
      NavigateType navigateType,
      {required BiometricType biometricType}) {
    return NavigateToEnableBiometricAuth(
      navigateType,
      biometricType: biometricType,
    );
  }

  NavigateToConfirmAccount navigateToConfirmAccount(NavigateType navigateType) {
    return NavigateToConfirmAccount(
      navigateType,
    );
  }

  NavigateToConfirmPhone navigateToConfirmPhone(NavigateType navigateType,
      {required String phoneNumber}) {
    return NavigateToConfirmPhone(
      navigateType,
      phoneNumber: phoneNumber,
    );
  }

  NavigateToConfirmationSteps navigateToConfirmationSteps(
      NavigateType navigateType,
      {ProfileEntity? profile}) {
    return NavigateToConfirmationSteps(
      navigateType,
      profile: profile,
    );
  }

  NavigateToStories navigateToStories(NavigateType navigateType,
      {required int indexCurrentStory, required List<StoryEntity> stories}) {
    return NavigateToStories(
      navigateType,
      indexCurrentStory: indexCurrentStory,
      stories: stories,
    );
  }

  NavigateToNotifications navigateToNotifications(NavigateType navigateType) {
    return NavigateToNotifications(
      navigateType,
    );
  }

  NavigateToNavigation navigateToNavigation(NavigateType navigateType) {
    return NavigateToNavigation(
      navigateType,
    );
  }

  NavigateToWebView navigateToWebView(NavigateType navigateType,
      {required String url}) {
    return NavigateToWebView(
      navigateType,
      url: url,
    );
  }

  NavigateToEditProfile navigateToEditProfile(NavigateType navigateType,
      {required ProfileEntity profile}) {
    return NavigateToEditProfile(
      navigateType,
      profile: profile,
    );
  }

  NavigateToPassport navigateToPassport(NavigateType navigateType,
      {required ProfileEntity profile}) {
    return NavigateToPassport(
      navigateType,
      profile: profile,
    );
  }

  NavigateToCompilations navigateToCompilations(NavigateType navigateType,
      {required int categoryId}) {
    return NavigateToCompilations(
      navigateType,
      categoryId: categoryId,
    );
  }

  NavigateToSelectPhotoArea navigateToSelectPhotoArea(NavigateType navigateType,
      {required File image, required EditProfileBloc editProfileBloc}) {
    return NavigateToSelectPhotoArea(
      navigateType,
      image: image,
      editProfileBloc: editProfileBloc,
    );
  }

  NavigateToPhotoTakenFinish navigateToPhotoTakenFinish(
      NavigateType navigateType,
      {required File image,
      required EditProfileBloc editProfileBloc}) {
    return NavigateToPhotoTakenFinish(
      navigateType,
      image: image,
      editProfileBloc: editProfileBloc,
    );
  }

  NavigateToProduct navigateToProduct(
      NavigateType navigateType, String productId) {
    return NavigateToProduct(
      navigateType,
      productId,
    );
  }

  NavigateToProductImages navigateToProductImages(NavigateType navigateType,
      {required int currentImageIndex, required List<String> images}) {
    return NavigateToProductImages(
      navigateType,
      currentImageIndex: currentImageIndex,
      images: images,
    );
  }

  NavigateToAddresses navigateToAddresses(NavigateType navigateType,
      {ProfileEntity? profile}) {
    return NavigateToAddresses(
      navigateType,
      profile: profile,
    );
  }

  NavigateToEditAddress navigateToEditAddress(NavigateType navigateType,
      {AddressItemEntity? addressItemEntity,
      bool isNewAddress = false,
      AddressesBloc? addressesBloc,
      required NavigateAction actionForPopUntil}) {
    return NavigateToEditAddress(
      navigateType,
      addressItemEntity: addressItemEntity,
      isNewAddress: isNewAddress,
      addressesBloc: addressesBloc,
      actionForPopUntil: actionForPopUntil,
    );
  }

  NavigateToAddressOnMap navigateToAddressOnMap(NavigateType navigateType,
      {List<AddressItemEntity>? myAddresses,
      AddressesBloc? addressesBloc,
      required NavigateAction actionForPopUntil}) {
    return NavigateToAddressOnMap(
      navigateType,
      myAddresses: myAddresses,
      addressesBloc: addressesBloc,
      actionForPopUntil: actionForPopUntil,
    );
  }

  NavigateToIntroduction navigateToIntroduction(NavigateType navigateType) {
    return NavigateToIntroduction(
      navigateType,
    );
  }

  ShowSelectAddressBottomSheet showSelectAddressBottomSheet(
      NavigateType navigateType,
      {required List<AddressItemEntity> addresses}) {
    return ShowSelectAddressBottomSheet(
      navigateType,
      addresses: addresses,
    );
  }
}

/// @nodoc
const $NavigateAction = _$NavigateActionTearOff();

/// @nodoc
mixin _$NavigateAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic result) navigateBack,
    required TResult Function(NavigateType navigateType)
        navigateToEnterPhoneNumber,
    required TResult Function(
            NavigateType navigateType, EnterCodeType enterCodeType)
        navigateToEnterPinCode,
    required TResult Function(
            NavigateType navigateType, BiometricType biometricType)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateType navigateType)
        navigateToConfirmAccount,
    required TResult Function(NavigateType navigateType, String phoneNumber)
        navigateToConfirmPhone,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToConfirmationSteps,
    required TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)
        navigateToStories,
    required TResult Function(NavigateType navigateType)
        navigateToNotifications,
    required TResult Function(NavigateType navigateType) navigateToNavigation,
    required TResult Function(NavigateType navigateType, String url)
        navigateToWebView,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToEditProfile,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToPassport,
    required TResult Function(NavigateType navigateType, int categoryId)
        navigateToCompilations,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateType navigateType, String productId)
        navigateToProduct,
    required TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)
        navigateToProductImages,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToAddresses,
    required TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToEditAddress,
    required TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToAddressOnMap,
    required TResult Function(NavigateType navigateType) navigateToIntroduction,
    required TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)
        showSelectAddressBottomSheet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic result)? navigateBack,
    TResult Function(NavigateType navigateType)? navigateToEnterPhoneNumber,
    TResult Function(NavigateType navigateType, EnterCodeType enterCodeType)?
        navigateToEnterPinCode,
    TResult Function(NavigateType navigateType, BiometricType biometricType)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateType navigateType)? navigateToConfirmAccount,
    TResult Function(NavigateType navigateType, String phoneNumber)?
        navigateToConfirmPhone,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToConfirmationSteps,
    TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)?
        navigateToStories,
    TResult Function(NavigateType navigateType)? navigateToNotifications,
    TResult Function(NavigateType navigateType)? navigateToNavigation,
    TResult Function(NavigateType navigateType, String url)? navigateToWebView,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToEditProfile,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToPassport,
    TResult Function(NavigateType navigateType, int categoryId)?
        navigateToCompilations,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateType navigateType, String productId)?
        navigateToProduct,
    TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)?
        navigateToProductImages,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToAddresses,
    TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToEditAddress,
    TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToAddressOnMap,
    TResult Function(NavigateType navigateType)? navigateToIntroduction,
    TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateBack value) navigateBack,
    required TResult Function(NavigateToEnterPhoneNumber value)
        navigateToEnterPhoneNumber,
    required TResult Function(NavigateToEnterPinCode value)
        navigateToEnterPinCode,
    required TResult Function(NavigateToEnableBiometricAuth value)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateToConfirmAccount value)
        navigateToConfirmAccount,
    required TResult Function(NavigateToConfirmPhone value)
        navigateToConfirmPhone,
    required TResult Function(NavigateToConfirmationSteps value)
        navigateToConfirmationSteps,
    required TResult Function(NavigateToStories value) navigateToStories,
    required TResult Function(NavigateToNotifications value)
        navigateToNotifications,
    required TResult Function(NavigateToNavigation value) navigateToNavigation,
    required TResult Function(NavigateToWebView value) navigateToWebView,
    required TResult Function(NavigateToEditProfile value)
        navigateToEditProfile,
    required TResult Function(NavigateToPassport value) navigateToPassport,
    required TResult Function(NavigateToCompilations value)
        navigateToCompilations,
    required TResult Function(NavigateToSelectPhotoArea value)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateToPhotoTakenFinish value)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateToProduct value) navigateToProduct,
    required TResult Function(NavigateToProductImages value)
        navigateToProductImages,
    required TResult Function(NavigateToAddresses value) navigateToAddresses,
    required TResult Function(NavigateToEditAddress value)
        navigateToEditAddress,
    required TResult Function(NavigateToAddressOnMap value)
        navigateToAddressOnMap,
    required TResult Function(NavigateToIntroduction value)
        navigateToIntroduction,
    required TResult Function(ShowSelectAddressBottomSheet value)
        showSelectAddressBottomSheet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateBack value)? navigateBack,
    TResult Function(NavigateToEnterPhoneNumber value)?
        navigateToEnterPhoneNumber,
    TResult Function(NavigateToEnterPinCode value)? navigateToEnterPinCode,
    TResult Function(NavigateToEnableBiometricAuth value)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateToConfirmAccount value)? navigateToConfirmAccount,
    TResult Function(NavigateToConfirmPhone value)? navigateToConfirmPhone,
    TResult Function(NavigateToConfirmationSteps value)?
        navigateToConfirmationSteps,
    TResult Function(NavigateToStories value)? navigateToStories,
    TResult Function(NavigateToNotifications value)? navigateToNotifications,
    TResult Function(NavigateToNavigation value)? navigateToNavigation,
    TResult Function(NavigateToWebView value)? navigateToWebView,
    TResult Function(NavigateToEditProfile value)? navigateToEditProfile,
    TResult Function(NavigateToPassport value)? navigateToPassport,
    TResult Function(NavigateToCompilations value)? navigateToCompilations,
    TResult Function(NavigateToSelectPhotoArea value)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateToPhotoTakenFinish value)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateToProduct value)? navigateToProduct,
    TResult Function(NavigateToProductImages value)? navigateToProductImages,
    TResult Function(NavigateToAddresses value)? navigateToAddresses,
    TResult Function(NavigateToEditAddress value)? navigateToEditAddress,
    TResult Function(NavigateToAddressOnMap value)? navigateToAddressOnMap,
    TResult Function(NavigateToIntroduction value)? navigateToIntroduction,
    TResult Function(ShowSelectAddressBottomSheet value)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateActionCopyWith<$Res> {
  factory $NavigateActionCopyWith(
          NavigateAction value, $Res Function(NavigateAction) then) =
      _$NavigateActionCopyWithImpl<$Res>;
}

/// @nodoc
class _$NavigateActionCopyWithImpl<$Res>
    implements $NavigateActionCopyWith<$Res> {
  _$NavigateActionCopyWithImpl(this._value, this._then);

  final NavigateAction _value;
  // ignore: unused_field
  final $Res Function(NavigateAction) _then;
}

/// @nodoc
abstract class $NavigateBackCopyWith<$Res> {
  factory $NavigateBackCopyWith(
          NavigateBack value, $Res Function(NavigateBack) then) =
      _$NavigateBackCopyWithImpl<$Res>;
  $Res call({dynamic result});
}

/// @nodoc
class _$NavigateBackCopyWithImpl<$Res>
    extends _$NavigateActionCopyWithImpl<$Res>
    implements $NavigateBackCopyWith<$Res> {
  _$NavigateBackCopyWithImpl(
      NavigateBack _value, $Res Function(NavigateBack) _then)
      : super(_value, (v) => _then(v as NavigateBack));

  @override
  NavigateBack get _value => super._value as NavigateBack;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(NavigateBack(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$NavigateBack implements NavigateBack {
  _$NavigateBack({this.result = null});

  @JsonKey(defaultValue: null)
  @override
  final dynamic result;

  @override
  String toString() {
    return 'NavigateAction.navigateBack(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigateBack &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @JsonKey(ignore: true)
  @override
  $NavigateBackCopyWith<NavigateBack> get copyWith =>
      _$NavigateBackCopyWithImpl<NavigateBack>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic result) navigateBack,
    required TResult Function(NavigateType navigateType)
        navigateToEnterPhoneNumber,
    required TResult Function(
            NavigateType navigateType, EnterCodeType enterCodeType)
        navigateToEnterPinCode,
    required TResult Function(
            NavigateType navigateType, BiometricType biometricType)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateType navigateType)
        navigateToConfirmAccount,
    required TResult Function(NavigateType navigateType, String phoneNumber)
        navigateToConfirmPhone,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToConfirmationSteps,
    required TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)
        navigateToStories,
    required TResult Function(NavigateType navigateType)
        navigateToNotifications,
    required TResult Function(NavigateType navigateType) navigateToNavigation,
    required TResult Function(NavigateType navigateType, String url)
        navigateToWebView,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToEditProfile,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToPassport,
    required TResult Function(NavigateType navigateType, int categoryId)
        navigateToCompilations,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateType navigateType, String productId)
        navigateToProduct,
    required TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)
        navigateToProductImages,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToAddresses,
    required TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToEditAddress,
    required TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToAddressOnMap,
    required TResult Function(NavigateType navigateType) navigateToIntroduction,
    required TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)
        showSelectAddressBottomSheet,
  }) {
    return navigateBack(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic result)? navigateBack,
    TResult Function(NavigateType navigateType)? navigateToEnterPhoneNumber,
    TResult Function(NavigateType navigateType, EnterCodeType enterCodeType)?
        navigateToEnterPinCode,
    TResult Function(NavigateType navigateType, BiometricType biometricType)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateType navigateType)? navigateToConfirmAccount,
    TResult Function(NavigateType navigateType, String phoneNumber)?
        navigateToConfirmPhone,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToConfirmationSteps,
    TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)?
        navigateToStories,
    TResult Function(NavigateType navigateType)? navigateToNotifications,
    TResult Function(NavigateType navigateType)? navigateToNavigation,
    TResult Function(NavigateType navigateType, String url)? navigateToWebView,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToEditProfile,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToPassport,
    TResult Function(NavigateType navigateType, int categoryId)?
        navigateToCompilations,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateType navigateType, String productId)?
        navigateToProduct,
    TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)?
        navigateToProductImages,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToAddresses,
    TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToEditAddress,
    TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToAddressOnMap,
    TResult Function(NavigateType navigateType)? navigateToIntroduction,
    TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateBack != null) {
      return navigateBack(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateBack value) navigateBack,
    required TResult Function(NavigateToEnterPhoneNumber value)
        navigateToEnterPhoneNumber,
    required TResult Function(NavigateToEnterPinCode value)
        navigateToEnterPinCode,
    required TResult Function(NavigateToEnableBiometricAuth value)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateToConfirmAccount value)
        navigateToConfirmAccount,
    required TResult Function(NavigateToConfirmPhone value)
        navigateToConfirmPhone,
    required TResult Function(NavigateToConfirmationSteps value)
        navigateToConfirmationSteps,
    required TResult Function(NavigateToStories value) navigateToStories,
    required TResult Function(NavigateToNotifications value)
        navigateToNotifications,
    required TResult Function(NavigateToNavigation value) navigateToNavigation,
    required TResult Function(NavigateToWebView value) navigateToWebView,
    required TResult Function(NavigateToEditProfile value)
        navigateToEditProfile,
    required TResult Function(NavigateToPassport value) navigateToPassport,
    required TResult Function(NavigateToCompilations value)
        navigateToCompilations,
    required TResult Function(NavigateToSelectPhotoArea value)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateToPhotoTakenFinish value)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateToProduct value) navigateToProduct,
    required TResult Function(NavigateToProductImages value)
        navigateToProductImages,
    required TResult Function(NavigateToAddresses value) navigateToAddresses,
    required TResult Function(NavigateToEditAddress value)
        navigateToEditAddress,
    required TResult Function(NavigateToAddressOnMap value)
        navigateToAddressOnMap,
    required TResult Function(NavigateToIntroduction value)
        navigateToIntroduction,
    required TResult Function(ShowSelectAddressBottomSheet value)
        showSelectAddressBottomSheet,
  }) {
    return navigateBack(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateBack value)? navigateBack,
    TResult Function(NavigateToEnterPhoneNumber value)?
        navigateToEnterPhoneNumber,
    TResult Function(NavigateToEnterPinCode value)? navigateToEnterPinCode,
    TResult Function(NavigateToEnableBiometricAuth value)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateToConfirmAccount value)? navigateToConfirmAccount,
    TResult Function(NavigateToConfirmPhone value)? navigateToConfirmPhone,
    TResult Function(NavigateToConfirmationSteps value)?
        navigateToConfirmationSteps,
    TResult Function(NavigateToStories value)? navigateToStories,
    TResult Function(NavigateToNotifications value)? navigateToNotifications,
    TResult Function(NavigateToNavigation value)? navigateToNavigation,
    TResult Function(NavigateToWebView value)? navigateToWebView,
    TResult Function(NavigateToEditProfile value)? navigateToEditProfile,
    TResult Function(NavigateToPassport value)? navigateToPassport,
    TResult Function(NavigateToCompilations value)? navigateToCompilations,
    TResult Function(NavigateToSelectPhotoArea value)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateToPhotoTakenFinish value)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateToProduct value)? navigateToProduct,
    TResult Function(NavigateToProductImages value)? navigateToProductImages,
    TResult Function(NavigateToAddresses value)? navigateToAddresses,
    TResult Function(NavigateToEditAddress value)? navigateToEditAddress,
    TResult Function(NavigateToAddressOnMap value)? navigateToAddressOnMap,
    TResult Function(NavigateToIntroduction value)? navigateToIntroduction,
    TResult Function(ShowSelectAddressBottomSheet value)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateBack != null) {
      return navigateBack(this);
    }
    return orElse();
  }
}

abstract class NavigateBack implements NavigateAction {
  factory NavigateBack({dynamic result}) = _$NavigateBack;

  dynamic get result => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavigateBackCopyWith<NavigateBack> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateToEnterPhoneNumberCopyWith<$Res> {
  factory $NavigateToEnterPhoneNumberCopyWith(NavigateToEnterPhoneNumber value,
          $Res Function(NavigateToEnterPhoneNumber) then) =
      _$NavigateToEnterPhoneNumberCopyWithImpl<$Res>;
  $Res call({NavigateType navigateType});
}

/// @nodoc
class _$NavigateToEnterPhoneNumberCopyWithImpl<$Res>
    extends _$NavigateActionCopyWithImpl<$Res>
    implements $NavigateToEnterPhoneNumberCopyWith<$Res> {
  _$NavigateToEnterPhoneNumberCopyWithImpl(NavigateToEnterPhoneNumber _value,
      $Res Function(NavigateToEnterPhoneNumber) _then)
      : super(_value, (v) => _then(v as NavigateToEnterPhoneNumber));

  @override
  NavigateToEnterPhoneNumber get _value =>
      super._value as NavigateToEnterPhoneNumber;

  @override
  $Res call({
    Object? navigateType = freezed,
  }) {
    return _then(NavigateToEnterPhoneNumber(
      navigateType == freezed
          ? _value.navigateType
          : navigateType // ignore: cast_nullable_to_non_nullable
              as NavigateType,
    ));
  }
}

/// @nodoc

class _$NavigateToEnterPhoneNumber implements NavigateToEnterPhoneNumber {
  _$NavigateToEnterPhoneNumber(this.navigateType);

  @override
  final NavigateType navigateType;

  @override
  String toString() {
    return 'NavigateAction.navigateToEnterPhoneNumber(navigateType: $navigateType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigateToEnterPhoneNumber &&
            (identical(other.navigateType, navigateType) ||
                const DeepCollectionEquality()
                    .equals(other.navigateType, navigateType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(navigateType);

  @JsonKey(ignore: true)
  @override
  $NavigateToEnterPhoneNumberCopyWith<NavigateToEnterPhoneNumber>
      get copyWith =>
          _$NavigateToEnterPhoneNumberCopyWithImpl<NavigateToEnterPhoneNumber>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic result) navigateBack,
    required TResult Function(NavigateType navigateType)
        navigateToEnterPhoneNumber,
    required TResult Function(
            NavigateType navigateType, EnterCodeType enterCodeType)
        navigateToEnterPinCode,
    required TResult Function(
            NavigateType navigateType, BiometricType biometricType)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateType navigateType)
        navigateToConfirmAccount,
    required TResult Function(NavigateType navigateType, String phoneNumber)
        navigateToConfirmPhone,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToConfirmationSteps,
    required TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)
        navigateToStories,
    required TResult Function(NavigateType navigateType)
        navigateToNotifications,
    required TResult Function(NavigateType navigateType) navigateToNavigation,
    required TResult Function(NavigateType navigateType, String url)
        navigateToWebView,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToEditProfile,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToPassport,
    required TResult Function(NavigateType navigateType, int categoryId)
        navigateToCompilations,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateType navigateType, String productId)
        navigateToProduct,
    required TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)
        navigateToProductImages,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToAddresses,
    required TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToEditAddress,
    required TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToAddressOnMap,
    required TResult Function(NavigateType navigateType) navigateToIntroduction,
    required TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)
        showSelectAddressBottomSheet,
  }) {
    return navigateToEnterPhoneNumber(navigateType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic result)? navigateBack,
    TResult Function(NavigateType navigateType)? navigateToEnterPhoneNumber,
    TResult Function(NavigateType navigateType, EnterCodeType enterCodeType)?
        navigateToEnterPinCode,
    TResult Function(NavigateType navigateType, BiometricType biometricType)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateType navigateType)? navigateToConfirmAccount,
    TResult Function(NavigateType navigateType, String phoneNumber)?
        navigateToConfirmPhone,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToConfirmationSteps,
    TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)?
        navigateToStories,
    TResult Function(NavigateType navigateType)? navigateToNotifications,
    TResult Function(NavigateType navigateType)? navigateToNavigation,
    TResult Function(NavigateType navigateType, String url)? navigateToWebView,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToEditProfile,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToPassport,
    TResult Function(NavigateType navigateType, int categoryId)?
        navigateToCompilations,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateType navigateType, String productId)?
        navigateToProduct,
    TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)?
        navigateToProductImages,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToAddresses,
    TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToEditAddress,
    TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToAddressOnMap,
    TResult Function(NavigateType navigateType)? navigateToIntroduction,
    TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateToEnterPhoneNumber != null) {
      return navigateToEnterPhoneNumber(navigateType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateBack value) navigateBack,
    required TResult Function(NavigateToEnterPhoneNumber value)
        navigateToEnterPhoneNumber,
    required TResult Function(NavigateToEnterPinCode value)
        navigateToEnterPinCode,
    required TResult Function(NavigateToEnableBiometricAuth value)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateToConfirmAccount value)
        navigateToConfirmAccount,
    required TResult Function(NavigateToConfirmPhone value)
        navigateToConfirmPhone,
    required TResult Function(NavigateToConfirmationSteps value)
        navigateToConfirmationSteps,
    required TResult Function(NavigateToStories value) navigateToStories,
    required TResult Function(NavigateToNotifications value)
        navigateToNotifications,
    required TResult Function(NavigateToNavigation value) navigateToNavigation,
    required TResult Function(NavigateToWebView value) navigateToWebView,
    required TResult Function(NavigateToEditProfile value)
        navigateToEditProfile,
    required TResult Function(NavigateToPassport value) navigateToPassport,
    required TResult Function(NavigateToCompilations value)
        navigateToCompilations,
    required TResult Function(NavigateToSelectPhotoArea value)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateToPhotoTakenFinish value)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateToProduct value) navigateToProduct,
    required TResult Function(NavigateToProductImages value)
        navigateToProductImages,
    required TResult Function(NavigateToAddresses value) navigateToAddresses,
    required TResult Function(NavigateToEditAddress value)
        navigateToEditAddress,
    required TResult Function(NavigateToAddressOnMap value)
        navigateToAddressOnMap,
    required TResult Function(NavigateToIntroduction value)
        navigateToIntroduction,
    required TResult Function(ShowSelectAddressBottomSheet value)
        showSelectAddressBottomSheet,
  }) {
    return navigateToEnterPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateBack value)? navigateBack,
    TResult Function(NavigateToEnterPhoneNumber value)?
        navigateToEnterPhoneNumber,
    TResult Function(NavigateToEnterPinCode value)? navigateToEnterPinCode,
    TResult Function(NavigateToEnableBiometricAuth value)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateToConfirmAccount value)? navigateToConfirmAccount,
    TResult Function(NavigateToConfirmPhone value)? navigateToConfirmPhone,
    TResult Function(NavigateToConfirmationSteps value)?
        navigateToConfirmationSteps,
    TResult Function(NavigateToStories value)? navigateToStories,
    TResult Function(NavigateToNotifications value)? navigateToNotifications,
    TResult Function(NavigateToNavigation value)? navigateToNavigation,
    TResult Function(NavigateToWebView value)? navigateToWebView,
    TResult Function(NavigateToEditProfile value)? navigateToEditProfile,
    TResult Function(NavigateToPassport value)? navigateToPassport,
    TResult Function(NavigateToCompilations value)? navigateToCompilations,
    TResult Function(NavigateToSelectPhotoArea value)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateToPhotoTakenFinish value)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateToProduct value)? navigateToProduct,
    TResult Function(NavigateToProductImages value)? navigateToProductImages,
    TResult Function(NavigateToAddresses value)? navigateToAddresses,
    TResult Function(NavigateToEditAddress value)? navigateToEditAddress,
    TResult Function(NavigateToAddressOnMap value)? navigateToAddressOnMap,
    TResult Function(NavigateToIntroduction value)? navigateToIntroduction,
    TResult Function(ShowSelectAddressBottomSheet value)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateToEnterPhoneNumber != null) {
      return navigateToEnterPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class NavigateToEnterPhoneNumber implements NavigateAction {
  factory NavigateToEnterPhoneNumber(NavigateType navigateType) =
      _$NavigateToEnterPhoneNumber;

  NavigateType get navigateType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavigateToEnterPhoneNumberCopyWith<NavigateToEnterPhoneNumber>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateToEnterPinCodeCopyWith<$Res> {
  factory $NavigateToEnterPinCodeCopyWith(NavigateToEnterPinCode value,
          $Res Function(NavigateToEnterPinCode) then) =
      _$NavigateToEnterPinCodeCopyWithImpl<$Res>;
  $Res call({NavigateType navigateType, EnterCodeType enterCodeType});
}

/// @nodoc
class _$NavigateToEnterPinCodeCopyWithImpl<$Res>
    extends _$NavigateActionCopyWithImpl<$Res>
    implements $NavigateToEnterPinCodeCopyWith<$Res> {
  _$NavigateToEnterPinCodeCopyWithImpl(NavigateToEnterPinCode _value,
      $Res Function(NavigateToEnterPinCode) _then)
      : super(_value, (v) => _then(v as NavigateToEnterPinCode));

  @override
  NavigateToEnterPinCode get _value => super._value as NavigateToEnterPinCode;

  @override
  $Res call({
    Object? navigateType = freezed,
    Object? enterCodeType = freezed,
  }) {
    return _then(NavigateToEnterPinCode(
      navigateType == freezed
          ? _value.navigateType
          : navigateType // ignore: cast_nullable_to_non_nullable
              as NavigateType,
      enterCodeType: enterCodeType == freezed
          ? _value.enterCodeType
          : enterCodeType // ignore: cast_nullable_to_non_nullable
              as EnterCodeType,
    ));
  }
}

/// @nodoc

class _$NavigateToEnterPinCode implements NavigateToEnterPinCode {
  _$NavigateToEnterPinCode(this.navigateType, {required this.enterCodeType});

  @override
  final NavigateType navigateType;
  @override
  final EnterCodeType enterCodeType;

  @override
  String toString() {
    return 'NavigateAction.navigateToEnterPinCode(navigateType: $navigateType, enterCodeType: $enterCodeType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigateToEnterPinCode &&
            (identical(other.navigateType, navigateType) ||
                const DeepCollectionEquality()
                    .equals(other.navigateType, navigateType)) &&
            (identical(other.enterCodeType, enterCodeType) ||
                const DeepCollectionEquality()
                    .equals(other.enterCodeType, enterCodeType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(navigateType) ^
      const DeepCollectionEquality().hash(enterCodeType);

  @JsonKey(ignore: true)
  @override
  $NavigateToEnterPinCodeCopyWith<NavigateToEnterPinCode> get copyWith =>
      _$NavigateToEnterPinCodeCopyWithImpl<NavigateToEnterPinCode>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic result) navigateBack,
    required TResult Function(NavigateType navigateType)
        navigateToEnterPhoneNumber,
    required TResult Function(
            NavigateType navigateType, EnterCodeType enterCodeType)
        navigateToEnterPinCode,
    required TResult Function(
            NavigateType navigateType, BiometricType biometricType)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateType navigateType)
        navigateToConfirmAccount,
    required TResult Function(NavigateType navigateType, String phoneNumber)
        navigateToConfirmPhone,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToConfirmationSteps,
    required TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)
        navigateToStories,
    required TResult Function(NavigateType navigateType)
        navigateToNotifications,
    required TResult Function(NavigateType navigateType) navigateToNavigation,
    required TResult Function(NavigateType navigateType, String url)
        navigateToWebView,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToEditProfile,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToPassport,
    required TResult Function(NavigateType navigateType, int categoryId)
        navigateToCompilations,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateType navigateType, String productId)
        navigateToProduct,
    required TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)
        navigateToProductImages,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToAddresses,
    required TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToEditAddress,
    required TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToAddressOnMap,
    required TResult Function(NavigateType navigateType) navigateToIntroduction,
    required TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)
        showSelectAddressBottomSheet,
  }) {
    return navigateToEnterPinCode(navigateType, enterCodeType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic result)? navigateBack,
    TResult Function(NavigateType navigateType)? navigateToEnterPhoneNumber,
    TResult Function(NavigateType navigateType, EnterCodeType enterCodeType)?
        navigateToEnterPinCode,
    TResult Function(NavigateType navigateType, BiometricType biometricType)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateType navigateType)? navigateToConfirmAccount,
    TResult Function(NavigateType navigateType, String phoneNumber)?
        navigateToConfirmPhone,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToConfirmationSteps,
    TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)?
        navigateToStories,
    TResult Function(NavigateType navigateType)? navigateToNotifications,
    TResult Function(NavigateType navigateType)? navigateToNavigation,
    TResult Function(NavigateType navigateType, String url)? navigateToWebView,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToEditProfile,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToPassport,
    TResult Function(NavigateType navigateType, int categoryId)?
        navigateToCompilations,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateType navigateType, String productId)?
        navigateToProduct,
    TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)?
        navigateToProductImages,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToAddresses,
    TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToEditAddress,
    TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToAddressOnMap,
    TResult Function(NavigateType navigateType)? navigateToIntroduction,
    TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateToEnterPinCode != null) {
      return navigateToEnterPinCode(navigateType, enterCodeType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateBack value) navigateBack,
    required TResult Function(NavigateToEnterPhoneNumber value)
        navigateToEnterPhoneNumber,
    required TResult Function(NavigateToEnterPinCode value)
        navigateToEnterPinCode,
    required TResult Function(NavigateToEnableBiometricAuth value)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateToConfirmAccount value)
        navigateToConfirmAccount,
    required TResult Function(NavigateToConfirmPhone value)
        navigateToConfirmPhone,
    required TResult Function(NavigateToConfirmationSteps value)
        navigateToConfirmationSteps,
    required TResult Function(NavigateToStories value) navigateToStories,
    required TResult Function(NavigateToNotifications value)
        navigateToNotifications,
    required TResult Function(NavigateToNavigation value) navigateToNavigation,
    required TResult Function(NavigateToWebView value) navigateToWebView,
    required TResult Function(NavigateToEditProfile value)
        navigateToEditProfile,
    required TResult Function(NavigateToPassport value) navigateToPassport,
    required TResult Function(NavigateToCompilations value)
        navigateToCompilations,
    required TResult Function(NavigateToSelectPhotoArea value)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateToPhotoTakenFinish value)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateToProduct value) navigateToProduct,
    required TResult Function(NavigateToProductImages value)
        navigateToProductImages,
    required TResult Function(NavigateToAddresses value) navigateToAddresses,
    required TResult Function(NavigateToEditAddress value)
        navigateToEditAddress,
    required TResult Function(NavigateToAddressOnMap value)
        navigateToAddressOnMap,
    required TResult Function(NavigateToIntroduction value)
        navigateToIntroduction,
    required TResult Function(ShowSelectAddressBottomSheet value)
        showSelectAddressBottomSheet,
  }) {
    return navigateToEnterPinCode(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateBack value)? navigateBack,
    TResult Function(NavigateToEnterPhoneNumber value)?
        navigateToEnterPhoneNumber,
    TResult Function(NavigateToEnterPinCode value)? navigateToEnterPinCode,
    TResult Function(NavigateToEnableBiometricAuth value)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateToConfirmAccount value)? navigateToConfirmAccount,
    TResult Function(NavigateToConfirmPhone value)? navigateToConfirmPhone,
    TResult Function(NavigateToConfirmationSteps value)?
        navigateToConfirmationSteps,
    TResult Function(NavigateToStories value)? navigateToStories,
    TResult Function(NavigateToNotifications value)? navigateToNotifications,
    TResult Function(NavigateToNavigation value)? navigateToNavigation,
    TResult Function(NavigateToWebView value)? navigateToWebView,
    TResult Function(NavigateToEditProfile value)? navigateToEditProfile,
    TResult Function(NavigateToPassport value)? navigateToPassport,
    TResult Function(NavigateToCompilations value)? navigateToCompilations,
    TResult Function(NavigateToSelectPhotoArea value)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateToPhotoTakenFinish value)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateToProduct value)? navigateToProduct,
    TResult Function(NavigateToProductImages value)? navigateToProductImages,
    TResult Function(NavigateToAddresses value)? navigateToAddresses,
    TResult Function(NavigateToEditAddress value)? navigateToEditAddress,
    TResult Function(NavigateToAddressOnMap value)? navigateToAddressOnMap,
    TResult Function(NavigateToIntroduction value)? navigateToIntroduction,
    TResult Function(ShowSelectAddressBottomSheet value)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateToEnterPinCode != null) {
      return navigateToEnterPinCode(this);
    }
    return orElse();
  }
}

abstract class NavigateToEnterPinCode implements NavigateAction {
  factory NavigateToEnterPinCode(NavigateType navigateType,
      {required EnterCodeType enterCodeType}) = _$NavigateToEnterPinCode;

  NavigateType get navigateType => throw _privateConstructorUsedError;
  EnterCodeType get enterCodeType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavigateToEnterPinCodeCopyWith<NavigateToEnterPinCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateToEnableBiometricAuthCopyWith<$Res> {
  factory $NavigateToEnableBiometricAuthCopyWith(
          NavigateToEnableBiometricAuth value,
          $Res Function(NavigateToEnableBiometricAuth) then) =
      _$NavigateToEnableBiometricAuthCopyWithImpl<$Res>;
  $Res call({NavigateType navigateType, BiometricType biometricType});
}

/// @nodoc
class _$NavigateToEnableBiometricAuthCopyWithImpl<$Res>
    extends _$NavigateActionCopyWithImpl<$Res>
    implements $NavigateToEnableBiometricAuthCopyWith<$Res> {
  _$NavigateToEnableBiometricAuthCopyWithImpl(
      NavigateToEnableBiometricAuth _value,
      $Res Function(NavigateToEnableBiometricAuth) _then)
      : super(_value, (v) => _then(v as NavigateToEnableBiometricAuth));

  @override
  NavigateToEnableBiometricAuth get _value =>
      super._value as NavigateToEnableBiometricAuth;

  @override
  $Res call({
    Object? navigateType = freezed,
    Object? biometricType = freezed,
  }) {
    return _then(NavigateToEnableBiometricAuth(
      navigateType == freezed
          ? _value.navigateType
          : navigateType // ignore: cast_nullable_to_non_nullable
              as NavigateType,
      biometricType: biometricType == freezed
          ? _value.biometricType
          : biometricType // ignore: cast_nullable_to_non_nullable
              as BiometricType,
    ));
  }
}

/// @nodoc

class _$NavigateToEnableBiometricAuth implements NavigateToEnableBiometricAuth {
  _$NavigateToEnableBiometricAuth(this.navigateType,
      {required this.biometricType});

  @override
  final NavigateType navigateType;
  @override
  final BiometricType biometricType;

  @override
  String toString() {
    return 'NavigateAction.navigateToEnableBiometricAuth(navigateType: $navigateType, biometricType: $biometricType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigateToEnableBiometricAuth &&
            (identical(other.navigateType, navigateType) ||
                const DeepCollectionEquality()
                    .equals(other.navigateType, navigateType)) &&
            (identical(other.biometricType, biometricType) ||
                const DeepCollectionEquality()
                    .equals(other.biometricType, biometricType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(navigateType) ^
      const DeepCollectionEquality().hash(biometricType);

  @JsonKey(ignore: true)
  @override
  $NavigateToEnableBiometricAuthCopyWith<NavigateToEnableBiometricAuth>
      get copyWith => _$NavigateToEnableBiometricAuthCopyWithImpl<
          NavigateToEnableBiometricAuth>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic result) navigateBack,
    required TResult Function(NavigateType navigateType)
        navigateToEnterPhoneNumber,
    required TResult Function(
            NavigateType navigateType, EnterCodeType enterCodeType)
        navigateToEnterPinCode,
    required TResult Function(
            NavigateType navigateType, BiometricType biometricType)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateType navigateType)
        navigateToConfirmAccount,
    required TResult Function(NavigateType navigateType, String phoneNumber)
        navigateToConfirmPhone,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToConfirmationSteps,
    required TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)
        navigateToStories,
    required TResult Function(NavigateType navigateType)
        navigateToNotifications,
    required TResult Function(NavigateType navigateType) navigateToNavigation,
    required TResult Function(NavigateType navigateType, String url)
        navigateToWebView,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToEditProfile,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToPassport,
    required TResult Function(NavigateType navigateType, int categoryId)
        navigateToCompilations,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateType navigateType, String productId)
        navigateToProduct,
    required TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)
        navigateToProductImages,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToAddresses,
    required TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToEditAddress,
    required TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToAddressOnMap,
    required TResult Function(NavigateType navigateType) navigateToIntroduction,
    required TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)
        showSelectAddressBottomSheet,
  }) {
    return navigateToEnableBiometricAuth(navigateType, biometricType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic result)? navigateBack,
    TResult Function(NavigateType navigateType)? navigateToEnterPhoneNumber,
    TResult Function(NavigateType navigateType, EnterCodeType enterCodeType)?
        navigateToEnterPinCode,
    TResult Function(NavigateType navigateType, BiometricType biometricType)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateType navigateType)? navigateToConfirmAccount,
    TResult Function(NavigateType navigateType, String phoneNumber)?
        navigateToConfirmPhone,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToConfirmationSteps,
    TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)?
        navigateToStories,
    TResult Function(NavigateType navigateType)? navigateToNotifications,
    TResult Function(NavigateType navigateType)? navigateToNavigation,
    TResult Function(NavigateType navigateType, String url)? navigateToWebView,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToEditProfile,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToPassport,
    TResult Function(NavigateType navigateType, int categoryId)?
        navigateToCompilations,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateType navigateType, String productId)?
        navigateToProduct,
    TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)?
        navigateToProductImages,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToAddresses,
    TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToEditAddress,
    TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToAddressOnMap,
    TResult Function(NavigateType navigateType)? navigateToIntroduction,
    TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateToEnableBiometricAuth != null) {
      return navigateToEnableBiometricAuth(navigateType, biometricType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateBack value) navigateBack,
    required TResult Function(NavigateToEnterPhoneNumber value)
        navigateToEnterPhoneNumber,
    required TResult Function(NavigateToEnterPinCode value)
        navigateToEnterPinCode,
    required TResult Function(NavigateToEnableBiometricAuth value)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateToConfirmAccount value)
        navigateToConfirmAccount,
    required TResult Function(NavigateToConfirmPhone value)
        navigateToConfirmPhone,
    required TResult Function(NavigateToConfirmationSteps value)
        navigateToConfirmationSteps,
    required TResult Function(NavigateToStories value) navigateToStories,
    required TResult Function(NavigateToNotifications value)
        navigateToNotifications,
    required TResult Function(NavigateToNavigation value) navigateToNavigation,
    required TResult Function(NavigateToWebView value) navigateToWebView,
    required TResult Function(NavigateToEditProfile value)
        navigateToEditProfile,
    required TResult Function(NavigateToPassport value) navigateToPassport,
    required TResult Function(NavigateToCompilations value)
        navigateToCompilations,
    required TResult Function(NavigateToSelectPhotoArea value)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateToPhotoTakenFinish value)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateToProduct value) navigateToProduct,
    required TResult Function(NavigateToProductImages value)
        navigateToProductImages,
    required TResult Function(NavigateToAddresses value) navigateToAddresses,
    required TResult Function(NavigateToEditAddress value)
        navigateToEditAddress,
    required TResult Function(NavigateToAddressOnMap value)
        navigateToAddressOnMap,
    required TResult Function(NavigateToIntroduction value)
        navigateToIntroduction,
    required TResult Function(ShowSelectAddressBottomSheet value)
        showSelectAddressBottomSheet,
  }) {
    return navigateToEnableBiometricAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateBack value)? navigateBack,
    TResult Function(NavigateToEnterPhoneNumber value)?
        navigateToEnterPhoneNumber,
    TResult Function(NavigateToEnterPinCode value)? navigateToEnterPinCode,
    TResult Function(NavigateToEnableBiometricAuth value)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateToConfirmAccount value)? navigateToConfirmAccount,
    TResult Function(NavigateToConfirmPhone value)? navigateToConfirmPhone,
    TResult Function(NavigateToConfirmationSteps value)?
        navigateToConfirmationSteps,
    TResult Function(NavigateToStories value)? navigateToStories,
    TResult Function(NavigateToNotifications value)? navigateToNotifications,
    TResult Function(NavigateToNavigation value)? navigateToNavigation,
    TResult Function(NavigateToWebView value)? navigateToWebView,
    TResult Function(NavigateToEditProfile value)? navigateToEditProfile,
    TResult Function(NavigateToPassport value)? navigateToPassport,
    TResult Function(NavigateToCompilations value)? navigateToCompilations,
    TResult Function(NavigateToSelectPhotoArea value)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateToPhotoTakenFinish value)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateToProduct value)? navigateToProduct,
    TResult Function(NavigateToProductImages value)? navigateToProductImages,
    TResult Function(NavigateToAddresses value)? navigateToAddresses,
    TResult Function(NavigateToEditAddress value)? navigateToEditAddress,
    TResult Function(NavigateToAddressOnMap value)? navigateToAddressOnMap,
    TResult Function(NavigateToIntroduction value)? navigateToIntroduction,
    TResult Function(ShowSelectAddressBottomSheet value)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateToEnableBiometricAuth != null) {
      return navigateToEnableBiometricAuth(this);
    }
    return orElse();
  }
}

abstract class NavigateToEnableBiometricAuth implements NavigateAction {
  factory NavigateToEnableBiometricAuth(NavigateType navigateType,
      {required BiometricType biometricType}) = _$NavigateToEnableBiometricAuth;

  NavigateType get navigateType => throw _privateConstructorUsedError;
  BiometricType get biometricType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavigateToEnableBiometricAuthCopyWith<NavigateToEnableBiometricAuth>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateToConfirmAccountCopyWith<$Res> {
  factory $NavigateToConfirmAccountCopyWith(NavigateToConfirmAccount value,
          $Res Function(NavigateToConfirmAccount) then) =
      _$NavigateToConfirmAccountCopyWithImpl<$Res>;
  $Res call({NavigateType navigateType});
}

/// @nodoc
class _$NavigateToConfirmAccountCopyWithImpl<$Res>
    extends _$NavigateActionCopyWithImpl<$Res>
    implements $NavigateToConfirmAccountCopyWith<$Res> {
  _$NavigateToConfirmAccountCopyWithImpl(NavigateToConfirmAccount _value,
      $Res Function(NavigateToConfirmAccount) _then)
      : super(_value, (v) => _then(v as NavigateToConfirmAccount));

  @override
  NavigateToConfirmAccount get _value =>
      super._value as NavigateToConfirmAccount;

  @override
  $Res call({
    Object? navigateType = freezed,
  }) {
    return _then(NavigateToConfirmAccount(
      navigateType == freezed
          ? _value.navigateType
          : navigateType // ignore: cast_nullable_to_non_nullable
              as NavigateType,
    ));
  }
}

/// @nodoc

class _$NavigateToConfirmAccount implements NavigateToConfirmAccount {
  _$NavigateToConfirmAccount(this.navigateType);

  @override
  final NavigateType navigateType;

  @override
  String toString() {
    return 'NavigateAction.navigateToConfirmAccount(navigateType: $navigateType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigateToConfirmAccount &&
            (identical(other.navigateType, navigateType) ||
                const DeepCollectionEquality()
                    .equals(other.navigateType, navigateType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(navigateType);

  @JsonKey(ignore: true)
  @override
  $NavigateToConfirmAccountCopyWith<NavigateToConfirmAccount> get copyWith =>
      _$NavigateToConfirmAccountCopyWithImpl<NavigateToConfirmAccount>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic result) navigateBack,
    required TResult Function(NavigateType navigateType)
        navigateToEnterPhoneNumber,
    required TResult Function(
            NavigateType navigateType, EnterCodeType enterCodeType)
        navigateToEnterPinCode,
    required TResult Function(
            NavigateType navigateType, BiometricType biometricType)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateType navigateType)
        navigateToConfirmAccount,
    required TResult Function(NavigateType navigateType, String phoneNumber)
        navigateToConfirmPhone,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToConfirmationSteps,
    required TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)
        navigateToStories,
    required TResult Function(NavigateType navigateType)
        navigateToNotifications,
    required TResult Function(NavigateType navigateType) navigateToNavigation,
    required TResult Function(NavigateType navigateType, String url)
        navigateToWebView,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToEditProfile,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToPassport,
    required TResult Function(NavigateType navigateType, int categoryId)
        navigateToCompilations,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateType navigateType, String productId)
        navigateToProduct,
    required TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)
        navigateToProductImages,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToAddresses,
    required TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToEditAddress,
    required TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToAddressOnMap,
    required TResult Function(NavigateType navigateType) navigateToIntroduction,
    required TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)
        showSelectAddressBottomSheet,
  }) {
    return navigateToConfirmAccount(navigateType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic result)? navigateBack,
    TResult Function(NavigateType navigateType)? navigateToEnterPhoneNumber,
    TResult Function(NavigateType navigateType, EnterCodeType enterCodeType)?
        navigateToEnterPinCode,
    TResult Function(NavigateType navigateType, BiometricType biometricType)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateType navigateType)? navigateToConfirmAccount,
    TResult Function(NavigateType navigateType, String phoneNumber)?
        navigateToConfirmPhone,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToConfirmationSteps,
    TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)?
        navigateToStories,
    TResult Function(NavigateType navigateType)? navigateToNotifications,
    TResult Function(NavigateType navigateType)? navigateToNavigation,
    TResult Function(NavigateType navigateType, String url)? navigateToWebView,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToEditProfile,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToPassport,
    TResult Function(NavigateType navigateType, int categoryId)?
        navigateToCompilations,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateType navigateType, String productId)?
        navigateToProduct,
    TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)?
        navigateToProductImages,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToAddresses,
    TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToEditAddress,
    TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToAddressOnMap,
    TResult Function(NavigateType navigateType)? navigateToIntroduction,
    TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateToConfirmAccount != null) {
      return navigateToConfirmAccount(navigateType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateBack value) navigateBack,
    required TResult Function(NavigateToEnterPhoneNumber value)
        navigateToEnterPhoneNumber,
    required TResult Function(NavigateToEnterPinCode value)
        navigateToEnterPinCode,
    required TResult Function(NavigateToEnableBiometricAuth value)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateToConfirmAccount value)
        navigateToConfirmAccount,
    required TResult Function(NavigateToConfirmPhone value)
        navigateToConfirmPhone,
    required TResult Function(NavigateToConfirmationSteps value)
        navigateToConfirmationSteps,
    required TResult Function(NavigateToStories value) navigateToStories,
    required TResult Function(NavigateToNotifications value)
        navigateToNotifications,
    required TResult Function(NavigateToNavigation value) navigateToNavigation,
    required TResult Function(NavigateToWebView value) navigateToWebView,
    required TResult Function(NavigateToEditProfile value)
        navigateToEditProfile,
    required TResult Function(NavigateToPassport value) navigateToPassport,
    required TResult Function(NavigateToCompilations value)
        navigateToCompilations,
    required TResult Function(NavigateToSelectPhotoArea value)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateToPhotoTakenFinish value)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateToProduct value) navigateToProduct,
    required TResult Function(NavigateToProductImages value)
        navigateToProductImages,
    required TResult Function(NavigateToAddresses value) navigateToAddresses,
    required TResult Function(NavigateToEditAddress value)
        navigateToEditAddress,
    required TResult Function(NavigateToAddressOnMap value)
        navigateToAddressOnMap,
    required TResult Function(NavigateToIntroduction value)
        navigateToIntroduction,
    required TResult Function(ShowSelectAddressBottomSheet value)
        showSelectAddressBottomSheet,
  }) {
    return navigateToConfirmAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateBack value)? navigateBack,
    TResult Function(NavigateToEnterPhoneNumber value)?
        navigateToEnterPhoneNumber,
    TResult Function(NavigateToEnterPinCode value)? navigateToEnterPinCode,
    TResult Function(NavigateToEnableBiometricAuth value)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateToConfirmAccount value)? navigateToConfirmAccount,
    TResult Function(NavigateToConfirmPhone value)? navigateToConfirmPhone,
    TResult Function(NavigateToConfirmationSteps value)?
        navigateToConfirmationSteps,
    TResult Function(NavigateToStories value)? navigateToStories,
    TResult Function(NavigateToNotifications value)? navigateToNotifications,
    TResult Function(NavigateToNavigation value)? navigateToNavigation,
    TResult Function(NavigateToWebView value)? navigateToWebView,
    TResult Function(NavigateToEditProfile value)? navigateToEditProfile,
    TResult Function(NavigateToPassport value)? navigateToPassport,
    TResult Function(NavigateToCompilations value)? navigateToCompilations,
    TResult Function(NavigateToSelectPhotoArea value)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateToPhotoTakenFinish value)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateToProduct value)? navigateToProduct,
    TResult Function(NavigateToProductImages value)? navigateToProductImages,
    TResult Function(NavigateToAddresses value)? navigateToAddresses,
    TResult Function(NavigateToEditAddress value)? navigateToEditAddress,
    TResult Function(NavigateToAddressOnMap value)? navigateToAddressOnMap,
    TResult Function(NavigateToIntroduction value)? navigateToIntroduction,
    TResult Function(ShowSelectAddressBottomSheet value)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateToConfirmAccount != null) {
      return navigateToConfirmAccount(this);
    }
    return orElse();
  }
}

abstract class NavigateToConfirmAccount implements NavigateAction {
  factory NavigateToConfirmAccount(NavigateType navigateType) =
      _$NavigateToConfirmAccount;

  NavigateType get navigateType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavigateToConfirmAccountCopyWith<NavigateToConfirmAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateToConfirmPhoneCopyWith<$Res> {
  factory $NavigateToConfirmPhoneCopyWith(NavigateToConfirmPhone value,
          $Res Function(NavigateToConfirmPhone) then) =
      _$NavigateToConfirmPhoneCopyWithImpl<$Res>;
  $Res call({NavigateType navigateType, String phoneNumber});
}

/// @nodoc
class _$NavigateToConfirmPhoneCopyWithImpl<$Res>
    extends _$NavigateActionCopyWithImpl<$Res>
    implements $NavigateToConfirmPhoneCopyWith<$Res> {
  _$NavigateToConfirmPhoneCopyWithImpl(NavigateToConfirmPhone _value,
      $Res Function(NavigateToConfirmPhone) _then)
      : super(_value, (v) => _then(v as NavigateToConfirmPhone));

  @override
  NavigateToConfirmPhone get _value => super._value as NavigateToConfirmPhone;

  @override
  $Res call({
    Object? navigateType = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(NavigateToConfirmPhone(
      navigateType == freezed
          ? _value.navigateType
          : navigateType // ignore: cast_nullable_to_non_nullable
              as NavigateType,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NavigateToConfirmPhone implements NavigateToConfirmPhone {
  _$NavigateToConfirmPhone(this.navigateType, {required this.phoneNumber});

  @override
  final NavigateType navigateType;
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'NavigateAction.navigateToConfirmPhone(navigateType: $navigateType, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigateToConfirmPhone &&
            (identical(other.navigateType, navigateType) ||
                const DeepCollectionEquality()
                    .equals(other.navigateType, navigateType)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(navigateType) ^
      const DeepCollectionEquality().hash(phoneNumber);

  @JsonKey(ignore: true)
  @override
  $NavigateToConfirmPhoneCopyWith<NavigateToConfirmPhone> get copyWith =>
      _$NavigateToConfirmPhoneCopyWithImpl<NavigateToConfirmPhone>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic result) navigateBack,
    required TResult Function(NavigateType navigateType)
        navigateToEnterPhoneNumber,
    required TResult Function(
            NavigateType navigateType, EnterCodeType enterCodeType)
        navigateToEnterPinCode,
    required TResult Function(
            NavigateType navigateType, BiometricType biometricType)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateType navigateType)
        navigateToConfirmAccount,
    required TResult Function(NavigateType navigateType, String phoneNumber)
        navigateToConfirmPhone,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToConfirmationSteps,
    required TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)
        navigateToStories,
    required TResult Function(NavigateType navigateType)
        navigateToNotifications,
    required TResult Function(NavigateType navigateType) navigateToNavigation,
    required TResult Function(NavigateType navigateType, String url)
        navigateToWebView,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToEditProfile,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToPassport,
    required TResult Function(NavigateType navigateType, int categoryId)
        navigateToCompilations,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateType navigateType, String productId)
        navigateToProduct,
    required TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)
        navigateToProductImages,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToAddresses,
    required TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToEditAddress,
    required TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToAddressOnMap,
    required TResult Function(NavigateType navigateType) navigateToIntroduction,
    required TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)
        showSelectAddressBottomSheet,
  }) {
    return navigateToConfirmPhone(navigateType, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic result)? navigateBack,
    TResult Function(NavigateType navigateType)? navigateToEnterPhoneNumber,
    TResult Function(NavigateType navigateType, EnterCodeType enterCodeType)?
        navigateToEnterPinCode,
    TResult Function(NavigateType navigateType, BiometricType biometricType)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateType navigateType)? navigateToConfirmAccount,
    TResult Function(NavigateType navigateType, String phoneNumber)?
        navigateToConfirmPhone,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToConfirmationSteps,
    TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)?
        navigateToStories,
    TResult Function(NavigateType navigateType)? navigateToNotifications,
    TResult Function(NavigateType navigateType)? navigateToNavigation,
    TResult Function(NavigateType navigateType, String url)? navigateToWebView,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToEditProfile,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToPassport,
    TResult Function(NavigateType navigateType, int categoryId)?
        navigateToCompilations,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateType navigateType, String productId)?
        navigateToProduct,
    TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)?
        navigateToProductImages,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToAddresses,
    TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToEditAddress,
    TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToAddressOnMap,
    TResult Function(NavigateType navigateType)? navigateToIntroduction,
    TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateToConfirmPhone != null) {
      return navigateToConfirmPhone(navigateType, phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateBack value) navigateBack,
    required TResult Function(NavigateToEnterPhoneNumber value)
        navigateToEnterPhoneNumber,
    required TResult Function(NavigateToEnterPinCode value)
        navigateToEnterPinCode,
    required TResult Function(NavigateToEnableBiometricAuth value)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateToConfirmAccount value)
        navigateToConfirmAccount,
    required TResult Function(NavigateToConfirmPhone value)
        navigateToConfirmPhone,
    required TResult Function(NavigateToConfirmationSteps value)
        navigateToConfirmationSteps,
    required TResult Function(NavigateToStories value) navigateToStories,
    required TResult Function(NavigateToNotifications value)
        navigateToNotifications,
    required TResult Function(NavigateToNavigation value) navigateToNavigation,
    required TResult Function(NavigateToWebView value) navigateToWebView,
    required TResult Function(NavigateToEditProfile value)
        navigateToEditProfile,
    required TResult Function(NavigateToPassport value) navigateToPassport,
    required TResult Function(NavigateToCompilations value)
        navigateToCompilations,
    required TResult Function(NavigateToSelectPhotoArea value)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateToPhotoTakenFinish value)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateToProduct value) navigateToProduct,
    required TResult Function(NavigateToProductImages value)
        navigateToProductImages,
    required TResult Function(NavigateToAddresses value) navigateToAddresses,
    required TResult Function(NavigateToEditAddress value)
        navigateToEditAddress,
    required TResult Function(NavigateToAddressOnMap value)
        navigateToAddressOnMap,
    required TResult Function(NavigateToIntroduction value)
        navigateToIntroduction,
    required TResult Function(ShowSelectAddressBottomSheet value)
        showSelectAddressBottomSheet,
  }) {
    return navigateToConfirmPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateBack value)? navigateBack,
    TResult Function(NavigateToEnterPhoneNumber value)?
        navigateToEnterPhoneNumber,
    TResult Function(NavigateToEnterPinCode value)? navigateToEnterPinCode,
    TResult Function(NavigateToEnableBiometricAuth value)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateToConfirmAccount value)? navigateToConfirmAccount,
    TResult Function(NavigateToConfirmPhone value)? navigateToConfirmPhone,
    TResult Function(NavigateToConfirmationSteps value)?
        navigateToConfirmationSteps,
    TResult Function(NavigateToStories value)? navigateToStories,
    TResult Function(NavigateToNotifications value)? navigateToNotifications,
    TResult Function(NavigateToNavigation value)? navigateToNavigation,
    TResult Function(NavigateToWebView value)? navigateToWebView,
    TResult Function(NavigateToEditProfile value)? navigateToEditProfile,
    TResult Function(NavigateToPassport value)? navigateToPassport,
    TResult Function(NavigateToCompilations value)? navigateToCompilations,
    TResult Function(NavigateToSelectPhotoArea value)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateToPhotoTakenFinish value)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateToProduct value)? navigateToProduct,
    TResult Function(NavigateToProductImages value)? navigateToProductImages,
    TResult Function(NavigateToAddresses value)? navigateToAddresses,
    TResult Function(NavigateToEditAddress value)? navigateToEditAddress,
    TResult Function(NavigateToAddressOnMap value)? navigateToAddressOnMap,
    TResult Function(NavigateToIntroduction value)? navigateToIntroduction,
    TResult Function(ShowSelectAddressBottomSheet value)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateToConfirmPhone != null) {
      return navigateToConfirmPhone(this);
    }
    return orElse();
  }
}

abstract class NavigateToConfirmPhone implements NavigateAction {
  factory NavigateToConfirmPhone(NavigateType navigateType,
      {required String phoneNumber}) = _$NavigateToConfirmPhone;

  NavigateType get navigateType => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavigateToConfirmPhoneCopyWith<NavigateToConfirmPhone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateToConfirmationStepsCopyWith<$Res> {
  factory $NavigateToConfirmationStepsCopyWith(
          NavigateToConfirmationSteps value,
          $Res Function(NavigateToConfirmationSteps) then) =
      _$NavigateToConfirmationStepsCopyWithImpl<$Res>;
  $Res call({NavigateType navigateType, ProfileEntity? profile});
}

/// @nodoc
class _$NavigateToConfirmationStepsCopyWithImpl<$Res>
    extends _$NavigateActionCopyWithImpl<$Res>
    implements $NavigateToConfirmationStepsCopyWith<$Res> {
  _$NavigateToConfirmationStepsCopyWithImpl(NavigateToConfirmationSteps _value,
      $Res Function(NavigateToConfirmationSteps) _then)
      : super(_value, (v) => _then(v as NavigateToConfirmationSteps));

  @override
  NavigateToConfirmationSteps get _value =>
      super._value as NavigateToConfirmationSteps;

  @override
  $Res call({
    Object? navigateType = freezed,
    Object? profile = freezed,
  }) {
    return _then(NavigateToConfirmationSteps(
      navigateType == freezed
          ? _value.navigateType
          : navigateType // ignore: cast_nullable_to_non_nullable
              as NavigateType,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileEntity?,
    ));
  }
}

/// @nodoc

class _$NavigateToConfirmationSteps implements NavigateToConfirmationSteps {
  _$NavigateToConfirmationSteps(this.navigateType, {this.profile});

  @override
  final NavigateType navigateType;
  @override
  final ProfileEntity? profile;

  @override
  String toString() {
    return 'NavigateAction.navigateToConfirmationSteps(navigateType: $navigateType, profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigateToConfirmationSteps &&
            (identical(other.navigateType, navigateType) ||
                const DeepCollectionEquality()
                    .equals(other.navigateType, navigateType)) &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality().equals(other.profile, profile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(navigateType) ^
      const DeepCollectionEquality().hash(profile);

  @JsonKey(ignore: true)
  @override
  $NavigateToConfirmationStepsCopyWith<NavigateToConfirmationSteps>
      get copyWith => _$NavigateToConfirmationStepsCopyWithImpl<
          NavigateToConfirmationSteps>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic result) navigateBack,
    required TResult Function(NavigateType navigateType)
        navigateToEnterPhoneNumber,
    required TResult Function(
            NavigateType navigateType, EnterCodeType enterCodeType)
        navigateToEnterPinCode,
    required TResult Function(
            NavigateType navigateType, BiometricType biometricType)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateType navigateType)
        navigateToConfirmAccount,
    required TResult Function(NavigateType navigateType, String phoneNumber)
        navigateToConfirmPhone,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToConfirmationSteps,
    required TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)
        navigateToStories,
    required TResult Function(NavigateType navigateType)
        navigateToNotifications,
    required TResult Function(NavigateType navigateType) navigateToNavigation,
    required TResult Function(NavigateType navigateType, String url)
        navigateToWebView,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToEditProfile,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToPassport,
    required TResult Function(NavigateType navigateType, int categoryId)
        navigateToCompilations,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateType navigateType, String productId)
        navigateToProduct,
    required TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)
        navigateToProductImages,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToAddresses,
    required TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToEditAddress,
    required TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToAddressOnMap,
    required TResult Function(NavigateType navigateType) navigateToIntroduction,
    required TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)
        showSelectAddressBottomSheet,
  }) {
    return navigateToConfirmationSteps(navigateType, profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic result)? navigateBack,
    TResult Function(NavigateType navigateType)? navigateToEnterPhoneNumber,
    TResult Function(NavigateType navigateType, EnterCodeType enterCodeType)?
        navigateToEnterPinCode,
    TResult Function(NavigateType navigateType, BiometricType biometricType)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateType navigateType)? navigateToConfirmAccount,
    TResult Function(NavigateType navigateType, String phoneNumber)?
        navigateToConfirmPhone,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToConfirmationSteps,
    TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)?
        navigateToStories,
    TResult Function(NavigateType navigateType)? navigateToNotifications,
    TResult Function(NavigateType navigateType)? navigateToNavigation,
    TResult Function(NavigateType navigateType, String url)? navigateToWebView,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToEditProfile,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToPassport,
    TResult Function(NavigateType navigateType, int categoryId)?
        navigateToCompilations,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateType navigateType, String productId)?
        navigateToProduct,
    TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)?
        navigateToProductImages,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToAddresses,
    TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToEditAddress,
    TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToAddressOnMap,
    TResult Function(NavigateType navigateType)? navigateToIntroduction,
    TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateToConfirmationSteps != null) {
      return navigateToConfirmationSteps(navigateType, profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateBack value) navigateBack,
    required TResult Function(NavigateToEnterPhoneNumber value)
        navigateToEnterPhoneNumber,
    required TResult Function(NavigateToEnterPinCode value)
        navigateToEnterPinCode,
    required TResult Function(NavigateToEnableBiometricAuth value)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateToConfirmAccount value)
        navigateToConfirmAccount,
    required TResult Function(NavigateToConfirmPhone value)
        navigateToConfirmPhone,
    required TResult Function(NavigateToConfirmationSteps value)
        navigateToConfirmationSteps,
    required TResult Function(NavigateToStories value) navigateToStories,
    required TResult Function(NavigateToNotifications value)
        navigateToNotifications,
    required TResult Function(NavigateToNavigation value) navigateToNavigation,
    required TResult Function(NavigateToWebView value) navigateToWebView,
    required TResult Function(NavigateToEditProfile value)
        navigateToEditProfile,
    required TResult Function(NavigateToPassport value) navigateToPassport,
    required TResult Function(NavigateToCompilations value)
        navigateToCompilations,
    required TResult Function(NavigateToSelectPhotoArea value)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateToPhotoTakenFinish value)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateToProduct value) navigateToProduct,
    required TResult Function(NavigateToProductImages value)
        navigateToProductImages,
    required TResult Function(NavigateToAddresses value) navigateToAddresses,
    required TResult Function(NavigateToEditAddress value)
        navigateToEditAddress,
    required TResult Function(NavigateToAddressOnMap value)
        navigateToAddressOnMap,
    required TResult Function(NavigateToIntroduction value)
        navigateToIntroduction,
    required TResult Function(ShowSelectAddressBottomSheet value)
        showSelectAddressBottomSheet,
  }) {
    return navigateToConfirmationSteps(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateBack value)? navigateBack,
    TResult Function(NavigateToEnterPhoneNumber value)?
        navigateToEnterPhoneNumber,
    TResult Function(NavigateToEnterPinCode value)? navigateToEnterPinCode,
    TResult Function(NavigateToEnableBiometricAuth value)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateToConfirmAccount value)? navigateToConfirmAccount,
    TResult Function(NavigateToConfirmPhone value)? navigateToConfirmPhone,
    TResult Function(NavigateToConfirmationSteps value)?
        navigateToConfirmationSteps,
    TResult Function(NavigateToStories value)? navigateToStories,
    TResult Function(NavigateToNotifications value)? navigateToNotifications,
    TResult Function(NavigateToNavigation value)? navigateToNavigation,
    TResult Function(NavigateToWebView value)? navigateToWebView,
    TResult Function(NavigateToEditProfile value)? navigateToEditProfile,
    TResult Function(NavigateToPassport value)? navigateToPassport,
    TResult Function(NavigateToCompilations value)? navigateToCompilations,
    TResult Function(NavigateToSelectPhotoArea value)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateToPhotoTakenFinish value)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateToProduct value)? navigateToProduct,
    TResult Function(NavigateToProductImages value)? navigateToProductImages,
    TResult Function(NavigateToAddresses value)? navigateToAddresses,
    TResult Function(NavigateToEditAddress value)? navigateToEditAddress,
    TResult Function(NavigateToAddressOnMap value)? navigateToAddressOnMap,
    TResult Function(NavigateToIntroduction value)? navigateToIntroduction,
    TResult Function(ShowSelectAddressBottomSheet value)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateToConfirmationSteps != null) {
      return navigateToConfirmationSteps(this);
    }
    return orElse();
  }
}

abstract class NavigateToConfirmationSteps implements NavigateAction {
  factory NavigateToConfirmationSteps(NavigateType navigateType,
      {ProfileEntity? profile}) = _$NavigateToConfirmationSteps;

  NavigateType get navigateType => throw _privateConstructorUsedError;
  ProfileEntity? get profile => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavigateToConfirmationStepsCopyWith<NavigateToConfirmationSteps>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateToStoriesCopyWith<$Res> {
  factory $NavigateToStoriesCopyWith(
          NavigateToStories value, $Res Function(NavigateToStories) then) =
      _$NavigateToStoriesCopyWithImpl<$Res>;
  $Res call(
      {NavigateType navigateType,
      int indexCurrentStory,
      List<StoryEntity> stories});
}

/// @nodoc
class _$NavigateToStoriesCopyWithImpl<$Res>
    extends _$NavigateActionCopyWithImpl<$Res>
    implements $NavigateToStoriesCopyWith<$Res> {
  _$NavigateToStoriesCopyWithImpl(
      NavigateToStories _value, $Res Function(NavigateToStories) _then)
      : super(_value, (v) => _then(v as NavigateToStories));

  @override
  NavigateToStories get _value => super._value as NavigateToStories;

  @override
  $Res call({
    Object? navigateType = freezed,
    Object? indexCurrentStory = freezed,
    Object? stories = freezed,
  }) {
    return _then(NavigateToStories(
      navigateType == freezed
          ? _value.navigateType
          : navigateType // ignore: cast_nullable_to_non_nullable
              as NavigateType,
      indexCurrentStory: indexCurrentStory == freezed
          ? _value.indexCurrentStory
          : indexCurrentStory // ignore: cast_nullable_to_non_nullable
              as int,
      stories: stories == freezed
          ? _value.stories
          : stories // ignore: cast_nullable_to_non_nullable
              as List<StoryEntity>,
    ));
  }
}

/// @nodoc

class _$NavigateToStories implements NavigateToStories {
  _$NavigateToStories(this.navigateType,
      {required this.indexCurrentStory, required this.stories});

  @override
  final NavigateType navigateType;
  @override
  final int indexCurrentStory;
  @override
  final List<StoryEntity> stories;

  @override
  String toString() {
    return 'NavigateAction.navigateToStories(navigateType: $navigateType, indexCurrentStory: $indexCurrentStory, stories: $stories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigateToStories &&
            (identical(other.navigateType, navigateType) ||
                const DeepCollectionEquality()
                    .equals(other.navigateType, navigateType)) &&
            (identical(other.indexCurrentStory, indexCurrentStory) ||
                const DeepCollectionEquality()
                    .equals(other.indexCurrentStory, indexCurrentStory)) &&
            (identical(other.stories, stories) ||
                const DeepCollectionEquality().equals(other.stories, stories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(navigateType) ^
      const DeepCollectionEquality().hash(indexCurrentStory) ^
      const DeepCollectionEquality().hash(stories);

  @JsonKey(ignore: true)
  @override
  $NavigateToStoriesCopyWith<NavigateToStories> get copyWith =>
      _$NavigateToStoriesCopyWithImpl<NavigateToStories>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic result) navigateBack,
    required TResult Function(NavigateType navigateType)
        navigateToEnterPhoneNumber,
    required TResult Function(
            NavigateType navigateType, EnterCodeType enterCodeType)
        navigateToEnterPinCode,
    required TResult Function(
            NavigateType navigateType, BiometricType biometricType)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateType navigateType)
        navigateToConfirmAccount,
    required TResult Function(NavigateType navigateType, String phoneNumber)
        navigateToConfirmPhone,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToConfirmationSteps,
    required TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)
        navigateToStories,
    required TResult Function(NavigateType navigateType)
        navigateToNotifications,
    required TResult Function(NavigateType navigateType) navigateToNavigation,
    required TResult Function(NavigateType navigateType, String url)
        navigateToWebView,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToEditProfile,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToPassport,
    required TResult Function(NavigateType navigateType, int categoryId)
        navigateToCompilations,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateType navigateType, String productId)
        navigateToProduct,
    required TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)
        navigateToProductImages,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToAddresses,
    required TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToEditAddress,
    required TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToAddressOnMap,
    required TResult Function(NavigateType navigateType) navigateToIntroduction,
    required TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)
        showSelectAddressBottomSheet,
  }) {
    return navigateToStories(navigateType, indexCurrentStory, stories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic result)? navigateBack,
    TResult Function(NavigateType navigateType)? navigateToEnterPhoneNumber,
    TResult Function(NavigateType navigateType, EnterCodeType enterCodeType)?
        navigateToEnterPinCode,
    TResult Function(NavigateType navigateType, BiometricType biometricType)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateType navigateType)? navigateToConfirmAccount,
    TResult Function(NavigateType navigateType, String phoneNumber)?
        navigateToConfirmPhone,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToConfirmationSteps,
    TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)?
        navigateToStories,
    TResult Function(NavigateType navigateType)? navigateToNotifications,
    TResult Function(NavigateType navigateType)? navigateToNavigation,
    TResult Function(NavigateType navigateType, String url)? navigateToWebView,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToEditProfile,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToPassport,
    TResult Function(NavigateType navigateType, int categoryId)?
        navigateToCompilations,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateType navigateType, String productId)?
        navigateToProduct,
    TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)?
        navigateToProductImages,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToAddresses,
    TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToEditAddress,
    TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToAddressOnMap,
    TResult Function(NavigateType navigateType)? navigateToIntroduction,
    TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateToStories != null) {
      return navigateToStories(navigateType, indexCurrentStory, stories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateBack value) navigateBack,
    required TResult Function(NavigateToEnterPhoneNumber value)
        navigateToEnterPhoneNumber,
    required TResult Function(NavigateToEnterPinCode value)
        navigateToEnterPinCode,
    required TResult Function(NavigateToEnableBiometricAuth value)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateToConfirmAccount value)
        navigateToConfirmAccount,
    required TResult Function(NavigateToConfirmPhone value)
        navigateToConfirmPhone,
    required TResult Function(NavigateToConfirmationSteps value)
        navigateToConfirmationSteps,
    required TResult Function(NavigateToStories value) navigateToStories,
    required TResult Function(NavigateToNotifications value)
        navigateToNotifications,
    required TResult Function(NavigateToNavigation value) navigateToNavigation,
    required TResult Function(NavigateToWebView value) navigateToWebView,
    required TResult Function(NavigateToEditProfile value)
        navigateToEditProfile,
    required TResult Function(NavigateToPassport value) navigateToPassport,
    required TResult Function(NavigateToCompilations value)
        navigateToCompilations,
    required TResult Function(NavigateToSelectPhotoArea value)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateToPhotoTakenFinish value)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateToProduct value) navigateToProduct,
    required TResult Function(NavigateToProductImages value)
        navigateToProductImages,
    required TResult Function(NavigateToAddresses value) navigateToAddresses,
    required TResult Function(NavigateToEditAddress value)
        navigateToEditAddress,
    required TResult Function(NavigateToAddressOnMap value)
        navigateToAddressOnMap,
    required TResult Function(NavigateToIntroduction value)
        navigateToIntroduction,
    required TResult Function(ShowSelectAddressBottomSheet value)
        showSelectAddressBottomSheet,
  }) {
    return navigateToStories(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateBack value)? navigateBack,
    TResult Function(NavigateToEnterPhoneNumber value)?
        navigateToEnterPhoneNumber,
    TResult Function(NavigateToEnterPinCode value)? navigateToEnterPinCode,
    TResult Function(NavigateToEnableBiometricAuth value)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateToConfirmAccount value)? navigateToConfirmAccount,
    TResult Function(NavigateToConfirmPhone value)? navigateToConfirmPhone,
    TResult Function(NavigateToConfirmationSteps value)?
        navigateToConfirmationSteps,
    TResult Function(NavigateToStories value)? navigateToStories,
    TResult Function(NavigateToNotifications value)? navigateToNotifications,
    TResult Function(NavigateToNavigation value)? navigateToNavigation,
    TResult Function(NavigateToWebView value)? navigateToWebView,
    TResult Function(NavigateToEditProfile value)? navigateToEditProfile,
    TResult Function(NavigateToPassport value)? navigateToPassport,
    TResult Function(NavigateToCompilations value)? navigateToCompilations,
    TResult Function(NavigateToSelectPhotoArea value)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateToPhotoTakenFinish value)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateToProduct value)? navigateToProduct,
    TResult Function(NavigateToProductImages value)? navigateToProductImages,
    TResult Function(NavigateToAddresses value)? navigateToAddresses,
    TResult Function(NavigateToEditAddress value)? navigateToEditAddress,
    TResult Function(NavigateToAddressOnMap value)? navigateToAddressOnMap,
    TResult Function(NavigateToIntroduction value)? navigateToIntroduction,
    TResult Function(ShowSelectAddressBottomSheet value)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateToStories != null) {
      return navigateToStories(this);
    }
    return orElse();
  }
}

abstract class NavigateToStories implements NavigateAction {
  factory NavigateToStories(NavigateType navigateType,
      {required int indexCurrentStory,
      required List<StoryEntity> stories}) = _$NavigateToStories;

  NavigateType get navigateType => throw _privateConstructorUsedError;
  int get indexCurrentStory => throw _privateConstructorUsedError;
  List<StoryEntity> get stories => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavigateToStoriesCopyWith<NavigateToStories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateToNotificationsCopyWith<$Res> {
  factory $NavigateToNotificationsCopyWith(NavigateToNotifications value,
          $Res Function(NavigateToNotifications) then) =
      _$NavigateToNotificationsCopyWithImpl<$Res>;
  $Res call({NavigateType navigateType});
}

/// @nodoc
class _$NavigateToNotificationsCopyWithImpl<$Res>
    extends _$NavigateActionCopyWithImpl<$Res>
    implements $NavigateToNotificationsCopyWith<$Res> {
  _$NavigateToNotificationsCopyWithImpl(NavigateToNotifications _value,
      $Res Function(NavigateToNotifications) _then)
      : super(_value, (v) => _then(v as NavigateToNotifications));

  @override
  NavigateToNotifications get _value => super._value as NavigateToNotifications;

  @override
  $Res call({
    Object? navigateType = freezed,
  }) {
    return _then(NavigateToNotifications(
      navigateType == freezed
          ? _value.navigateType
          : navigateType // ignore: cast_nullable_to_non_nullable
              as NavigateType,
    ));
  }
}

/// @nodoc

class _$NavigateToNotifications implements NavigateToNotifications {
  _$NavigateToNotifications(this.navigateType);

  @override
  final NavigateType navigateType;

  @override
  String toString() {
    return 'NavigateAction.navigateToNotifications(navigateType: $navigateType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigateToNotifications &&
            (identical(other.navigateType, navigateType) ||
                const DeepCollectionEquality()
                    .equals(other.navigateType, navigateType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(navigateType);

  @JsonKey(ignore: true)
  @override
  $NavigateToNotificationsCopyWith<NavigateToNotifications> get copyWith =>
      _$NavigateToNotificationsCopyWithImpl<NavigateToNotifications>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic result) navigateBack,
    required TResult Function(NavigateType navigateType)
        navigateToEnterPhoneNumber,
    required TResult Function(
            NavigateType navigateType, EnterCodeType enterCodeType)
        navigateToEnterPinCode,
    required TResult Function(
            NavigateType navigateType, BiometricType biometricType)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateType navigateType)
        navigateToConfirmAccount,
    required TResult Function(NavigateType navigateType, String phoneNumber)
        navigateToConfirmPhone,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToConfirmationSteps,
    required TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)
        navigateToStories,
    required TResult Function(NavigateType navigateType)
        navigateToNotifications,
    required TResult Function(NavigateType navigateType) navigateToNavigation,
    required TResult Function(NavigateType navigateType, String url)
        navigateToWebView,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToEditProfile,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToPassport,
    required TResult Function(NavigateType navigateType, int categoryId)
        navigateToCompilations,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateType navigateType, String productId)
        navigateToProduct,
    required TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)
        navigateToProductImages,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToAddresses,
    required TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToEditAddress,
    required TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToAddressOnMap,
    required TResult Function(NavigateType navigateType) navigateToIntroduction,
    required TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)
        showSelectAddressBottomSheet,
  }) {
    return navigateToNotifications(navigateType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic result)? navigateBack,
    TResult Function(NavigateType navigateType)? navigateToEnterPhoneNumber,
    TResult Function(NavigateType navigateType, EnterCodeType enterCodeType)?
        navigateToEnterPinCode,
    TResult Function(NavigateType navigateType, BiometricType biometricType)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateType navigateType)? navigateToConfirmAccount,
    TResult Function(NavigateType navigateType, String phoneNumber)?
        navigateToConfirmPhone,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToConfirmationSteps,
    TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)?
        navigateToStories,
    TResult Function(NavigateType navigateType)? navigateToNotifications,
    TResult Function(NavigateType navigateType)? navigateToNavigation,
    TResult Function(NavigateType navigateType, String url)? navigateToWebView,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToEditProfile,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToPassport,
    TResult Function(NavigateType navigateType, int categoryId)?
        navigateToCompilations,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateType navigateType, String productId)?
        navigateToProduct,
    TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)?
        navigateToProductImages,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToAddresses,
    TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToEditAddress,
    TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToAddressOnMap,
    TResult Function(NavigateType navigateType)? navigateToIntroduction,
    TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateToNotifications != null) {
      return navigateToNotifications(navigateType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateBack value) navigateBack,
    required TResult Function(NavigateToEnterPhoneNumber value)
        navigateToEnterPhoneNumber,
    required TResult Function(NavigateToEnterPinCode value)
        navigateToEnterPinCode,
    required TResult Function(NavigateToEnableBiometricAuth value)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateToConfirmAccount value)
        navigateToConfirmAccount,
    required TResult Function(NavigateToConfirmPhone value)
        navigateToConfirmPhone,
    required TResult Function(NavigateToConfirmationSteps value)
        navigateToConfirmationSteps,
    required TResult Function(NavigateToStories value) navigateToStories,
    required TResult Function(NavigateToNotifications value)
        navigateToNotifications,
    required TResult Function(NavigateToNavigation value) navigateToNavigation,
    required TResult Function(NavigateToWebView value) navigateToWebView,
    required TResult Function(NavigateToEditProfile value)
        navigateToEditProfile,
    required TResult Function(NavigateToPassport value) navigateToPassport,
    required TResult Function(NavigateToCompilations value)
        navigateToCompilations,
    required TResult Function(NavigateToSelectPhotoArea value)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateToPhotoTakenFinish value)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateToProduct value) navigateToProduct,
    required TResult Function(NavigateToProductImages value)
        navigateToProductImages,
    required TResult Function(NavigateToAddresses value) navigateToAddresses,
    required TResult Function(NavigateToEditAddress value)
        navigateToEditAddress,
    required TResult Function(NavigateToAddressOnMap value)
        navigateToAddressOnMap,
    required TResult Function(NavigateToIntroduction value)
        navigateToIntroduction,
    required TResult Function(ShowSelectAddressBottomSheet value)
        showSelectAddressBottomSheet,
  }) {
    return navigateToNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateBack value)? navigateBack,
    TResult Function(NavigateToEnterPhoneNumber value)?
        navigateToEnterPhoneNumber,
    TResult Function(NavigateToEnterPinCode value)? navigateToEnterPinCode,
    TResult Function(NavigateToEnableBiometricAuth value)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateToConfirmAccount value)? navigateToConfirmAccount,
    TResult Function(NavigateToConfirmPhone value)? navigateToConfirmPhone,
    TResult Function(NavigateToConfirmationSteps value)?
        navigateToConfirmationSteps,
    TResult Function(NavigateToStories value)? navigateToStories,
    TResult Function(NavigateToNotifications value)? navigateToNotifications,
    TResult Function(NavigateToNavigation value)? navigateToNavigation,
    TResult Function(NavigateToWebView value)? navigateToWebView,
    TResult Function(NavigateToEditProfile value)? navigateToEditProfile,
    TResult Function(NavigateToPassport value)? navigateToPassport,
    TResult Function(NavigateToCompilations value)? navigateToCompilations,
    TResult Function(NavigateToSelectPhotoArea value)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateToPhotoTakenFinish value)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateToProduct value)? navigateToProduct,
    TResult Function(NavigateToProductImages value)? navigateToProductImages,
    TResult Function(NavigateToAddresses value)? navigateToAddresses,
    TResult Function(NavigateToEditAddress value)? navigateToEditAddress,
    TResult Function(NavigateToAddressOnMap value)? navigateToAddressOnMap,
    TResult Function(NavigateToIntroduction value)? navigateToIntroduction,
    TResult Function(ShowSelectAddressBottomSheet value)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateToNotifications != null) {
      return navigateToNotifications(this);
    }
    return orElse();
  }
}

abstract class NavigateToNotifications implements NavigateAction {
  factory NavigateToNotifications(NavigateType navigateType) =
      _$NavigateToNotifications;

  NavigateType get navigateType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavigateToNotificationsCopyWith<NavigateToNotifications> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateToNavigationCopyWith<$Res> {
  factory $NavigateToNavigationCopyWith(NavigateToNavigation value,
          $Res Function(NavigateToNavigation) then) =
      _$NavigateToNavigationCopyWithImpl<$Res>;
  $Res call({NavigateType navigateType});
}

/// @nodoc
class _$NavigateToNavigationCopyWithImpl<$Res>
    extends _$NavigateActionCopyWithImpl<$Res>
    implements $NavigateToNavigationCopyWith<$Res> {
  _$NavigateToNavigationCopyWithImpl(
      NavigateToNavigation _value, $Res Function(NavigateToNavigation) _then)
      : super(_value, (v) => _then(v as NavigateToNavigation));

  @override
  NavigateToNavigation get _value => super._value as NavigateToNavigation;

  @override
  $Res call({
    Object? navigateType = freezed,
  }) {
    return _then(NavigateToNavigation(
      navigateType == freezed
          ? _value.navigateType
          : navigateType // ignore: cast_nullable_to_non_nullable
              as NavigateType,
    ));
  }
}

/// @nodoc

class _$NavigateToNavigation implements NavigateToNavigation {
  _$NavigateToNavigation(this.navigateType);

  @override
  final NavigateType navigateType;

  @override
  String toString() {
    return 'NavigateAction.navigateToNavigation(navigateType: $navigateType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigateToNavigation &&
            (identical(other.navigateType, navigateType) ||
                const DeepCollectionEquality()
                    .equals(other.navigateType, navigateType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(navigateType);

  @JsonKey(ignore: true)
  @override
  $NavigateToNavigationCopyWith<NavigateToNavigation> get copyWith =>
      _$NavigateToNavigationCopyWithImpl<NavigateToNavigation>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic result) navigateBack,
    required TResult Function(NavigateType navigateType)
        navigateToEnterPhoneNumber,
    required TResult Function(
            NavigateType navigateType, EnterCodeType enterCodeType)
        navigateToEnterPinCode,
    required TResult Function(
            NavigateType navigateType, BiometricType biometricType)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateType navigateType)
        navigateToConfirmAccount,
    required TResult Function(NavigateType navigateType, String phoneNumber)
        navigateToConfirmPhone,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToConfirmationSteps,
    required TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)
        navigateToStories,
    required TResult Function(NavigateType navigateType)
        navigateToNotifications,
    required TResult Function(NavigateType navigateType) navigateToNavigation,
    required TResult Function(NavigateType navigateType, String url)
        navigateToWebView,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToEditProfile,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToPassport,
    required TResult Function(NavigateType navigateType, int categoryId)
        navigateToCompilations,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateType navigateType, String productId)
        navigateToProduct,
    required TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)
        navigateToProductImages,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToAddresses,
    required TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToEditAddress,
    required TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToAddressOnMap,
    required TResult Function(NavigateType navigateType) navigateToIntroduction,
    required TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)
        showSelectAddressBottomSheet,
  }) {
    return navigateToNavigation(navigateType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic result)? navigateBack,
    TResult Function(NavigateType navigateType)? navigateToEnterPhoneNumber,
    TResult Function(NavigateType navigateType, EnterCodeType enterCodeType)?
        navigateToEnterPinCode,
    TResult Function(NavigateType navigateType, BiometricType biometricType)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateType navigateType)? navigateToConfirmAccount,
    TResult Function(NavigateType navigateType, String phoneNumber)?
        navigateToConfirmPhone,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToConfirmationSteps,
    TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)?
        navigateToStories,
    TResult Function(NavigateType navigateType)? navigateToNotifications,
    TResult Function(NavigateType navigateType)? navigateToNavigation,
    TResult Function(NavigateType navigateType, String url)? navigateToWebView,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToEditProfile,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToPassport,
    TResult Function(NavigateType navigateType, int categoryId)?
        navigateToCompilations,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateType navigateType, String productId)?
        navigateToProduct,
    TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)?
        navigateToProductImages,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToAddresses,
    TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToEditAddress,
    TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToAddressOnMap,
    TResult Function(NavigateType navigateType)? navigateToIntroduction,
    TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateToNavigation != null) {
      return navigateToNavigation(navigateType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateBack value) navigateBack,
    required TResult Function(NavigateToEnterPhoneNumber value)
        navigateToEnterPhoneNumber,
    required TResult Function(NavigateToEnterPinCode value)
        navigateToEnterPinCode,
    required TResult Function(NavigateToEnableBiometricAuth value)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateToConfirmAccount value)
        navigateToConfirmAccount,
    required TResult Function(NavigateToConfirmPhone value)
        navigateToConfirmPhone,
    required TResult Function(NavigateToConfirmationSteps value)
        navigateToConfirmationSteps,
    required TResult Function(NavigateToStories value) navigateToStories,
    required TResult Function(NavigateToNotifications value)
        navigateToNotifications,
    required TResult Function(NavigateToNavigation value) navigateToNavigation,
    required TResult Function(NavigateToWebView value) navigateToWebView,
    required TResult Function(NavigateToEditProfile value)
        navigateToEditProfile,
    required TResult Function(NavigateToPassport value) navigateToPassport,
    required TResult Function(NavigateToCompilations value)
        navigateToCompilations,
    required TResult Function(NavigateToSelectPhotoArea value)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateToPhotoTakenFinish value)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateToProduct value) navigateToProduct,
    required TResult Function(NavigateToProductImages value)
        navigateToProductImages,
    required TResult Function(NavigateToAddresses value) navigateToAddresses,
    required TResult Function(NavigateToEditAddress value)
        navigateToEditAddress,
    required TResult Function(NavigateToAddressOnMap value)
        navigateToAddressOnMap,
    required TResult Function(NavigateToIntroduction value)
        navigateToIntroduction,
    required TResult Function(ShowSelectAddressBottomSheet value)
        showSelectAddressBottomSheet,
  }) {
    return navigateToNavigation(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateBack value)? navigateBack,
    TResult Function(NavigateToEnterPhoneNumber value)?
        navigateToEnterPhoneNumber,
    TResult Function(NavigateToEnterPinCode value)? navigateToEnterPinCode,
    TResult Function(NavigateToEnableBiometricAuth value)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateToConfirmAccount value)? navigateToConfirmAccount,
    TResult Function(NavigateToConfirmPhone value)? navigateToConfirmPhone,
    TResult Function(NavigateToConfirmationSteps value)?
        navigateToConfirmationSteps,
    TResult Function(NavigateToStories value)? navigateToStories,
    TResult Function(NavigateToNotifications value)? navigateToNotifications,
    TResult Function(NavigateToNavigation value)? navigateToNavigation,
    TResult Function(NavigateToWebView value)? navigateToWebView,
    TResult Function(NavigateToEditProfile value)? navigateToEditProfile,
    TResult Function(NavigateToPassport value)? navigateToPassport,
    TResult Function(NavigateToCompilations value)? navigateToCompilations,
    TResult Function(NavigateToSelectPhotoArea value)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateToPhotoTakenFinish value)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateToProduct value)? navigateToProduct,
    TResult Function(NavigateToProductImages value)? navigateToProductImages,
    TResult Function(NavigateToAddresses value)? navigateToAddresses,
    TResult Function(NavigateToEditAddress value)? navigateToEditAddress,
    TResult Function(NavigateToAddressOnMap value)? navigateToAddressOnMap,
    TResult Function(NavigateToIntroduction value)? navigateToIntroduction,
    TResult Function(ShowSelectAddressBottomSheet value)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateToNavigation != null) {
      return navigateToNavigation(this);
    }
    return orElse();
  }
}

abstract class NavigateToNavigation implements NavigateAction {
  factory NavigateToNavigation(NavigateType navigateType) =
      _$NavigateToNavigation;

  NavigateType get navigateType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavigateToNavigationCopyWith<NavigateToNavigation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateToWebViewCopyWith<$Res> {
  factory $NavigateToWebViewCopyWith(
          NavigateToWebView value, $Res Function(NavigateToWebView) then) =
      _$NavigateToWebViewCopyWithImpl<$Res>;
  $Res call({NavigateType navigateType, String url});
}

/// @nodoc
class _$NavigateToWebViewCopyWithImpl<$Res>
    extends _$NavigateActionCopyWithImpl<$Res>
    implements $NavigateToWebViewCopyWith<$Res> {
  _$NavigateToWebViewCopyWithImpl(
      NavigateToWebView _value, $Res Function(NavigateToWebView) _then)
      : super(_value, (v) => _then(v as NavigateToWebView));

  @override
  NavigateToWebView get _value => super._value as NavigateToWebView;

  @override
  $Res call({
    Object? navigateType = freezed,
    Object? url = freezed,
  }) {
    return _then(NavigateToWebView(
      navigateType == freezed
          ? _value.navigateType
          : navigateType // ignore: cast_nullable_to_non_nullable
              as NavigateType,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NavigateToWebView implements NavigateToWebView {
  _$NavigateToWebView(this.navigateType, {required this.url});

  @override
  final NavigateType navigateType;
  @override
  final String url;

  @override
  String toString() {
    return 'NavigateAction.navigateToWebView(navigateType: $navigateType, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigateToWebView &&
            (identical(other.navigateType, navigateType) ||
                const DeepCollectionEquality()
                    .equals(other.navigateType, navigateType)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(navigateType) ^
      const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  $NavigateToWebViewCopyWith<NavigateToWebView> get copyWith =>
      _$NavigateToWebViewCopyWithImpl<NavigateToWebView>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic result) navigateBack,
    required TResult Function(NavigateType navigateType)
        navigateToEnterPhoneNumber,
    required TResult Function(
            NavigateType navigateType, EnterCodeType enterCodeType)
        navigateToEnterPinCode,
    required TResult Function(
            NavigateType navigateType, BiometricType biometricType)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateType navigateType)
        navigateToConfirmAccount,
    required TResult Function(NavigateType navigateType, String phoneNumber)
        navigateToConfirmPhone,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToConfirmationSteps,
    required TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)
        navigateToStories,
    required TResult Function(NavigateType navigateType)
        navigateToNotifications,
    required TResult Function(NavigateType navigateType) navigateToNavigation,
    required TResult Function(NavigateType navigateType, String url)
        navigateToWebView,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToEditProfile,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToPassport,
    required TResult Function(NavigateType navigateType, int categoryId)
        navigateToCompilations,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateType navigateType, String productId)
        navigateToProduct,
    required TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)
        navigateToProductImages,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToAddresses,
    required TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToEditAddress,
    required TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToAddressOnMap,
    required TResult Function(NavigateType navigateType) navigateToIntroduction,
    required TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)
        showSelectAddressBottomSheet,
  }) {
    return navigateToWebView(navigateType, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic result)? navigateBack,
    TResult Function(NavigateType navigateType)? navigateToEnterPhoneNumber,
    TResult Function(NavigateType navigateType, EnterCodeType enterCodeType)?
        navigateToEnterPinCode,
    TResult Function(NavigateType navigateType, BiometricType biometricType)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateType navigateType)? navigateToConfirmAccount,
    TResult Function(NavigateType navigateType, String phoneNumber)?
        navigateToConfirmPhone,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToConfirmationSteps,
    TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)?
        navigateToStories,
    TResult Function(NavigateType navigateType)? navigateToNotifications,
    TResult Function(NavigateType navigateType)? navigateToNavigation,
    TResult Function(NavigateType navigateType, String url)? navigateToWebView,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToEditProfile,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToPassport,
    TResult Function(NavigateType navigateType, int categoryId)?
        navigateToCompilations,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateType navigateType, String productId)?
        navigateToProduct,
    TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)?
        navigateToProductImages,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToAddresses,
    TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToEditAddress,
    TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToAddressOnMap,
    TResult Function(NavigateType navigateType)? navigateToIntroduction,
    TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateToWebView != null) {
      return navigateToWebView(navigateType, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateBack value) navigateBack,
    required TResult Function(NavigateToEnterPhoneNumber value)
        navigateToEnterPhoneNumber,
    required TResult Function(NavigateToEnterPinCode value)
        navigateToEnterPinCode,
    required TResult Function(NavigateToEnableBiometricAuth value)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateToConfirmAccount value)
        navigateToConfirmAccount,
    required TResult Function(NavigateToConfirmPhone value)
        navigateToConfirmPhone,
    required TResult Function(NavigateToConfirmationSteps value)
        navigateToConfirmationSteps,
    required TResult Function(NavigateToStories value) navigateToStories,
    required TResult Function(NavigateToNotifications value)
        navigateToNotifications,
    required TResult Function(NavigateToNavigation value) navigateToNavigation,
    required TResult Function(NavigateToWebView value) navigateToWebView,
    required TResult Function(NavigateToEditProfile value)
        navigateToEditProfile,
    required TResult Function(NavigateToPassport value) navigateToPassport,
    required TResult Function(NavigateToCompilations value)
        navigateToCompilations,
    required TResult Function(NavigateToSelectPhotoArea value)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateToPhotoTakenFinish value)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateToProduct value) navigateToProduct,
    required TResult Function(NavigateToProductImages value)
        navigateToProductImages,
    required TResult Function(NavigateToAddresses value) navigateToAddresses,
    required TResult Function(NavigateToEditAddress value)
        navigateToEditAddress,
    required TResult Function(NavigateToAddressOnMap value)
        navigateToAddressOnMap,
    required TResult Function(NavigateToIntroduction value)
        navigateToIntroduction,
    required TResult Function(ShowSelectAddressBottomSheet value)
        showSelectAddressBottomSheet,
  }) {
    return navigateToWebView(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateBack value)? navigateBack,
    TResult Function(NavigateToEnterPhoneNumber value)?
        navigateToEnterPhoneNumber,
    TResult Function(NavigateToEnterPinCode value)? navigateToEnterPinCode,
    TResult Function(NavigateToEnableBiometricAuth value)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateToConfirmAccount value)? navigateToConfirmAccount,
    TResult Function(NavigateToConfirmPhone value)? navigateToConfirmPhone,
    TResult Function(NavigateToConfirmationSteps value)?
        navigateToConfirmationSteps,
    TResult Function(NavigateToStories value)? navigateToStories,
    TResult Function(NavigateToNotifications value)? navigateToNotifications,
    TResult Function(NavigateToNavigation value)? navigateToNavigation,
    TResult Function(NavigateToWebView value)? navigateToWebView,
    TResult Function(NavigateToEditProfile value)? navigateToEditProfile,
    TResult Function(NavigateToPassport value)? navigateToPassport,
    TResult Function(NavigateToCompilations value)? navigateToCompilations,
    TResult Function(NavigateToSelectPhotoArea value)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateToPhotoTakenFinish value)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateToProduct value)? navigateToProduct,
    TResult Function(NavigateToProductImages value)? navigateToProductImages,
    TResult Function(NavigateToAddresses value)? navigateToAddresses,
    TResult Function(NavigateToEditAddress value)? navigateToEditAddress,
    TResult Function(NavigateToAddressOnMap value)? navigateToAddressOnMap,
    TResult Function(NavigateToIntroduction value)? navigateToIntroduction,
    TResult Function(ShowSelectAddressBottomSheet value)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateToWebView != null) {
      return navigateToWebView(this);
    }
    return orElse();
  }
}

abstract class NavigateToWebView implements NavigateAction {
  factory NavigateToWebView(NavigateType navigateType, {required String url}) =
      _$NavigateToWebView;

  NavigateType get navigateType => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavigateToWebViewCopyWith<NavigateToWebView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateToEditProfileCopyWith<$Res> {
  factory $NavigateToEditProfileCopyWith(NavigateToEditProfile value,
          $Res Function(NavigateToEditProfile) then) =
      _$NavigateToEditProfileCopyWithImpl<$Res>;
  $Res call({NavigateType navigateType, ProfileEntity profile});
}

/// @nodoc
class _$NavigateToEditProfileCopyWithImpl<$Res>
    extends _$NavigateActionCopyWithImpl<$Res>
    implements $NavigateToEditProfileCopyWith<$Res> {
  _$NavigateToEditProfileCopyWithImpl(
      NavigateToEditProfile _value, $Res Function(NavigateToEditProfile) _then)
      : super(_value, (v) => _then(v as NavigateToEditProfile));

  @override
  NavigateToEditProfile get _value => super._value as NavigateToEditProfile;

  @override
  $Res call({
    Object? navigateType = freezed,
    Object? profile = freezed,
  }) {
    return _then(NavigateToEditProfile(
      navigateType == freezed
          ? _value.navigateType
          : navigateType // ignore: cast_nullable_to_non_nullable
              as NavigateType,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileEntity,
    ));
  }
}

/// @nodoc

class _$NavigateToEditProfile implements NavigateToEditProfile {
  _$NavigateToEditProfile(this.navigateType, {required this.profile});

  @override
  final NavigateType navigateType;
  @override
  final ProfileEntity profile;

  @override
  String toString() {
    return 'NavigateAction.navigateToEditProfile(navigateType: $navigateType, profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigateToEditProfile &&
            (identical(other.navigateType, navigateType) ||
                const DeepCollectionEquality()
                    .equals(other.navigateType, navigateType)) &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality().equals(other.profile, profile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(navigateType) ^
      const DeepCollectionEquality().hash(profile);

  @JsonKey(ignore: true)
  @override
  $NavigateToEditProfileCopyWith<NavigateToEditProfile> get copyWith =>
      _$NavigateToEditProfileCopyWithImpl<NavigateToEditProfile>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic result) navigateBack,
    required TResult Function(NavigateType navigateType)
        navigateToEnterPhoneNumber,
    required TResult Function(
            NavigateType navigateType, EnterCodeType enterCodeType)
        navigateToEnterPinCode,
    required TResult Function(
            NavigateType navigateType, BiometricType biometricType)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateType navigateType)
        navigateToConfirmAccount,
    required TResult Function(NavigateType navigateType, String phoneNumber)
        navigateToConfirmPhone,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToConfirmationSteps,
    required TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)
        navigateToStories,
    required TResult Function(NavigateType navigateType)
        navigateToNotifications,
    required TResult Function(NavigateType navigateType) navigateToNavigation,
    required TResult Function(NavigateType navigateType, String url)
        navigateToWebView,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToEditProfile,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToPassport,
    required TResult Function(NavigateType navigateType, int categoryId)
        navigateToCompilations,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateType navigateType, String productId)
        navigateToProduct,
    required TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)
        navigateToProductImages,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToAddresses,
    required TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToEditAddress,
    required TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToAddressOnMap,
    required TResult Function(NavigateType navigateType) navigateToIntroduction,
    required TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)
        showSelectAddressBottomSheet,
  }) {
    return navigateToEditProfile(navigateType, profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic result)? navigateBack,
    TResult Function(NavigateType navigateType)? navigateToEnterPhoneNumber,
    TResult Function(NavigateType navigateType, EnterCodeType enterCodeType)?
        navigateToEnterPinCode,
    TResult Function(NavigateType navigateType, BiometricType biometricType)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateType navigateType)? navigateToConfirmAccount,
    TResult Function(NavigateType navigateType, String phoneNumber)?
        navigateToConfirmPhone,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToConfirmationSteps,
    TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)?
        navigateToStories,
    TResult Function(NavigateType navigateType)? navigateToNotifications,
    TResult Function(NavigateType navigateType)? navigateToNavigation,
    TResult Function(NavigateType navigateType, String url)? navigateToWebView,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToEditProfile,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToPassport,
    TResult Function(NavigateType navigateType, int categoryId)?
        navigateToCompilations,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateType navigateType, String productId)?
        navigateToProduct,
    TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)?
        navigateToProductImages,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToAddresses,
    TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToEditAddress,
    TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToAddressOnMap,
    TResult Function(NavigateType navigateType)? navigateToIntroduction,
    TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateToEditProfile != null) {
      return navigateToEditProfile(navigateType, profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateBack value) navigateBack,
    required TResult Function(NavigateToEnterPhoneNumber value)
        navigateToEnterPhoneNumber,
    required TResult Function(NavigateToEnterPinCode value)
        navigateToEnterPinCode,
    required TResult Function(NavigateToEnableBiometricAuth value)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateToConfirmAccount value)
        navigateToConfirmAccount,
    required TResult Function(NavigateToConfirmPhone value)
        navigateToConfirmPhone,
    required TResult Function(NavigateToConfirmationSteps value)
        navigateToConfirmationSteps,
    required TResult Function(NavigateToStories value) navigateToStories,
    required TResult Function(NavigateToNotifications value)
        navigateToNotifications,
    required TResult Function(NavigateToNavigation value) navigateToNavigation,
    required TResult Function(NavigateToWebView value) navigateToWebView,
    required TResult Function(NavigateToEditProfile value)
        navigateToEditProfile,
    required TResult Function(NavigateToPassport value) navigateToPassport,
    required TResult Function(NavigateToCompilations value)
        navigateToCompilations,
    required TResult Function(NavigateToSelectPhotoArea value)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateToPhotoTakenFinish value)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateToProduct value) navigateToProduct,
    required TResult Function(NavigateToProductImages value)
        navigateToProductImages,
    required TResult Function(NavigateToAddresses value) navigateToAddresses,
    required TResult Function(NavigateToEditAddress value)
        navigateToEditAddress,
    required TResult Function(NavigateToAddressOnMap value)
        navigateToAddressOnMap,
    required TResult Function(NavigateToIntroduction value)
        navigateToIntroduction,
    required TResult Function(ShowSelectAddressBottomSheet value)
        showSelectAddressBottomSheet,
  }) {
    return navigateToEditProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateBack value)? navigateBack,
    TResult Function(NavigateToEnterPhoneNumber value)?
        navigateToEnterPhoneNumber,
    TResult Function(NavigateToEnterPinCode value)? navigateToEnterPinCode,
    TResult Function(NavigateToEnableBiometricAuth value)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateToConfirmAccount value)? navigateToConfirmAccount,
    TResult Function(NavigateToConfirmPhone value)? navigateToConfirmPhone,
    TResult Function(NavigateToConfirmationSteps value)?
        navigateToConfirmationSteps,
    TResult Function(NavigateToStories value)? navigateToStories,
    TResult Function(NavigateToNotifications value)? navigateToNotifications,
    TResult Function(NavigateToNavigation value)? navigateToNavigation,
    TResult Function(NavigateToWebView value)? navigateToWebView,
    TResult Function(NavigateToEditProfile value)? navigateToEditProfile,
    TResult Function(NavigateToPassport value)? navigateToPassport,
    TResult Function(NavigateToCompilations value)? navigateToCompilations,
    TResult Function(NavigateToSelectPhotoArea value)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateToPhotoTakenFinish value)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateToProduct value)? navigateToProduct,
    TResult Function(NavigateToProductImages value)? navigateToProductImages,
    TResult Function(NavigateToAddresses value)? navigateToAddresses,
    TResult Function(NavigateToEditAddress value)? navigateToEditAddress,
    TResult Function(NavigateToAddressOnMap value)? navigateToAddressOnMap,
    TResult Function(NavigateToIntroduction value)? navigateToIntroduction,
    TResult Function(ShowSelectAddressBottomSheet value)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateToEditProfile != null) {
      return navigateToEditProfile(this);
    }
    return orElse();
  }
}

abstract class NavigateToEditProfile implements NavigateAction {
  factory NavigateToEditProfile(NavigateType navigateType,
      {required ProfileEntity profile}) = _$NavigateToEditProfile;

  NavigateType get navigateType => throw _privateConstructorUsedError;
  ProfileEntity get profile => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavigateToEditProfileCopyWith<NavigateToEditProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateToPassportCopyWith<$Res> {
  factory $NavigateToPassportCopyWith(
          NavigateToPassport value, $Res Function(NavigateToPassport) then) =
      _$NavigateToPassportCopyWithImpl<$Res>;
  $Res call({NavigateType navigateType, ProfileEntity profile});
}

/// @nodoc
class _$NavigateToPassportCopyWithImpl<$Res>
    extends _$NavigateActionCopyWithImpl<$Res>
    implements $NavigateToPassportCopyWith<$Res> {
  _$NavigateToPassportCopyWithImpl(
      NavigateToPassport _value, $Res Function(NavigateToPassport) _then)
      : super(_value, (v) => _then(v as NavigateToPassport));

  @override
  NavigateToPassport get _value => super._value as NavigateToPassport;

  @override
  $Res call({
    Object? navigateType = freezed,
    Object? profile = freezed,
  }) {
    return _then(NavigateToPassport(
      navigateType == freezed
          ? _value.navigateType
          : navigateType // ignore: cast_nullable_to_non_nullable
              as NavigateType,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileEntity,
    ));
  }
}

/// @nodoc

class _$NavigateToPassport implements NavigateToPassport {
  _$NavigateToPassport(this.navigateType, {required this.profile});

  @override
  final NavigateType navigateType;
  @override
  final ProfileEntity profile;

  @override
  String toString() {
    return 'NavigateAction.navigateToPassport(navigateType: $navigateType, profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigateToPassport &&
            (identical(other.navigateType, navigateType) ||
                const DeepCollectionEquality()
                    .equals(other.navigateType, navigateType)) &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality().equals(other.profile, profile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(navigateType) ^
      const DeepCollectionEquality().hash(profile);

  @JsonKey(ignore: true)
  @override
  $NavigateToPassportCopyWith<NavigateToPassport> get copyWith =>
      _$NavigateToPassportCopyWithImpl<NavigateToPassport>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic result) navigateBack,
    required TResult Function(NavigateType navigateType)
        navigateToEnterPhoneNumber,
    required TResult Function(
            NavigateType navigateType, EnterCodeType enterCodeType)
        navigateToEnterPinCode,
    required TResult Function(
            NavigateType navigateType, BiometricType biometricType)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateType navigateType)
        navigateToConfirmAccount,
    required TResult Function(NavigateType navigateType, String phoneNumber)
        navigateToConfirmPhone,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToConfirmationSteps,
    required TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)
        navigateToStories,
    required TResult Function(NavigateType navigateType)
        navigateToNotifications,
    required TResult Function(NavigateType navigateType) navigateToNavigation,
    required TResult Function(NavigateType navigateType, String url)
        navigateToWebView,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToEditProfile,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToPassport,
    required TResult Function(NavigateType navigateType, int categoryId)
        navigateToCompilations,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateType navigateType, String productId)
        navigateToProduct,
    required TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)
        navigateToProductImages,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToAddresses,
    required TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToEditAddress,
    required TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToAddressOnMap,
    required TResult Function(NavigateType navigateType) navigateToIntroduction,
    required TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)
        showSelectAddressBottomSheet,
  }) {
    return navigateToPassport(navigateType, profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic result)? navigateBack,
    TResult Function(NavigateType navigateType)? navigateToEnterPhoneNumber,
    TResult Function(NavigateType navigateType, EnterCodeType enterCodeType)?
        navigateToEnterPinCode,
    TResult Function(NavigateType navigateType, BiometricType biometricType)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateType navigateType)? navigateToConfirmAccount,
    TResult Function(NavigateType navigateType, String phoneNumber)?
        navigateToConfirmPhone,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToConfirmationSteps,
    TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)?
        navigateToStories,
    TResult Function(NavigateType navigateType)? navigateToNotifications,
    TResult Function(NavigateType navigateType)? navigateToNavigation,
    TResult Function(NavigateType navigateType, String url)? navigateToWebView,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToEditProfile,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToPassport,
    TResult Function(NavigateType navigateType, int categoryId)?
        navigateToCompilations,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateType navigateType, String productId)?
        navigateToProduct,
    TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)?
        navigateToProductImages,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToAddresses,
    TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToEditAddress,
    TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToAddressOnMap,
    TResult Function(NavigateType navigateType)? navigateToIntroduction,
    TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateToPassport != null) {
      return navigateToPassport(navigateType, profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateBack value) navigateBack,
    required TResult Function(NavigateToEnterPhoneNumber value)
        navigateToEnterPhoneNumber,
    required TResult Function(NavigateToEnterPinCode value)
        navigateToEnterPinCode,
    required TResult Function(NavigateToEnableBiometricAuth value)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateToConfirmAccount value)
        navigateToConfirmAccount,
    required TResult Function(NavigateToConfirmPhone value)
        navigateToConfirmPhone,
    required TResult Function(NavigateToConfirmationSteps value)
        navigateToConfirmationSteps,
    required TResult Function(NavigateToStories value) navigateToStories,
    required TResult Function(NavigateToNotifications value)
        navigateToNotifications,
    required TResult Function(NavigateToNavigation value) navigateToNavigation,
    required TResult Function(NavigateToWebView value) navigateToWebView,
    required TResult Function(NavigateToEditProfile value)
        navigateToEditProfile,
    required TResult Function(NavigateToPassport value) navigateToPassport,
    required TResult Function(NavigateToCompilations value)
        navigateToCompilations,
    required TResult Function(NavigateToSelectPhotoArea value)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateToPhotoTakenFinish value)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateToProduct value) navigateToProduct,
    required TResult Function(NavigateToProductImages value)
        navigateToProductImages,
    required TResult Function(NavigateToAddresses value) navigateToAddresses,
    required TResult Function(NavigateToEditAddress value)
        navigateToEditAddress,
    required TResult Function(NavigateToAddressOnMap value)
        navigateToAddressOnMap,
    required TResult Function(NavigateToIntroduction value)
        navigateToIntroduction,
    required TResult Function(ShowSelectAddressBottomSheet value)
        showSelectAddressBottomSheet,
  }) {
    return navigateToPassport(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateBack value)? navigateBack,
    TResult Function(NavigateToEnterPhoneNumber value)?
        navigateToEnterPhoneNumber,
    TResult Function(NavigateToEnterPinCode value)? navigateToEnterPinCode,
    TResult Function(NavigateToEnableBiometricAuth value)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateToConfirmAccount value)? navigateToConfirmAccount,
    TResult Function(NavigateToConfirmPhone value)? navigateToConfirmPhone,
    TResult Function(NavigateToConfirmationSteps value)?
        navigateToConfirmationSteps,
    TResult Function(NavigateToStories value)? navigateToStories,
    TResult Function(NavigateToNotifications value)? navigateToNotifications,
    TResult Function(NavigateToNavigation value)? navigateToNavigation,
    TResult Function(NavigateToWebView value)? navigateToWebView,
    TResult Function(NavigateToEditProfile value)? navigateToEditProfile,
    TResult Function(NavigateToPassport value)? navigateToPassport,
    TResult Function(NavigateToCompilations value)? navigateToCompilations,
    TResult Function(NavigateToSelectPhotoArea value)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateToPhotoTakenFinish value)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateToProduct value)? navigateToProduct,
    TResult Function(NavigateToProductImages value)? navigateToProductImages,
    TResult Function(NavigateToAddresses value)? navigateToAddresses,
    TResult Function(NavigateToEditAddress value)? navigateToEditAddress,
    TResult Function(NavigateToAddressOnMap value)? navigateToAddressOnMap,
    TResult Function(NavigateToIntroduction value)? navigateToIntroduction,
    TResult Function(ShowSelectAddressBottomSheet value)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateToPassport != null) {
      return navigateToPassport(this);
    }
    return orElse();
  }
}

abstract class NavigateToPassport implements NavigateAction {
  factory NavigateToPassport(NavigateType navigateType,
      {required ProfileEntity profile}) = _$NavigateToPassport;

  NavigateType get navigateType => throw _privateConstructorUsedError;
  ProfileEntity get profile => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavigateToPassportCopyWith<NavigateToPassport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateToCompilationsCopyWith<$Res> {
  factory $NavigateToCompilationsCopyWith(NavigateToCompilations value,
          $Res Function(NavigateToCompilations) then) =
      _$NavigateToCompilationsCopyWithImpl<$Res>;
  $Res call({NavigateType navigateType, int categoryId});
}

/// @nodoc
class _$NavigateToCompilationsCopyWithImpl<$Res>
    extends _$NavigateActionCopyWithImpl<$Res>
    implements $NavigateToCompilationsCopyWith<$Res> {
  _$NavigateToCompilationsCopyWithImpl(NavigateToCompilations _value,
      $Res Function(NavigateToCompilations) _then)
      : super(_value, (v) => _then(v as NavigateToCompilations));

  @override
  NavigateToCompilations get _value => super._value as NavigateToCompilations;

  @override
  $Res call({
    Object? navigateType = freezed,
    Object? categoryId = freezed,
  }) {
    return _then(NavigateToCompilations(
      navigateType == freezed
          ? _value.navigateType
          : navigateType // ignore: cast_nullable_to_non_nullable
              as NavigateType,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NavigateToCompilations implements NavigateToCompilations {
  _$NavigateToCompilations(this.navigateType, {required this.categoryId});

  @override
  final NavigateType navigateType;
  @override
  final int categoryId;

  @override
  String toString() {
    return 'NavigateAction.navigateToCompilations(navigateType: $navigateType, categoryId: $categoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigateToCompilations &&
            (identical(other.navigateType, navigateType) ||
                const DeepCollectionEquality()
                    .equals(other.navigateType, navigateType)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(navigateType) ^
      const DeepCollectionEquality().hash(categoryId);

  @JsonKey(ignore: true)
  @override
  $NavigateToCompilationsCopyWith<NavigateToCompilations> get copyWith =>
      _$NavigateToCompilationsCopyWithImpl<NavigateToCompilations>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic result) navigateBack,
    required TResult Function(NavigateType navigateType)
        navigateToEnterPhoneNumber,
    required TResult Function(
            NavigateType navigateType, EnterCodeType enterCodeType)
        navigateToEnterPinCode,
    required TResult Function(
            NavigateType navigateType, BiometricType biometricType)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateType navigateType)
        navigateToConfirmAccount,
    required TResult Function(NavigateType navigateType, String phoneNumber)
        navigateToConfirmPhone,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToConfirmationSteps,
    required TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)
        navigateToStories,
    required TResult Function(NavigateType navigateType)
        navigateToNotifications,
    required TResult Function(NavigateType navigateType) navigateToNavigation,
    required TResult Function(NavigateType navigateType, String url)
        navigateToWebView,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToEditProfile,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToPassport,
    required TResult Function(NavigateType navigateType, int categoryId)
        navigateToCompilations,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateType navigateType, String productId)
        navigateToProduct,
    required TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)
        navigateToProductImages,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToAddresses,
    required TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToEditAddress,
    required TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToAddressOnMap,
    required TResult Function(NavigateType navigateType) navigateToIntroduction,
    required TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)
        showSelectAddressBottomSheet,
  }) {
    return navigateToCompilations(navigateType, categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic result)? navigateBack,
    TResult Function(NavigateType navigateType)? navigateToEnterPhoneNumber,
    TResult Function(NavigateType navigateType, EnterCodeType enterCodeType)?
        navigateToEnterPinCode,
    TResult Function(NavigateType navigateType, BiometricType biometricType)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateType navigateType)? navigateToConfirmAccount,
    TResult Function(NavigateType navigateType, String phoneNumber)?
        navigateToConfirmPhone,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToConfirmationSteps,
    TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)?
        navigateToStories,
    TResult Function(NavigateType navigateType)? navigateToNotifications,
    TResult Function(NavigateType navigateType)? navigateToNavigation,
    TResult Function(NavigateType navigateType, String url)? navigateToWebView,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToEditProfile,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToPassport,
    TResult Function(NavigateType navigateType, int categoryId)?
        navigateToCompilations,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateType navigateType, String productId)?
        navigateToProduct,
    TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)?
        navigateToProductImages,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToAddresses,
    TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToEditAddress,
    TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToAddressOnMap,
    TResult Function(NavigateType navigateType)? navigateToIntroduction,
    TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateToCompilations != null) {
      return navigateToCompilations(navigateType, categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateBack value) navigateBack,
    required TResult Function(NavigateToEnterPhoneNumber value)
        navigateToEnterPhoneNumber,
    required TResult Function(NavigateToEnterPinCode value)
        navigateToEnterPinCode,
    required TResult Function(NavigateToEnableBiometricAuth value)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateToConfirmAccount value)
        navigateToConfirmAccount,
    required TResult Function(NavigateToConfirmPhone value)
        navigateToConfirmPhone,
    required TResult Function(NavigateToConfirmationSteps value)
        navigateToConfirmationSteps,
    required TResult Function(NavigateToStories value) navigateToStories,
    required TResult Function(NavigateToNotifications value)
        navigateToNotifications,
    required TResult Function(NavigateToNavigation value) navigateToNavigation,
    required TResult Function(NavigateToWebView value) navigateToWebView,
    required TResult Function(NavigateToEditProfile value)
        navigateToEditProfile,
    required TResult Function(NavigateToPassport value) navigateToPassport,
    required TResult Function(NavigateToCompilations value)
        navigateToCompilations,
    required TResult Function(NavigateToSelectPhotoArea value)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateToPhotoTakenFinish value)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateToProduct value) navigateToProduct,
    required TResult Function(NavigateToProductImages value)
        navigateToProductImages,
    required TResult Function(NavigateToAddresses value) navigateToAddresses,
    required TResult Function(NavigateToEditAddress value)
        navigateToEditAddress,
    required TResult Function(NavigateToAddressOnMap value)
        navigateToAddressOnMap,
    required TResult Function(NavigateToIntroduction value)
        navigateToIntroduction,
    required TResult Function(ShowSelectAddressBottomSheet value)
        showSelectAddressBottomSheet,
  }) {
    return navigateToCompilations(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateBack value)? navigateBack,
    TResult Function(NavigateToEnterPhoneNumber value)?
        navigateToEnterPhoneNumber,
    TResult Function(NavigateToEnterPinCode value)? navigateToEnterPinCode,
    TResult Function(NavigateToEnableBiometricAuth value)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateToConfirmAccount value)? navigateToConfirmAccount,
    TResult Function(NavigateToConfirmPhone value)? navigateToConfirmPhone,
    TResult Function(NavigateToConfirmationSteps value)?
        navigateToConfirmationSteps,
    TResult Function(NavigateToStories value)? navigateToStories,
    TResult Function(NavigateToNotifications value)? navigateToNotifications,
    TResult Function(NavigateToNavigation value)? navigateToNavigation,
    TResult Function(NavigateToWebView value)? navigateToWebView,
    TResult Function(NavigateToEditProfile value)? navigateToEditProfile,
    TResult Function(NavigateToPassport value)? navigateToPassport,
    TResult Function(NavigateToCompilations value)? navigateToCompilations,
    TResult Function(NavigateToSelectPhotoArea value)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateToPhotoTakenFinish value)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateToProduct value)? navigateToProduct,
    TResult Function(NavigateToProductImages value)? navigateToProductImages,
    TResult Function(NavigateToAddresses value)? navigateToAddresses,
    TResult Function(NavigateToEditAddress value)? navigateToEditAddress,
    TResult Function(NavigateToAddressOnMap value)? navigateToAddressOnMap,
    TResult Function(NavigateToIntroduction value)? navigateToIntroduction,
    TResult Function(ShowSelectAddressBottomSheet value)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateToCompilations != null) {
      return navigateToCompilations(this);
    }
    return orElse();
  }
}

abstract class NavigateToCompilations implements NavigateAction {
  factory NavigateToCompilations(NavigateType navigateType,
      {required int categoryId}) = _$NavigateToCompilations;

  NavigateType get navigateType => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavigateToCompilationsCopyWith<NavigateToCompilations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateToSelectPhotoAreaCopyWith<$Res> {
  factory $NavigateToSelectPhotoAreaCopyWith(NavigateToSelectPhotoArea value,
          $Res Function(NavigateToSelectPhotoArea) then) =
      _$NavigateToSelectPhotoAreaCopyWithImpl<$Res>;
  $Res call(
      {NavigateType navigateType, File image, EditProfileBloc editProfileBloc});
}

/// @nodoc
class _$NavigateToSelectPhotoAreaCopyWithImpl<$Res>
    extends _$NavigateActionCopyWithImpl<$Res>
    implements $NavigateToSelectPhotoAreaCopyWith<$Res> {
  _$NavigateToSelectPhotoAreaCopyWithImpl(NavigateToSelectPhotoArea _value,
      $Res Function(NavigateToSelectPhotoArea) _then)
      : super(_value, (v) => _then(v as NavigateToSelectPhotoArea));

  @override
  NavigateToSelectPhotoArea get _value =>
      super._value as NavigateToSelectPhotoArea;

  @override
  $Res call({
    Object? navigateType = freezed,
    Object? image = freezed,
    Object? editProfileBloc = freezed,
  }) {
    return _then(NavigateToSelectPhotoArea(
      navigateType == freezed
          ? _value.navigateType
          : navigateType // ignore: cast_nullable_to_non_nullable
              as NavigateType,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File,
      editProfileBloc: editProfileBloc == freezed
          ? _value.editProfileBloc
          : editProfileBloc // ignore: cast_nullable_to_non_nullable
              as EditProfileBloc,
    ));
  }
}

/// @nodoc

class _$NavigateToSelectPhotoArea implements NavigateToSelectPhotoArea {
  _$NavigateToSelectPhotoArea(this.navigateType,
      {required this.image, required this.editProfileBloc});

  @override
  final NavigateType navigateType;
  @override
  final File image;
  @override
  final EditProfileBloc editProfileBloc;

  @override
  String toString() {
    return 'NavigateAction.navigateToSelectPhotoArea(navigateType: $navigateType, image: $image, editProfileBloc: $editProfileBloc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigateToSelectPhotoArea &&
            (identical(other.navigateType, navigateType) ||
                const DeepCollectionEquality()
                    .equals(other.navigateType, navigateType)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.editProfileBloc, editProfileBloc) ||
                const DeepCollectionEquality()
                    .equals(other.editProfileBloc, editProfileBloc)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(navigateType) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(editProfileBloc);

  @JsonKey(ignore: true)
  @override
  $NavigateToSelectPhotoAreaCopyWith<NavigateToSelectPhotoArea> get copyWith =>
      _$NavigateToSelectPhotoAreaCopyWithImpl<NavigateToSelectPhotoArea>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic result) navigateBack,
    required TResult Function(NavigateType navigateType)
        navigateToEnterPhoneNumber,
    required TResult Function(
            NavigateType navigateType, EnterCodeType enterCodeType)
        navigateToEnterPinCode,
    required TResult Function(
            NavigateType navigateType, BiometricType biometricType)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateType navigateType)
        navigateToConfirmAccount,
    required TResult Function(NavigateType navigateType, String phoneNumber)
        navigateToConfirmPhone,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToConfirmationSteps,
    required TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)
        navigateToStories,
    required TResult Function(NavigateType navigateType)
        navigateToNotifications,
    required TResult Function(NavigateType navigateType) navigateToNavigation,
    required TResult Function(NavigateType navigateType, String url)
        navigateToWebView,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToEditProfile,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToPassport,
    required TResult Function(NavigateType navigateType, int categoryId)
        navigateToCompilations,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateType navigateType, String productId)
        navigateToProduct,
    required TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)
        navigateToProductImages,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToAddresses,
    required TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToEditAddress,
    required TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToAddressOnMap,
    required TResult Function(NavigateType navigateType) navigateToIntroduction,
    required TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)
        showSelectAddressBottomSheet,
  }) {
    return navigateToSelectPhotoArea(navigateType, image, editProfileBloc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic result)? navigateBack,
    TResult Function(NavigateType navigateType)? navigateToEnterPhoneNumber,
    TResult Function(NavigateType navigateType, EnterCodeType enterCodeType)?
        navigateToEnterPinCode,
    TResult Function(NavigateType navigateType, BiometricType biometricType)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateType navigateType)? navigateToConfirmAccount,
    TResult Function(NavigateType navigateType, String phoneNumber)?
        navigateToConfirmPhone,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToConfirmationSteps,
    TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)?
        navigateToStories,
    TResult Function(NavigateType navigateType)? navigateToNotifications,
    TResult Function(NavigateType navigateType)? navigateToNavigation,
    TResult Function(NavigateType navigateType, String url)? navigateToWebView,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToEditProfile,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToPassport,
    TResult Function(NavigateType navigateType, int categoryId)?
        navigateToCompilations,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateType navigateType, String productId)?
        navigateToProduct,
    TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)?
        navigateToProductImages,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToAddresses,
    TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToEditAddress,
    TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToAddressOnMap,
    TResult Function(NavigateType navigateType)? navigateToIntroduction,
    TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateToSelectPhotoArea != null) {
      return navigateToSelectPhotoArea(navigateType, image, editProfileBloc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateBack value) navigateBack,
    required TResult Function(NavigateToEnterPhoneNumber value)
        navigateToEnterPhoneNumber,
    required TResult Function(NavigateToEnterPinCode value)
        navigateToEnterPinCode,
    required TResult Function(NavigateToEnableBiometricAuth value)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateToConfirmAccount value)
        navigateToConfirmAccount,
    required TResult Function(NavigateToConfirmPhone value)
        navigateToConfirmPhone,
    required TResult Function(NavigateToConfirmationSteps value)
        navigateToConfirmationSteps,
    required TResult Function(NavigateToStories value) navigateToStories,
    required TResult Function(NavigateToNotifications value)
        navigateToNotifications,
    required TResult Function(NavigateToNavigation value) navigateToNavigation,
    required TResult Function(NavigateToWebView value) navigateToWebView,
    required TResult Function(NavigateToEditProfile value)
        navigateToEditProfile,
    required TResult Function(NavigateToPassport value) navigateToPassport,
    required TResult Function(NavigateToCompilations value)
        navigateToCompilations,
    required TResult Function(NavigateToSelectPhotoArea value)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateToPhotoTakenFinish value)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateToProduct value) navigateToProduct,
    required TResult Function(NavigateToProductImages value)
        navigateToProductImages,
    required TResult Function(NavigateToAddresses value) navigateToAddresses,
    required TResult Function(NavigateToEditAddress value)
        navigateToEditAddress,
    required TResult Function(NavigateToAddressOnMap value)
        navigateToAddressOnMap,
    required TResult Function(NavigateToIntroduction value)
        navigateToIntroduction,
    required TResult Function(ShowSelectAddressBottomSheet value)
        showSelectAddressBottomSheet,
  }) {
    return navigateToSelectPhotoArea(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateBack value)? navigateBack,
    TResult Function(NavigateToEnterPhoneNumber value)?
        navigateToEnterPhoneNumber,
    TResult Function(NavigateToEnterPinCode value)? navigateToEnterPinCode,
    TResult Function(NavigateToEnableBiometricAuth value)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateToConfirmAccount value)? navigateToConfirmAccount,
    TResult Function(NavigateToConfirmPhone value)? navigateToConfirmPhone,
    TResult Function(NavigateToConfirmationSteps value)?
        navigateToConfirmationSteps,
    TResult Function(NavigateToStories value)? navigateToStories,
    TResult Function(NavigateToNotifications value)? navigateToNotifications,
    TResult Function(NavigateToNavigation value)? navigateToNavigation,
    TResult Function(NavigateToWebView value)? navigateToWebView,
    TResult Function(NavigateToEditProfile value)? navigateToEditProfile,
    TResult Function(NavigateToPassport value)? navigateToPassport,
    TResult Function(NavigateToCompilations value)? navigateToCompilations,
    TResult Function(NavigateToSelectPhotoArea value)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateToPhotoTakenFinish value)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateToProduct value)? navigateToProduct,
    TResult Function(NavigateToProductImages value)? navigateToProductImages,
    TResult Function(NavigateToAddresses value)? navigateToAddresses,
    TResult Function(NavigateToEditAddress value)? navigateToEditAddress,
    TResult Function(NavigateToAddressOnMap value)? navigateToAddressOnMap,
    TResult Function(NavigateToIntroduction value)? navigateToIntroduction,
    TResult Function(ShowSelectAddressBottomSheet value)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateToSelectPhotoArea != null) {
      return navigateToSelectPhotoArea(this);
    }
    return orElse();
  }
}

abstract class NavigateToSelectPhotoArea implements NavigateAction {
  factory NavigateToSelectPhotoArea(NavigateType navigateType,
      {required File image,
      required EditProfileBloc editProfileBloc}) = _$NavigateToSelectPhotoArea;

  NavigateType get navigateType => throw _privateConstructorUsedError;
  File get image => throw _privateConstructorUsedError;
  EditProfileBloc get editProfileBloc => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavigateToSelectPhotoAreaCopyWith<NavigateToSelectPhotoArea> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateToPhotoTakenFinishCopyWith<$Res> {
  factory $NavigateToPhotoTakenFinishCopyWith(NavigateToPhotoTakenFinish value,
          $Res Function(NavigateToPhotoTakenFinish) then) =
      _$NavigateToPhotoTakenFinishCopyWithImpl<$Res>;
  $Res call(
      {NavigateType navigateType, File image, EditProfileBloc editProfileBloc});
}

/// @nodoc
class _$NavigateToPhotoTakenFinishCopyWithImpl<$Res>
    extends _$NavigateActionCopyWithImpl<$Res>
    implements $NavigateToPhotoTakenFinishCopyWith<$Res> {
  _$NavigateToPhotoTakenFinishCopyWithImpl(NavigateToPhotoTakenFinish _value,
      $Res Function(NavigateToPhotoTakenFinish) _then)
      : super(_value, (v) => _then(v as NavigateToPhotoTakenFinish));

  @override
  NavigateToPhotoTakenFinish get _value =>
      super._value as NavigateToPhotoTakenFinish;

  @override
  $Res call({
    Object? navigateType = freezed,
    Object? image = freezed,
    Object? editProfileBloc = freezed,
  }) {
    return _then(NavigateToPhotoTakenFinish(
      navigateType == freezed
          ? _value.navigateType
          : navigateType // ignore: cast_nullable_to_non_nullable
              as NavigateType,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File,
      editProfileBloc: editProfileBloc == freezed
          ? _value.editProfileBloc
          : editProfileBloc // ignore: cast_nullable_to_non_nullable
              as EditProfileBloc,
    ));
  }
}

/// @nodoc

class _$NavigateToPhotoTakenFinish implements NavigateToPhotoTakenFinish {
  _$NavigateToPhotoTakenFinish(this.navigateType,
      {required this.image, required this.editProfileBloc});

  @override
  final NavigateType navigateType;
  @override
  final File image;
  @override
  final EditProfileBloc editProfileBloc;

  @override
  String toString() {
    return 'NavigateAction.navigateToPhotoTakenFinish(navigateType: $navigateType, image: $image, editProfileBloc: $editProfileBloc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigateToPhotoTakenFinish &&
            (identical(other.navigateType, navigateType) ||
                const DeepCollectionEquality()
                    .equals(other.navigateType, navigateType)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.editProfileBloc, editProfileBloc) ||
                const DeepCollectionEquality()
                    .equals(other.editProfileBloc, editProfileBloc)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(navigateType) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(editProfileBloc);

  @JsonKey(ignore: true)
  @override
  $NavigateToPhotoTakenFinishCopyWith<NavigateToPhotoTakenFinish>
      get copyWith =>
          _$NavigateToPhotoTakenFinishCopyWithImpl<NavigateToPhotoTakenFinish>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic result) navigateBack,
    required TResult Function(NavigateType navigateType)
        navigateToEnterPhoneNumber,
    required TResult Function(
            NavigateType navigateType, EnterCodeType enterCodeType)
        navigateToEnterPinCode,
    required TResult Function(
            NavigateType navigateType, BiometricType biometricType)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateType navigateType)
        navigateToConfirmAccount,
    required TResult Function(NavigateType navigateType, String phoneNumber)
        navigateToConfirmPhone,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToConfirmationSteps,
    required TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)
        navigateToStories,
    required TResult Function(NavigateType navigateType)
        navigateToNotifications,
    required TResult Function(NavigateType navigateType) navigateToNavigation,
    required TResult Function(NavigateType navigateType, String url)
        navigateToWebView,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToEditProfile,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToPassport,
    required TResult Function(NavigateType navigateType, int categoryId)
        navigateToCompilations,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateType navigateType, String productId)
        navigateToProduct,
    required TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)
        navigateToProductImages,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToAddresses,
    required TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToEditAddress,
    required TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToAddressOnMap,
    required TResult Function(NavigateType navigateType) navigateToIntroduction,
    required TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)
        showSelectAddressBottomSheet,
  }) {
    return navigateToPhotoTakenFinish(navigateType, image, editProfileBloc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic result)? navigateBack,
    TResult Function(NavigateType navigateType)? navigateToEnterPhoneNumber,
    TResult Function(NavigateType navigateType, EnterCodeType enterCodeType)?
        navigateToEnterPinCode,
    TResult Function(NavigateType navigateType, BiometricType biometricType)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateType navigateType)? navigateToConfirmAccount,
    TResult Function(NavigateType navigateType, String phoneNumber)?
        navigateToConfirmPhone,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToConfirmationSteps,
    TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)?
        navigateToStories,
    TResult Function(NavigateType navigateType)? navigateToNotifications,
    TResult Function(NavigateType navigateType)? navigateToNavigation,
    TResult Function(NavigateType navigateType, String url)? navigateToWebView,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToEditProfile,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToPassport,
    TResult Function(NavigateType navigateType, int categoryId)?
        navigateToCompilations,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateType navigateType, String productId)?
        navigateToProduct,
    TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)?
        navigateToProductImages,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToAddresses,
    TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToEditAddress,
    TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToAddressOnMap,
    TResult Function(NavigateType navigateType)? navigateToIntroduction,
    TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateToPhotoTakenFinish != null) {
      return navigateToPhotoTakenFinish(navigateType, image, editProfileBloc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateBack value) navigateBack,
    required TResult Function(NavigateToEnterPhoneNumber value)
        navigateToEnterPhoneNumber,
    required TResult Function(NavigateToEnterPinCode value)
        navigateToEnterPinCode,
    required TResult Function(NavigateToEnableBiometricAuth value)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateToConfirmAccount value)
        navigateToConfirmAccount,
    required TResult Function(NavigateToConfirmPhone value)
        navigateToConfirmPhone,
    required TResult Function(NavigateToConfirmationSteps value)
        navigateToConfirmationSteps,
    required TResult Function(NavigateToStories value) navigateToStories,
    required TResult Function(NavigateToNotifications value)
        navigateToNotifications,
    required TResult Function(NavigateToNavigation value) navigateToNavigation,
    required TResult Function(NavigateToWebView value) navigateToWebView,
    required TResult Function(NavigateToEditProfile value)
        navigateToEditProfile,
    required TResult Function(NavigateToPassport value) navigateToPassport,
    required TResult Function(NavigateToCompilations value)
        navigateToCompilations,
    required TResult Function(NavigateToSelectPhotoArea value)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateToPhotoTakenFinish value)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateToProduct value) navigateToProduct,
    required TResult Function(NavigateToProductImages value)
        navigateToProductImages,
    required TResult Function(NavigateToAddresses value) navigateToAddresses,
    required TResult Function(NavigateToEditAddress value)
        navigateToEditAddress,
    required TResult Function(NavigateToAddressOnMap value)
        navigateToAddressOnMap,
    required TResult Function(NavigateToIntroduction value)
        navigateToIntroduction,
    required TResult Function(ShowSelectAddressBottomSheet value)
        showSelectAddressBottomSheet,
  }) {
    return navigateToPhotoTakenFinish(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateBack value)? navigateBack,
    TResult Function(NavigateToEnterPhoneNumber value)?
        navigateToEnterPhoneNumber,
    TResult Function(NavigateToEnterPinCode value)? navigateToEnterPinCode,
    TResult Function(NavigateToEnableBiometricAuth value)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateToConfirmAccount value)? navigateToConfirmAccount,
    TResult Function(NavigateToConfirmPhone value)? navigateToConfirmPhone,
    TResult Function(NavigateToConfirmationSteps value)?
        navigateToConfirmationSteps,
    TResult Function(NavigateToStories value)? navigateToStories,
    TResult Function(NavigateToNotifications value)? navigateToNotifications,
    TResult Function(NavigateToNavigation value)? navigateToNavigation,
    TResult Function(NavigateToWebView value)? navigateToWebView,
    TResult Function(NavigateToEditProfile value)? navigateToEditProfile,
    TResult Function(NavigateToPassport value)? navigateToPassport,
    TResult Function(NavigateToCompilations value)? navigateToCompilations,
    TResult Function(NavigateToSelectPhotoArea value)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateToPhotoTakenFinish value)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateToProduct value)? navigateToProduct,
    TResult Function(NavigateToProductImages value)? navigateToProductImages,
    TResult Function(NavigateToAddresses value)? navigateToAddresses,
    TResult Function(NavigateToEditAddress value)? navigateToEditAddress,
    TResult Function(NavigateToAddressOnMap value)? navigateToAddressOnMap,
    TResult Function(NavigateToIntroduction value)? navigateToIntroduction,
    TResult Function(ShowSelectAddressBottomSheet value)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateToPhotoTakenFinish != null) {
      return navigateToPhotoTakenFinish(this);
    }
    return orElse();
  }
}

abstract class NavigateToPhotoTakenFinish implements NavigateAction {
  factory NavigateToPhotoTakenFinish(NavigateType navigateType,
      {required File image,
      required EditProfileBloc editProfileBloc}) = _$NavigateToPhotoTakenFinish;

  NavigateType get navigateType => throw _privateConstructorUsedError;
  File get image => throw _privateConstructorUsedError;
  EditProfileBloc get editProfileBloc => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavigateToPhotoTakenFinishCopyWith<NavigateToPhotoTakenFinish>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateToProductCopyWith<$Res> {
  factory $NavigateToProductCopyWith(
          NavigateToProduct value, $Res Function(NavigateToProduct) then) =
      _$NavigateToProductCopyWithImpl<$Res>;
  $Res call({NavigateType navigateType, String productId});
}

/// @nodoc
class _$NavigateToProductCopyWithImpl<$Res>
    extends _$NavigateActionCopyWithImpl<$Res>
    implements $NavigateToProductCopyWith<$Res> {
  _$NavigateToProductCopyWithImpl(
      NavigateToProduct _value, $Res Function(NavigateToProduct) _then)
      : super(_value, (v) => _then(v as NavigateToProduct));

  @override
  NavigateToProduct get _value => super._value as NavigateToProduct;

  @override
  $Res call({
    Object? navigateType = freezed,
    Object? productId = freezed,
  }) {
    return _then(NavigateToProduct(
      navigateType == freezed
          ? _value.navigateType
          : navigateType // ignore: cast_nullable_to_non_nullable
              as NavigateType,
      productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NavigateToProduct implements NavigateToProduct {
  _$NavigateToProduct(this.navigateType, this.productId);

  @override
  final NavigateType navigateType;
  @override
  final String productId;

  @override
  String toString() {
    return 'NavigateAction.navigateToProduct(navigateType: $navigateType, productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigateToProduct &&
            (identical(other.navigateType, navigateType) ||
                const DeepCollectionEquality()
                    .equals(other.navigateType, navigateType)) &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(navigateType) ^
      const DeepCollectionEquality().hash(productId);

  @JsonKey(ignore: true)
  @override
  $NavigateToProductCopyWith<NavigateToProduct> get copyWith =>
      _$NavigateToProductCopyWithImpl<NavigateToProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic result) navigateBack,
    required TResult Function(NavigateType navigateType)
        navigateToEnterPhoneNumber,
    required TResult Function(
            NavigateType navigateType, EnterCodeType enterCodeType)
        navigateToEnterPinCode,
    required TResult Function(
            NavigateType navigateType, BiometricType biometricType)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateType navigateType)
        navigateToConfirmAccount,
    required TResult Function(NavigateType navigateType, String phoneNumber)
        navigateToConfirmPhone,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToConfirmationSteps,
    required TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)
        navigateToStories,
    required TResult Function(NavigateType navigateType)
        navigateToNotifications,
    required TResult Function(NavigateType navigateType) navigateToNavigation,
    required TResult Function(NavigateType navigateType, String url)
        navigateToWebView,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToEditProfile,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToPassport,
    required TResult Function(NavigateType navigateType, int categoryId)
        navigateToCompilations,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateType navigateType, String productId)
        navigateToProduct,
    required TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)
        navigateToProductImages,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToAddresses,
    required TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToEditAddress,
    required TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToAddressOnMap,
    required TResult Function(NavigateType navigateType) navigateToIntroduction,
    required TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)
        showSelectAddressBottomSheet,
  }) {
    return navigateToProduct(navigateType, productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic result)? navigateBack,
    TResult Function(NavigateType navigateType)? navigateToEnterPhoneNumber,
    TResult Function(NavigateType navigateType, EnterCodeType enterCodeType)?
        navigateToEnterPinCode,
    TResult Function(NavigateType navigateType, BiometricType biometricType)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateType navigateType)? navigateToConfirmAccount,
    TResult Function(NavigateType navigateType, String phoneNumber)?
        navigateToConfirmPhone,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToConfirmationSteps,
    TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)?
        navigateToStories,
    TResult Function(NavigateType navigateType)? navigateToNotifications,
    TResult Function(NavigateType navigateType)? navigateToNavigation,
    TResult Function(NavigateType navigateType, String url)? navigateToWebView,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToEditProfile,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToPassport,
    TResult Function(NavigateType navigateType, int categoryId)?
        navigateToCompilations,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateType navigateType, String productId)?
        navigateToProduct,
    TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)?
        navigateToProductImages,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToAddresses,
    TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToEditAddress,
    TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToAddressOnMap,
    TResult Function(NavigateType navigateType)? navigateToIntroduction,
    TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateToProduct != null) {
      return navigateToProduct(navigateType, productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateBack value) navigateBack,
    required TResult Function(NavigateToEnterPhoneNumber value)
        navigateToEnterPhoneNumber,
    required TResult Function(NavigateToEnterPinCode value)
        navigateToEnterPinCode,
    required TResult Function(NavigateToEnableBiometricAuth value)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateToConfirmAccount value)
        navigateToConfirmAccount,
    required TResult Function(NavigateToConfirmPhone value)
        navigateToConfirmPhone,
    required TResult Function(NavigateToConfirmationSteps value)
        navigateToConfirmationSteps,
    required TResult Function(NavigateToStories value) navigateToStories,
    required TResult Function(NavigateToNotifications value)
        navigateToNotifications,
    required TResult Function(NavigateToNavigation value) navigateToNavigation,
    required TResult Function(NavigateToWebView value) navigateToWebView,
    required TResult Function(NavigateToEditProfile value)
        navigateToEditProfile,
    required TResult Function(NavigateToPassport value) navigateToPassport,
    required TResult Function(NavigateToCompilations value)
        navigateToCompilations,
    required TResult Function(NavigateToSelectPhotoArea value)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateToPhotoTakenFinish value)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateToProduct value) navigateToProduct,
    required TResult Function(NavigateToProductImages value)
        navigateToProductImages,
    required TResult Function(NavigateToAddresses value) navigateToAddresses,
    required TResult Function(NavigateToEditAddress value)
        navigateToEditAddress,
    required TResult Function(NavigateToAddressOnMap value)
        navigateToAddressOnMap,
    required TResult Function(NavigateToIntroduction value)
        navigateToIntroduction,
    required TResult Function(ShowSelectAddressBottomSheet value)
        showSelectAddressBottomSheet,
  }) {
    return navigateToProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateBack value)? navigateBack,
    TResult Function(NavigateToEnterPhoneNumber value)?
        navigateToEnterPhoneNumber,
    TResult Function(NavigateToEnterPinCode value)? navigateToEnterPinCode,
    TResult Function(NavigateToEnableBiometricAuth value)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateToConfirmAccount value)? navigateToConfirmAccount,
    TResult Function(NavigateToConfirmPhone value)? navigateToConfirmPhone,
    TResult Function(NavigateToConfirmationSteps value)?
        navigateToConfirmationSteps,
    TResult Function(NavigateToStories value)? navigateToStories,
    TResult Function(NavigateToNotifications value)? navigateToNotifications,
    TResult Function(NavigateToNavigation value)? navigateToNavigation,
    TResult Function(NavigateToWebView value)? navigateToWebView,
    TResult Function(NavigateToEditProfile value)? navigateToEditProfile,
    TResult Function(NavigateToPassport value)? navigateToPassport,
    TResult Function(NavigateToCompilations value)? navigateToCompilations,
    TResult Function(NavigateToSelectPhotoArea value)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateToPhotoTakenFinish value)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateToProduct value)? navigateToProduct,
    TResult Function(NavigateToProductImages value)? navigateToProductImages,
    TResult Function(NavigateToAddresses value)? navigateToAddresses,
    TResult Function(NavigateToEditAddress value)? navigateToEditAddress,
    TResult Function(NavigateToAddressOnMap value)? navigateToAddressOnMap,
    TResult Function(NavigateToIntroduction value)? navigateToIntroduction,
    TResult Function(ShowSelectAddressBottomSheet value)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateToProduct != null) {
      return navigateToProduct(this);
    }
    return orElse();
  }
}

abstract class NavigateToProduct implements NavigateAction {
  factory NavigateToProduct(NavigateType navigateType, String productId) =
      _$NavigateToProduct;

  NavigateType get navigateType => throw _privateConstructorUsedError;
  String get productId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavigateToProductCopyWith<NavigateToProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateToProductImagesCopyWith<$Res> {
  factory $NavigateToProductImagesCopyWith(NavigateToProductImages value,
          $Res Function(NavigateToProductImages) then) =
      _$NavigateToProductImagesCopyWithImpl<$Res>;
  $Res call(
      {NavigateType navigateType, int currentImageIndex, List<String> images});
}

/// @nodoc
class _$NavigateToProductImagesCopyWithImpl<$Res>
    extends _$NavigateActionCopyWithImpl<$Res>
    implements $NavigateToProductImagesCopyWith<$Res> {
  _$NavigateToProductImagesCopyWithImpl(NavigateToProductImages _value,
      $Res Function(NavigateToProductImages) _then)
      : super(_value, (v) => _then(v as NavigateToProductImages));

  @override
  NavigateToProductImages get _value => super._value as NavigateToProductImages;

  @override
  $Res call({
    Object? navigateType = freezed,
    Object? currentImageIndex = freezed,
    Object? images = freezed,
  }) {
    return _then(NavigateToProductImages(
      navigateType == freezed
          ? _value.navigateType
          : navigateType // ignore: cast_nullable_to_non_nullable
              as NavigateType,
      currentImageIndex: currentImageIndex == freezed
          ? _value.currentImageIndex
          : currentImageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$NavigateToProductImages implements NavigateToProductImages {
  _$NavigateToProductImages(this.navigateType,
      {required this.currentImageIndex, required this.images});

  @override
  final NavigateType navigateType;
  @override
  final int currentImageIndex;
  @override
  final List<String> images;

  @override
  String toString() {
    return 'NavigateAction.navigateToProductImages(navigateType: $navigateType, currentImageIndex: $currentImageIndex, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigateToProductImages &&
            (identical(other.navigateType, navigateType) ||
                const DeepCollectionEquality()
                    .equals(other.navigateType, navigateType)) &&
            (identical(other.currentImageIndex, currentImageIndex) ||
                const DeepCollectionEquality()
                    .equals(other.currentImageIndex, currentImageIndex)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(navigateType) ^
      const DeepCollectionEquality().hash(currentImageIndex) ^
      const DeepCollectionEquality().hash(images);

  @JsonKey(ignore: true)
  @override
  $NavigateToProductImagesCopyWith<NavigateToProductImages> get copyWith =>
      _$NavigateToProductImagesCopyWithImpl<NavigateToProductImages>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic result) navigateBack,
    required TResult Function(NavigateType navigateType)
        navigateToEnterPhoneNumber,
    required TResult Function(
            NavigateType navigateType, EnterCodeType enterCodeType)
        navigateToEnterPinCode,
    required TResult Function(
            NavigateType navigateType, BiometricType biometricType)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateType navigateType)
        navigateToConfirmAccount,
    required TResult Function(NavigateType navigateType, String phoneNumber)
        navigateToConfirmPhone,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToConfirmationSteps,
    required TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)
        navigateToStories,
    required TResult Function(NavigateType navigateType)
        navigateToNotifications,
    required TResult Function(NavigateType navigateType) navigateToNavigation,
    required TResult Function(NavigateType navigateType, String url)
        navigateToWebView,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToEditProfile,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToPassport,
    required TResult Function(NavigateType navigateType, int categoryId)
        navigateToCompilations,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateType navigateType, String productId)
        navigateToProduct,
    required TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)
        navigateToProductImages,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToAddresses,
    required TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToEditAddress,
    required TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToAddressOnMap,
    required TResult Function(NavigateType navigateType) navigateToIntroduction,
    required TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)
        showSelectAddressBottomSheet,
  }) {
    return navigateToProductImages(navigateType, currentImageIndex, images);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic result)? navigateBack,
    TResult Function(NavigateType navigateType)? navigateToEnterPhoneNumber,
    TResult Function(NavigateType navigateType, EnterCodeType enterCodeType)?
        navigateToEnterPinCode,
    TResult Function(NavigateType navigateType, BiometricType biometricType)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateType navigateType)? navigateToConfirmAccount,
    TResult Function(NavigateType navigateType, String phoneNumber)?
        navigateToConfirmPhone,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToConfirmationSteps,
    TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)?
        navigateToStories,
    TResult Function(NavigateType navigateType)? navigateToNotifications,
    TResult Function(NavigateType navigateType)? navigateToNavigation,
    TResult Function(NavigateType navigateType, String url)? navigateToWebView,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToEditProfile,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToPassport,
    TResult Function(NavigateType navigateType, int categoryId)?
        navigateToCompilations,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateType navigateType, String productId)?
        navigateToProduct,
    TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)?
        navigateToProductImages,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToAddresses,
    TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToEditAddress,
    TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToAddressOnMap,
    TResult Function(NavigateType navigateType)? navigateToIntroduction,
    TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateToProductImages != null) {
      return navigateToProductImages(navigateType, currentImageIndex, images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateBack value) navigateBack,
    required TResult Function(NavigateToEnterPhoneNumber value)
        navigateToEnterPhoneNumber,
    required TResult Function(NavigateToEnterPinCode value)
        navigateToEnterPinCode,
    required TResult Function(NavigateToEnableBiometricAuth value)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateToConfirmAccount value)
        navigateToConfirmAccount,
    required TResult Function(NavigateToConfirmPhone value)
        navigateToConfirmPhone,
    required TResult Function(NavigateToConfirmationSteps value)
        navigateToConfirmationSteps,
    required TResult Function(NavigateToStories value) navigateToStories,
    required TResult Function(NavigateToNotifications value)
        navigateToNotifications,
    required TResult Function(NavigateToNavigation value) navigateToNavigation,
    required TResult Function(NavigateToWebView value) navigateToWebView,
    required TResult Function(NavigateToEditProfile value)
        navigateToEditProfile,
    required TResult Function(NavigateToPassport value) navigateToPassport,
    required TResult Function(NavigateToCompilations value)
        navigateToCompilations,
    required TResult Function(NavigateToSelectPhotoArea value)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateToPhotoTakenFinish value)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateToProduct value) navigateToProduct,
    required TResult Function(NavigateToProductImages value)
        navigateToProductImages,
    required TResult Function(NavigateToAddresses value) navigateToAddresses,
    required TResult Function(NavigateToEditAddress value)
        navigateToEditAddress,
    required TResult Function(NavigateToAddressOnMap value)
        navigateToAddressOnMap,
    required TResult Function(NavigateToIntroduction value)
        navigateToIntroduction,
    required TResult Function(ShowSelectAddressBottomSheet value)
        showSelectAddressBottomSheet,
  }) {
    return navigateToProductImages(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateBack value)? navigateBack,
    TResult Function(NavigateToEnterPhoneNumber value)?
        navigateToEnterPhoneNumber,
    TResult Function(NavigateToEnterPinCode value)? navigateToEnterPinCode,
    TResult Function(NavigateToEnableBiometricAuth value)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateToConfirmAccount value)? navigateToConfirmAccount,
    TResult Function(NavigateToConfirmPhone value)? navigateToConfirmPhone,
    TResult Function(NavigateToConfirmationSteps value)?
        navigateToConfirmationSteps,
    TResult Function(NavigateToStories value)? navigateToStories,
    TResult Function(NavigateToNotifications value)? navigateToNotifications,
    TResult Function(NavigateToNavigation value)? navigateToNavigation,
    TResult Function(NavigateToWebView value)? navigateToWebView,
    TResult Function(NavigateToEditProfile value)? navigateToEditProfile,
    TResult Function(NavigateToPassport value)? navigateToPassport,
    TResult Function(NavigateToCompilations value)? navigateToCompilations,
    TResult Function(NavigateToSelectPhotoArea value)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateToPhotoTakenFinish value)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateToProduct value)? navigateToProduct,
    TResult Function(NavigateToProductImages value)? navigateToProductImages,
    TResult Function(NavigateToAddresses value)? navigateToAddresses,
    TResult Function(NavigateToEditAddress value)? navigateToEditAddress,
    TResult Function(NavigateToAddressOnMap value)? navigateToAddressOnMap,
    TResult Function(NavigateToIntroduction value)? navigateToIntroduction,
    TResult Function(ShowSelectAddressBottomSheet value)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateToProductImages != null) {
      return navigateToProductImages(this);
    }
    return orElse();
  }
}

abstract class NavigateToProductImages implements NavigateAction {
  factory NavigateToProductImages(NavigateType navigateType,
      {required int currentImageIndex,
      required List<String> images}) = _$NavigateToProductImages;

  NavigateType get navigateType => throw _privateConstructorUsedError;
  int get currentImageIndex => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavigateToProductImagesCopyWith<NavigateToProductImages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateToAddressesCopyWith<$Res> {
  factory $NavigateToAddressesCopyWith(
          NavigateToAddresses value, $Res Function(NavigateToAddresses) then) =
      _$NavigateToAddressesCopyWithImpl<$Res>;
  $Res call({NavigateType navigateType, ProfileEntity? profile});
}

/// @nodoc
class _$NavigateToAddressesCopyWithImpl<$Res>
    extends _$NavigateActionCopyWithImpl<$Res>
    implements $NavigateToAddressesCopyWith<$Res> {
  _$NavigateToAddressesCopyWithImpl(
      NavigateToAddresses _value, $Res Function(NavigateToAddresses) _then)
      : super(_value, (v) => _then(v as NavigateToAddresses));

  @override
  NavigateToAddresses get _value => super._value as NavigateToAddresses;

  @override
  $Res call({
    Object? navigateType = freezed,
    Object? profile = freezed,
  }) {
    return _then(NavigateToAddresses(
      navigateType == freezed
          ? _value.navigateType
          : navigateType // ignore: cast_nullable_to_non_nullable
              as NavigateType,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileEntity?,
    ));
  }
}

/// @nodoc

class _$NavigateToAddresses implements NavigateToAddresses {
  _$NavigateToAddresses(this.navigateType, {this.profile});

  @override
  final NavigateType navigateType;
  @override
  final ProfileEntity? profile;

  @override
  String toString() {
    return 'NavigateAction.navigateToAddresses(navigateType: $navigateType, profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigateToAddresses &&
            (identical(other.navigateType, navigateType) ||
                const DeepCollectionEquality()
                    .equals(other.navigateType, navigateType)) &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality().equals(other.profile, profile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(navigateType) ^
      const DeepCollectionEquality().hash(profile);

  @JsonKey(ignore: true)
  @override
  $NavigateToAddressesCopyWith<NavigateToAddresses> get copyWith =>
      _$NavigateToAddressesCopyWithImpl<NavigateToAddresses>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic result) navigateBack,
    required TResult Function(NavigateType navigateType)
        navigateToEnterPhoneNumber,
    required TResult Function(
            NavigateType navigateType, EnterCodeType enterCodeType)
        navigateToEnterPinCode,
    required TResult Function(
            NavigateType navigateType, BiometricType biometricType)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateType navigateType)
        navigateToConfirmAccount,
    required TResult Function(NavigateType navigateType, String phoneNumber)
        navigateToConfirmPhone,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToConfirmationSteps,
    required TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)
        navigateToStories,
    required TResult Function(NavigateType navigateType)
        navigateToNotifications,
    required TResult Function(NavigateType navigateType) navigateToNavigation,
    required TResult Function(NavigateType navigateType, String url)
        navigateToWebView,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToEditProfile,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToPassport,
    required TResult Function(NavigateType navigateType, int categoryId)
        navigateToCompilations,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateType navigateType, String productId)
        navigateToProduct,
    required TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)
        navigateToProductImages,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToAddresses,
    required TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToEditAddress,
    required TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToAddressOnMap,
    required TResult Function(NavigateType navigateType) navigateToIntroduction,
    required TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)
        showSelectAddressBottomSheet,
  }) {
    return navigateToAddresses(navigateType, profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic result)? navigateBack,
    TResult Function(NavigateType navigateType)? navigateToEnterPhoneNumber,
    TResult Function(NavigateType navigateType, EnterCodeType enterCodeType)?
        navigateToEnterPinCode,
    TResult Function(NavigateType navigateType, BiometricType biometricType)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateType navigateType)? navigateToConfirmAccount,
    TResult Function(NavigateType navigateType, String phoneNumber)?
        navigateToConfirmPhone,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToConfirmationSteps,
    TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)?
        navigateToStories,
    TResult Function(NavigateType navigateType)? navigateToNotifications,
    TResult Function(NavigateType navigateType)? navigateToNavigation,
    TResult Function(NavigateType navigateType, String url)? navigateToWebView,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToEditProfile,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToPassport,
    TResult Function(NavigateType navigateType, int categoryId)?
        navigateToCompilations,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateType navigateType, String productId)?
        navigateToProduct,
    TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)?
        navigateToProductImages,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToAddresses,
    TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToEditAddress,
    TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToAddressOnMap,
    TResult Function(NavigateType navigateType)? navigateToIntroduction,
    TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateToAddresses != null) {
      return navigateToAddresses(navigateType, profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateBack value) navigateBack,
    required TResult Function(NavigateToEnterPhoneNumber value)
        navigateToEnterPhoneNumber,
    required TResult Function(NavigateToEnterPinCode value)
        navigateToEnterPinCode,
    required TResult Function(NavigateToEnableBiometricAuth value)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateToConfirmAccount value)
        navigateToConfirmAccount,
    required TResult Function(NavigateToConfirmPhone value)
        navigateToConfirmPhone,
    required TResult Function(NavigateToConfirmationSteps value)
        navigateToConfirmationSteps,
    required TResult Function(NavigateToStories value) navigateToStories,
    required TResult Function(NavigateToNotifications value)
        navigateToNotifications,
    required TResult Function(NavigateToNavigation value) navigateToNavigation,
    required TResult Function(NavigateToWebView value) navigateToWebView,
    required TResult Function(NavigateToEditProfile value)
        navigateToEditProfile,
    required TResult Function(NavigateToPassport value) navigateToPassport,
    required TResult Function(NavigateToCompilations value)
        navigateToCompilations,
    required TResult Function(NavigateToSelectPhotoArea value)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateToPhotoTakenFinish value)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateToProduct value) navigateToProduct,
    required TResult Function(NavigateToProductImages value)
        navigateToProductImages,
    required TResult Function(NavigateToAddresses value) navigateToAddresses,
    required TResult Function(NavigateToEditAddress value)
        navigateToEditAddress,
    required TResult Function(NavigateToAddressOnMap value)
        navigateToAddressOnMap,
    required TResult Function(NavigateToIntroduction value)
        navigateToIntroduction,
    required TResult Function(ShowSelectAddressBottomSheet value)
        showSelectAddressBottomSheet,
  }) {
    return navigateToAddresses(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateBack value)? navigateBack,
    TResult Function(NavigateToEnterPhoneNumber value)?
        navigateToEnterPhoneNumber,
    TResult Function(NavigateToEnterPinCode value)? navigateToEnterPinCode,
    TResult Function(NavigateToEnableBiometricAuth value)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateToConfirmAccount value)? navigateToConfirmAccount,
    TResult Function(NavigateToConfirmPhone value)? navigateToConfirmPhone,
    TResult Function(NavigateToConfirmationSteps value)?
        navigateToConfirmationSteps,
    TResult Function(NavigateToStories value)? navigateToStories,
    TResult Function(NavigateToNotifications value)? navigateToNotifications,
    TResult Function(NavigateToNavigation value)? navigateToNavigation,
    TResult Function(NavigateToWebView value)? navigateToWebView,
    TResult Function(NavigateToEditProfile value)? navigateToEditProfile,
    TResult Function(NavigateToPassport value)? navigateToPassport,
    TResult Function(NavigateToCompilations value)? navigateToCompilations,
    TResult Function(NavigateToSelectPhotoArea value)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateToPhotoTakenFinish value)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateToProduct value)? navigateToProduct,
    TResult Function(NavigateToProductImages value)? navigateToProductImages,
    TResult Function(NavigateToAddresses value)? navigateToAddresses,
    TResult Function(NavigateToEditAddress value)? navigateToEditAddress,
    TResult Function(NavigateToAddressOnMap value)? navigateToAddressOnMap,
    TResult Function(NavigateToIntroduction value)? navigateToIntroduction,
    TResult Function(ShowSelectAddressBottomSheet value)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateToAddresses != null) {
      return navigateToAddresses(this);
    }
    return orElse();
  }
}

abstract class NavigateToAddresses implements NavigateAction {
  factory NavigateToAddresses(NavigateType navigateType,
      {ProfileEntity? profile}) = _$NavigateToAddresses;

  NavigateType get navigateType => throw _privateConstructorUsedError;
  ProfileEntity? get profile => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavigateToAddressesCopyWith<NavigateToAddresses> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateToEditAddressCopyWith<$Res> {
  factory $NavigateToEditAddressCopyWith(NavigateToEditAddress value,
          $Res Function(NavigateToEditAddress) then) =
      _$NavigateToEditAddressCopyWithImpl<$Res>;
  $Res call(
      {NavigateType navigateType,
      AddressItemEntity? addressItemEntity,
      bool isNewAddress,
      AddressesBloc? addressesBloc,
      NavigateAction actionForPopUntil});

  $AddressItemEntityCopyWith<$Res>? get addressItemEntity;
  $NavigateActionCopyWith<$Res> get actionForPopUntil;
}

/// @nodoc
class _$NavigateToEditAddressCopyWithImpl<$Res>
    extends _$NavigateActionCopyWithImpl<$Res>
    implements $NavigateToEditAddressCopyWith<$Res> {
  _$NavigateToEditAddressCopyWithImpl(
      NavigateToEditAddress _value, $Res Function(NavigateToEditAddress) _then)
      : super(_value, (v) => _then(v as NavigateToEditAddress));

  @override
  NavigateToEditAddress get _value => super._value as NavigateToEditAddress;

  @override
  $Res call({
    Object? navigateType = freezed,
    Object? addressItemEntity = freezed,
    Object? isNewAddress = freezed,
    Object? addressesBloc = freezed,
    Object? actionForPopUntil = freezed,
  }) {
    return _then(NavigateToEditAddress(
      navigateType == freezed
          ? _value.navigateType
          : navigateType // ignore: cast_nullable_to_non_nullable
              as NavigateType,
      addressItemEntity: addressItemEntity == freezed
          ? _value.addressItemEntity
          : addressItemEntity // ignore: cast_nullable_to_non_nullable
              as AddressItemEntity?,
      isNewAddress: isNewAddress == freezed
          ? _value.isNewAddress
          : isNewAddress // ignore: cast_nullable_to_non_nullable
              as bool,
      addressesBloc: addressesBloc == freezed
          ? _value.addressesBloc
          : addressesBloc // ignore: cast_nullable_to_non_nullable
              as AddressesBloc?,
      actionForPopUntil: actionForPopUntil == freezed
          ? _value.actionForPopUntil
          : actionForPopUntil // ignore: cast_nullable_to_non_nullable
              as NavigateAction,
    ));
  }

  @override
  $AddressItemEntityCopyWith<$Res>? get addressItemEntity {
    if (_value.addressItemEntity == null) {
      return null;
    }

    return $AddressItemEntityCopyWith<$Res>(_value.addressItemEntity!, (value) {
      return _then(_value.copyWith(addressItemEntity: value));
    });
  }

  @override
  $NavigateActionCopyWith<$Res> get actionForPopUntil {
    return $NavigateActionCopyWith<$Res>(_value.actionForPopUntil, (value) {
      return _then(_value.copyWith(actionForPopUntil: value));
    });
  }
}

/// @nodoc

class _$NavigateToEditAddress implements NavigateToEditAddress {
  _$NavigateToEditAddress(this.navigateType,
      {this.addressItemEntity,
      this.isNewAddress = false,
      this.addressesBloc,
      required this.actionForPopUntil});

  @override
  final NavigateType navigateType;
  @override
  final AddressItemEntity? addressItemEntity;
  @JsonKey(defaultValue: false)
  @override
  final bool isNewAddress;
  @override
  final AddressesBloc? addressesBloc;
  @override
  final NavigateAction actionForPopUntil;

  @override
  String toString() {
    return 'NavigateAction.navigateToEditAddress(navigateType: $navigateType, addressItemEntity: $addressItemEntity, isNewAddress: $isNewAddress, addressesBloc: $addressesBloc, actionForPopUntil: $actionForPopUntil)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigateToEditAddress &&
            (identical(other.navigateType, navigateType) ||
                const DeepCollectionEquality()
                    .equals(other.navigateType, navigateType)) &&
            (identical(other.addressItemEntity, addressItemEntity) ||
                const DeepCollectionEquality()
                    .equals(other.addressItemEntity, addressItemEntity)) &&
            (identical(other.isNewAddress, isNewAddress) ||
                const DeepCollectionEquality()
                    .equals(other.isNewAddress, isNewAddress)) &&
            (identical(other.addressesBloc, addressesBloc) ||
                const DeepCollectionEquality()
                    .equals(other.addressesBloc, addressesBloc)) &&
            (identical(other.actionForPopUntil, actionForPopUntil) ||
                const DeepCollectionEquality()
                    .equals(other.actionForPopUntil, actionForPopUntil)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(navigateType) ^
      const DeepCollectionEquality().hash(addressItemEntity) ^
      const DeepCollectionEquality().hash(isNewAddress) ^
      const DeepCollectionEquality().hash(addressesBloc) ^
      const DeepCollectionEquality().hash(actionForPopUntil);

  @JsonKey(ignore: true)
  @override
  $NavigateToEditAddressCopyWith<NavigateToEditAddress> get copyWith =>
      _$NavigateToEditAddressCopyWithImpl<NavigateToEditAddress>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic result) navigateBack,
    required TResult Function(NavigateType navigateType)
        navigateToEnterPhoneNumber,
    required TResult Function(
            NavigateType navigateType, EnterCodeType enterCodeType)
        navigateToEnterPinCode,
    required TResult Function(
            NavigateType navigateType, BiometricType biometricType)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateType navigateType)
        navigateToConfirmAccount,
    required TResult Function(NavigateType navigateType, String phoneNumber)
        navigateToConfirmPhone,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToConfirmationSteps,
    required TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)
        navigateToStories,
    required TResult Function(NavigateType navigateType)
        navigateToNotifications,
    required TResult Function(NavigateType navigateType) navigateToNavigation,
    required TResult Function(NavigateType navigateType, String url)
        navigateToWebView,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToEditProfile,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToPassport,
    required TResult Function(NavigateType navigateType, int categoryId)
        navigateToCompilations,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateType navigateType, String productId)
        navigateToProduct,
    required TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)
        navigateToProductImages,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToAddresses,
    required TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToEditAddress,
    required TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToAddressOnMap,
    required TResult Function(NavigateType navigateType) navigateToIntroduction,
    required TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)
        showSelectAddressBottomSheet,
  }) {
    return navigateToEditAddress(navigateType, addressItemEntity, isNewAddress,
        addressesBloc, actionForPopUntil);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic result)? navigateBack,
    TResult Function(NavigateType navigateType)? navigateToEnterPhoneNumber,
    TResult Function(NavigateType navigateType, EnterCodeType enterCodeType)?
        navigateToEnterPinCode,
    TResult Function(NavigateType navigateType, BiometricType biometricType)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateType navigateType)? navigateToConfirmAccount,
    TResult Function(NavigateType navigateType, String phoneNumber)?
        navigateToConfirmPhone,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToConfirmationSteps,
    TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)?
        navigateToStories,
    TResult Function(NavigateType navigateType)? navigateToNotifications,
    TResult Function(NavigateType navigateType)? navigateToNavigation,
    TResult Function(NavigateType navigateType, String url)? navigateToWebView,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToEditProfile,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToPassport,
    TResult Function(NavigateType navigateType, int categoryId)?
        navigateToCompilations,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateType navigateType, String productId)?
        navigateToProduct,
    TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)?
        navigateToProductImages,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToAddresses,
    TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToEditAddress,
    TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToAddressOnMap,
    TResult Function(NavigateType navigateType)? navigateToIntroduction,
    TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateToEditAddress != null) {
      return navigateToEditAddress(navigateType, addressItemEntity,
          isNewAddress, addressesBloc, actionForPopUntil);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateBack value) navigateBack,
    required TResult Function(NavigateToEnterPhoneNumber value)
        navigateToEnterPhoneNumber,
    required TResult Function(NavigateToEnterPinCode value)
        navigateToEnterPinCode,
    required TResult Function(NavigateToEnableBiometricAuth value)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateToConfirmAccount value)
        navigateToConfirmAccount,
    required TResult Function(NavigateToConfirmPhone value)
        navigateToConfirmPhone,
    required TResult Function(NavigateToConfirmationSteps value)
        navigateToConfirmationSteps,
    required TResult Function(NavigateToStories value) navigateToStories,
    required TResult Function(NavigateToNotifications value)
        navigateToNotifications,
    required TResult Function(NavigateToNavigation value) navigateToNavigation,
    required TResult Function(NavigateToWebView value) navigateToWebView,
    required TResult Function(NavigateToEditProfile value)
        navigateToEditProfile,
    required TResult Function(NavigateToPassport value) navigateToPassport,
    required TResult Function(NavigateToCompilations value)
        navigateToCompilations,
    required TResult Function(NavigateToSelectPhotoArea value)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateToPhotoTakenFinish value)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateToProduct value) navigateToProduct,
    required TResult Function(NavigateToProductImages value)
        navigateToProductImages,
    required TResult Function(NavigateToAddresses value) navigateToAddresses,
    required TResult Function(NavigateToEditAddress value)
        navigateToEditAddress,
    required TResult Function(NavigateToAddressOnMap value)
        navigateToAddressOnMap,
    required TResult Function(NavigateToIntroduction value)
        navigateToIntroduction,
    required TResult Function(ShowSelectAddressBottomSheet value)
        showSelectAddressBottomSheet,
  }) {
    return navigateToEditAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateBack value)? navigateBack,
    TResult Function(NavigateToEnterPhoneNumber value)?
        navigateToEnterPhoneNumber,
    TResult Function(NavigateToEnterPinCode value)? navigateToEnterPinCode,
    TResult Function(NavigateToEnableBiometricAuth value)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateToConfirmAccount value)? navigateToConfirmAccount,
    TResult Function(NavigateToConfirmPhone value)? navigateToConfirmPhone,
    TResult Function(NavigateToConfirmationSteps value)?
        navigateToConfirmationSteps,
    TResult Function(NavigateToStories value)? navigateToStories,
    TResult Function(NavigateToNotifications value)? navigateToNotifications,
    TResult Function(NavigateToNavigation value)? navigateToNavigation,
    TResult Function(NavigateToWebView value)? navigateToWebView,
    TResult Function(NavigateToEditProfile value)? navigateToEditProfile,
    TResult Function(NavigateToPassport value)? navigateToPassport,
    TResult Function(NavigateToCompilations value)? navigateToCompilations,
    TResult Function(NavigateToSelectPhotoArea value)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateToPhotoTakenFinish value)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateToProduct value)? navigateToProduct,
    TResult Function(NavigateToProductImages value)? navigateToProductImages,
    TResult Function(NavigateToAddresses value)? navigateToAddresses,
    TResult Function(NavigateToEditAddress value)? navigateToEditAddress,
    TResult Function(NavigateToAddressOnMap value)? navigateToAddressOnMap,
    TResult Function(NavigateToIntroduction value)? navigateToIntroduction,
    TResult Function(ShowSelectAddressBottomSheet value)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateToEditAddress != null) {
      return navigateToEditAddress(this);
    }
    return orElse();
  }
}

abstract class NavigateToEditAddress implements NavigateAction {
  factory NavigateToEditAddress(NavigateType navigateType,
      {AddressItemEntity? addressItemEntity,
      bool isNewAddress,
      AddressesBloc? addressesBloc,
      required NavigateAction actionForPopUntil}) = _$NavigateToEditAddress;

  NavigateType get navigateType => throw _privateConstructorUsedError;
  AddressItemEntity? get addressItemEntity =>
      throw _privateConstructorUsedError;
  bool get isNewAddress => throw _privateConstructorUsedError;
  AddressesBloc? get addressesBloc => throw _privateConstructorUsedError;
  NavigateAction get actionForPopUntil => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavigateToEditAddressCopyWith<NavigateToEditAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateToAddressOnMapCopyWith<$Res> {
  factory $NavigateToAddressOnMapCopyWith(NavigateToAddressOnMap value,
          $Res Function(NavigateToAddressOnMap) then) =
      _$NavigateToAddressOnMapCopyWithImpl<$Res>;
  $Res call(
      {NavigateType navigateType,
      List<AddressItemEntity>? myAddresses,
      AddressesBloc? addressesBloc,
      NavigateAction actionForPopUntil});

  $NavigateActionCopyWith<$Res> get actionForPopUntil;
}

/// @nodoc
class _$NavigateToAddressOnMapCopyWithImpl<$Res>
    extends _$NavigateActionCopyWithImpl<$Res>
    implements $NavigateToAddressOnMapCopyWith<$Res> {
  _$NavigateToAddressOnMapCopyWithImpl(NavigateToAddressOnMap _value,
      $Res Function(NavigateToAddressOnMap) _then)
      : super(_value, (v) => _then(v as NavigateToAddressOnMap));

  @override
  NavigateToAddressOnMap get _value => super._value as NavigateToAddressOnMap;

  @override
  $Res call({
    Object? navigateType = freezed,
    Object? myAddresses = freezed,
    Object? addressesBloc = freezed,
    Object? actionForPopUntil = freezed,
  }) {
    return _then(NavigateToAddressOnMap(
      navigateType == freezed
          ? _value.navigateType
          : navigateType // ignore: cast_nullable_to_non_nullable
              as NavigateType,
      myAddresses: myAddresses == freezed
          ? _value.myAddresses
          : myAddresses // ignore: cast_nullable_to_non_nullable
              as List<AddressItemEntity>?,
      addressesBloc: addressesBloc == freezed
          ? _value.addressesBloc
          : addressesBloc // ignore: cast_nullable_to_non_nullable
              as AddressesBloc?,
      actionForPopUntil: actionForPopUntil == freezed
          ? _value.actionForPopUntil
          : actionForPopUntil // ignore: cast_nullable_to_non_nullable
              as NavigateAction,
    ));
  }

  @override
  $NavigateActionCopyWith<$Res> get actionForPopUntil {
    return $NavigateActionCopyWith<$Res>(_value.actionForPopUntil, (value) {
      return _then(_value.copyWith(actionForPopUntil: value));
    });
  }
}

/// @nodoc

class _$NavigateToAddressOnMap implements NavigateToAddressOnMap {
  _$NavigateToAddressOnMap(this.navigateType,
      {this.myAddresses, this.addressesBloc, required this.actionForPopUntil});

  @override
  final NavigateType navigateType;
  @override
  final List<AddressItemEntity>? myAddresses;
  @override
  final AddressesBloc? addressesBloc;
  @override
  final NavigateAction actionForPopUntil;

  @override
  String toString() {
    return 'NavigateAction.navigateToAddressOnMap(navigateType: $navigateType, myAddresses: $myAddresses, addressesBloc: $addressesBloc, actionForPopUntil: $actionForPopUntil)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigateToAddressOnMap &&
            (identical(other.navigateType, navigateType) ||
                const DeepCollectionEquality()
                    .equals(other.navigateType, navigateType)) &&
            (identical(other.myAddresses, myAddresses) ||
                const DeepCollectionEquality()
                    .equals(other.myAddresses, myAddresses)) &&
            (identical(other.addressesBloc, addressesBloc) ||
                const DeepCollectionEquality()
                    .equals(other.addressesBloc, addressesBloc)) &&
            (identical(other.actionForPopUntil, actionForPopUntil) ||
                const DeepCollectionEquality()
                    .equals(other.actionForPopUntil, actionForPopUntil)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(navigateType) ^
      const DeepCollectionEquality().hash(myAddresses) ^
      const DeepCollectionEquality().hash(addressesBloc) ^
      const DeepCollectionEquality().hash(actionForPopUntil);

  @JsonKey(ignore: true)
  @override
  $NavigateToAddressOnMapCopyWith<NavigateToAddressOnMap> get copyWith =>
      _$NavigateToAddressOnMapCopyWithImpl<NavigateToAddressOnMap>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic result) navigateBack,
    required TResult Function(NavigateType navigateType)
        navigateToEnterPhoneNumber,
    required TResult Function(
            NavigateType navigateType, EnterCodeType enterCodeType)
        navigateToEnterPinCode,
    required TResult Function(
            NavigateType navigateType, BiometricType biometricType)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateType navigateType)
        navigateToConfirmAccount,
    required TResult Function(NavigateType navigateType, String phoneNumber)
        navigateToConfirmPhone,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToConfirmationSteps,
    required TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)
        navigateToStories,
    required TResult Function(NavigateType navigateType)
        navigateToNotifications,
    required TResult Function(NavigateType navigateType) navigateToNavigation,
    required TResult Function(NavigateType navigateType, String url)
        navigateToWebView,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToEditProfile,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToPassport,
    required TResult Function(NavigateType navigateType, int categoryId)
        navigateToCompilations,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateType navigateType, String productId)
        navigateToProduct,
    required TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)
        navigateToProductImages,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToAddresses,
    required TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToEditAddress,
    required TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToAddressOnMap,
    required TResult Function(NavigateType navigateType) navigateToIntroduction,
    required TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)
        showSelectAddressBottomSheet,
  }) {
    return navigateToAddressOnMap(
        navigateType, myAddresses, addressesBloc, actionForPopUntil);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic result)? navigateBack,
    TResult Function(NavigateType navigateType)? navigateToEnterPhoneNumber,
    TResult Function(NavigateType navigateType, EnterCodeType enterCodeType)?
        navigateToEnterPinCode,
    TResult Function(NavigateType navigateType, BiometricType biometricType)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateType navigateType)? navigateToConfirmAccount,
    TResult Function(NavigateType navigateType, String phoneNumber)?
        navigateToConfirmPhone,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToConfirmationSteps,
    TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)?
        navigateToStories,
    TResult Function(NavigateType navigateType)? navigateToNotifications,
    TResult Function(NavigateType navigateType)? navigateToNavigation,
    TResult Function(NavigateType navigateType, String url)? navigateToWebView,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToEditProfile,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToPassport,
    TResult Function(NavigateType navigateType, int categoryId)?
        navigateToCompilations,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateType navigateType, String productId)?
        navigateToProduct,
    TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)?
        navigateToProductImages,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToAddresses,
    TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToEditAddress,
    TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToAddressOnMap,
    TResult Function(NavigateType navigateType)? navigateToIntroduction,
    TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateToAddressOnMap != null) {
      return navigateToAddressOnMap(
          navigateType, myAddresses, addressesBloc, actionForPopUntil);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateBack value) navigateBack,
    required TResult Function(NavigateToEnterPhoneNumber value)
        navigateToEnterPhoneNumber,
    required TResult Function(NavigateToEnterPinCode value)
        navigateToEnterPinCode,
    required TResult Function(NavigateToEnableBiometricAuth value)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateToConfirmAccount value)
        navigateToConfirmAccount,
    required TResult Function(NavigateToConfirmPhone value)
        navigateToConfirmPhone,
    required TResult Function(NavigateToConfirmationSteps value)
        navigateToConfirmationSteps,
    required TResult Function(NavigateToStories value) navigateToStories,
    required TResult Function(NavigateToNotifications value)
        navigateToNotifications,
    required TResult Function(NavigateToNavigation value) navigateToNavigation,
    required TResult Function(NavigateToWebView value) navigateToWebView,
    required TResult Function(NavigateToEditProfile value)
        navigateToEditProfile,
    required TResult Function(NavigateToPassport value) navigateToPassport,
    required TResult Function(NavigateToCompilations value)
        navigateToCompilations,
    required TResult Function(NavigateToSelectPhotoArea value)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateToPhotoTakenFinish value)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateToProduct value) navigateToProduct,
    required TResult Function(NavigateToProductImages value)
        navigateToProductImages,
    required TResult Function(NavigateToAddresses value) navigateToAddresses,
    required TResult Function(NavigateToEditAddress value)
        navigateToEditAddress,
    required TResult Function(NavigateToAddressOnMap value)
        navigateToAddressOnMap,
    required TResult Function(NavigateToIntroduction value)
        navigateToIntroduction,
    required TResult Function(ShowSelectAddressBottomSheet value)
        showSelectAddressBottomSheet,
  }) {
    return navigateToAddressOnMap(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateBack value)? navigateBack,
    TResult Function(NavigateToEnterPhoneNumber value)?
        navigateToEnterPhoneNumber,
    TResult Function(NavigateToEnterPinCode value)? navigateToEnterPinCode,
    TResult Function(NavigateToEnableBiometricAuth value)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateToConfirmAccount value)? navigateToConfirmAccount,
    TResult Function(NavigateToConfirmPhone value)? navigateToConfirmPhone,
    TResult Function(NavigateToConfirmationSteps value)?
        navigateToConfirmationSteps,
    TResult Function(NavigateToStories value)? navigateToStories,
    TResult Function(NavigateToNotifications value)? navigateToNotifications,
    TResult Function(NavigateToNavigation value)? navigateToNavigation,
    TResult Function(NavigateToWebView value)? navigateToWebView,
    TResult Function(NavigateToEditProfile value)? navigateToEditProfile,
    TResult Function(NavigateToPassport value)? navigateToPassport,
    TResult Function(NavigateToCompilations value)? navigateToCompilations,
    TResult Function(NavigateToSelectPhotoArea value)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateToPhotoTakenFinish value)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateToProduct value)? navigateToProduct,
    TResult Function(NavigateToProductImages value)? navigateToProductImages,
    TResult Function(NavigateToAddresses value)? navigateToAddresses,
    TResult Function(NavigateToEditAddress value)? navigateToEditAddress,
    TResult Function(NavigateToAddressOnMap value)? navigateToAddressOnMap,
    TResult Function(NavigateToIntroduction value)? navigateToIntroduction,
    TResult Function(ShowSelectAddressBottomSheet value)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateToAddressOnMap != null) {
      return navigateToAddressOnMap(this);
    }
    return orElse();
  }
}

abstract class NavigateToAddressOnMap implements NavigateAction {
  factory NavigateToAddressOnMap(NavigateType navigateType,
      {List<AddressItemEntity>? myAddresses,
      AddressesBloc? addressesBloc,
      required NavigateAction actionForPopUntil}) = _$NavigateToAddressOnMap;

  NavigateType get navigateType => throw _privateConstructorUsedError;
  List<AddressItemEntity>? get myAddresses =>
      throw _privateConstructorUsedError;
  AddressesBloc? get addressesBloc => throw _privateConstructorUsedError;
  NavigateAction get actionForPopUntil => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavigateToAddressOnMapCopyWith<NavigateToAddressOnMap> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateToIntroductionCopyWith<$Res> {
  factory $NavigateToIntroductionCopyWith(NavigateToIntroduction value,
          $Res Function(NavigateToIntroduction) then) =
      _$NavigateToIntroductionCopyWithImpl<$Res>;
  $Res call({NavigateType navigateType});
}

/// @nodoc
class _$NavigateToIntroductionCopyWithImpl<$Res>
    extends _$NavigateActionCopyWithImpl<$Res>
    implements $NavigateToIntroductionCopyWith<$Res> {
  _$NavigateToIntroductionCopyWithImpl(NavigateToIntroduction _value,
      $Res Function(NavigateToIntroduction) _then)
      : super(_value, (v) => _then(v as NavigateToIntroduction));

  @override
  NavigateToIntroduction get _value => super._value as NavigateToIntroduction;

  @override
  $Res call({
    Object? navigateType = freezed,
  }) {
    return _then(NavigateToIntroduction(
      navigateType == freezed
          ? _value.navigateType
          : navigateType // ignore: cast_nullable_to_non_nullable
              as NavigateType,
    ));
  }
}

/// @nodoc

class _$NavigateToIntroduction implements NavigateToIntroduction {
  _$NavigateToIntroduction(this.navigateType);

  @override
  final NavigateType navigateType;

  @override
  String toString() {
    return 'NavigateAction.navigateToIntroduction(navigateType: $navigateType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigateToIntroduction &&
            (identical(other.navigateType, navigateType) ||
                const DeepCollectionEquality()
                    .equals(other.navigateType, navigateType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(navigateType);

  @JsonKey(ignore: true)
  @override
  $NavigateToIntroductionCopyWith<NavigateToIntroduction> get copyWith =>
      _$NavigateToIntroductionCopyWithImpl<NavigateToIntroduction>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic result) navigateBack,
    required TResult Function(NavigateType navigateType)
        navigateToEnterPhoneNumber,
    required TResult Function(
            NavigateType navigateType, EnterCodeType enterCodeType)
        navigateToEnterPinCode,
    required TResult Function(
            NavigateType navigateType, BiometricType biometricType)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateType navigateType)
        navigateToConfirmAccount,
    required TResult Function(NavigateType navigateType, String phoneNumber)
        navigateToConfirmPhone,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToConfirmationSteps,
    required TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)
        navigateToStories,
    required TResult Function(NavigateType navigateType)
        navigateToNotifications,
    required TResult Function(NavigateType navigateType) navigateToNavigation,
    required TResult Function(NavigateType navigateType, String url)
        navigateToWebView,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToEditProfile,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToPassport,
    required TResult Function(NavigateType navigateType, int categoryId)
        navigateToCompilations,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateType navigateType, String productId)
        navigateToProduct,
    required TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)
        navigateToProductImages,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToAddresses,
    required TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToEditAddress,
    required TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToAddressOnMap,
    required TResult Function(NavigateType navigateType) navigateToIntroduction,
    required TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)
        showSelectAddressBottomSheet,
  }) {
    return navigateToIntroduction(navigateType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic result)? navigateBack,
    TResult Function(NavigateType navigateType)? navigateToEnterPhoneNumber,
    TResult Function(NavigateType navigateType, EnterCodeType enterCodeType)?
        navigateToEnterPinCode,
    TResult Function(NavigateType navigateType, BiometricType biometricType)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateType navigateType)? navigateToConfirmAccount,
    TResult Function(NavigateType navigateType, String phoneNumber)?
        navigateToConfirmPhone,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToConfirmationSteps,
    TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)?
        navigateToStories,
    TResult Function(NavigateType navigateType)? navigateToNotifications,
    TResult Function(NavigateType navigateType)? navigateToNavigation,
    TResult Function(NavigateType navigateType, String url)? navigateToWebView,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToEditProfile,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToPassport,
    TResult Function(NavigateType navigateType, int categoryId)?
        navigateToCompilations,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateType navigateType, String productId)?
        navigateToProduct,
    TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)?
        navigateToProductImages,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToAddresses,
    TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToEditAddress,
    TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToAddressOnMap,
    TResult Function(NavigateType navigateType)? navigateToIntroduction,
    TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateToIntroduction != null) {
      return navigateToIntroduction(navigateType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateBack value) navigateBack,
    required TResult Function(NavigateToEnterPhoneNumber value)
        navigateToEnterPhoneNumber,
    required TResult Function(NavigateToEnterPinCode value)
        navigateToEnterPinCode,
    required TResult Function(NavigateToEnableBiometricAuth value)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateToConfirmAccount value)
        navigateToConfirmAccount,
    required TResult Function(NavigateToConfirmPhone value)
        navigateToConfirmPhone,
    required TResult Function(NavigateToConfirmationSteps value)
        navigateToConfirmationSteps,
    required TResult Function(NavigateToStories value) navigateToStories,
    required TResult Function(NavigateToNotifications value)
        navigateToNotifications,
    required TResult Function(NavigateToNavigation value) navigateToNavigation,
    required TResult Function(NavigateToWebView value) navigateToWebView,
    required TResult Function(NavigateToEditProfile value)
        navigateToEditProfile,
    required TResult Function(NavigateToPassport value) navigateToPassport,
    required TResult Function(NavigateToCompilations value)
        navigateToCompilations,
    required TResult Function(NavigateToSelectPhotoArea value)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateToPhotoTakenFinish value)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateToProduct value) navigateToProduct,
    required TResult Function(NavigateToProductImages value)
        navigateToProductImages,
    required TResult Function(NavigateToAddresses value) navigateToAddresses,
    required TResult Function(NavigateToEditAddress value)
        navigateToEditAddress,
    required TResult Function(NavigateToAddressOnMap value)
        navigateToAddressOnMap,
    required TResult Function(NavigateToIntroduction value)
        navigateToIntroduction,
    required TResult Function(ShowSelectAddressBottomSheet value)
        showSelectAddressBottomSheet,
  }) {
    return navigateToIntroduction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateBack value)? navigateBack,
    TResult Function(NavigateToEnterPhoneNumber value)?
        navigateToEnterPhoneNumber,
    TResult Function(NavigateToEnterPinCode value)? navigateToEnterPinCode,
    TResult Function(NavigateToEnableBiometricAuth value)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateToConfirmAccount value)? navigateToConfirmAccount,
    TResult Function(NavigateToConfirmPhone value)? navigateToConfirmPhone,
    TResult Function(NavigateToConfirmationSteps value)?
        navigateToConfirmationSteps,
    TResult Function(NavigateToStories value)? navigateToStories,
    TResult Function(NavigateToNotifications value)? navigateToNotifications,
    TResult Function(NavigateToNavigation value)? navigateToNavigation,
    TResult Function(NavigateToWebView value)? navigateToWebView,
    TResult Function(NavigateToEditProfile value)? navigateToEditProfile,
    TResult Function(NavigateToPassport value)? navigateToPassport,
    TResult Function(NavigateToCompilations value)? navigateToCompilations,
    TResult Function(NavigateToSelectPhotoArea value)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateToPhotoTakenFinish value)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateToProduct value)? navigateToProduct,
    TResult Function(NavigateToProductImages value)? navigateToProductImages,
    TResult Function(NavigateToAddresses value)? navigateToAddresses,
    TResult Function(NavigateToEditAddress value)? navigateToEditAddress,
    TResult Function(NavigateToAddressOnMap value)? navigateToAddressOnMap,
    TResult Function(NavigateToIntroduction value)? navigateToIntroduction,
    TResult Function(ShowSelectAddressBottomSheet value)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (navigateToIntroduction != null) {
      return navigateToIntroduction(this);
    }
    return orElse();
  }
}

abstract class NavigateToIntroduction implements NavigateAction {
  factory NavigateToIntroduction(NavigateType navigateType) =
      _$NavigateToIntroduction;

  NavigateType get navigateType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavigateToIntroductionCopyWith<NavigateToIntroduction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowSelectAddressBottomSheetCopyWith<$Res> {
  factory $ShowSelectAddressBottomSheetCopyWith(
          ShowSelectAddressBottomSheet value,
          $Res Function(ShowSelectAddressBottomSheet) then) =
      _$ShowSelectAddressBottomSheetCopyWithImpl<$Res>;
  $Res call({NavigateType navigateType, List<AddressItemEntity> addresses});
}

/// @nodoc
class _$ShowSelectAddressBottomSheetCopyWithImpl<$Res>
    extends _$NavigateActionCopyWithImpl<$Res>
    implements $ShowSelectAddressBottomSheetCopyWith<$Res> {
  _$ShowSelectAddressBottomSheetCopyWithImpl(
      ShowSelectAddressBottomSheet _value,
      $Res Function(ShowSelectAddressBottomSheet) _then)
      : super(_value, (v) => _then(v as ShowSelectAddressBottomSheet));

  @override
  ShowSelectAddressBottomSheet get _value =>
      super._value as ShowSelectAddressBottomSheet;

  @override
  $Res call({
    Object? navigateType = freezed,
    Object? addresses = freezed,
  }) {
    return _then(ShowSelectAddressBottomSheet(
      navigateType == freezed
          ? _value.navigateType
          : navigateType // ignore: cast_nullable_to_non_nullable
              as NavigateType,
      addresses: addresses == freezed
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<AddressItemEntity>,
    ));
  }
}

/// @nodoc

class _$ShowSelectAddressBottomSheet implements ShowSelectAddressBottomSheet {
  _$ShowSelectAddressBottomSheet(this.navigateType, {required this.addresses});

  @override
  final NavigateType navigateType;
  @override
  final List<AddressItemEntity> addresses;

  @override
  String toString() {
    return 'NavigateAction.showSelectAddressBottomSheet(navigateType: $navigateType, addresses: $addresses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShowSelectAddressBottomSheet &&
            (identical(other.navigateType, navigateType) ||
                const DeepCollectionEquality()
                    .equals(other.navigateType, navigateType)) &&
            (identical(other.addresses, addresses) ||
                const DeepCollectionEquality()
                    .equals(other.addresses, addresses)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(navigateType) ^
      const DeepCollectionEquality().hash(addresses);

  @JsonKey(ignore: true)
  @override
  $ShowSelectAddressBottomSheetCopyWith<ShowSelectAddressBottomSheet>
      get copyWith => _$ShowSelectAddressBottomSheetCopyWithImpl<
          ShowSelectAddressBottomSheet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic result) navigateBack,
    required TResult Function(NavigateType navigateType)
        navigateToEnterPhoneNumber,
    required TResult Function(
            NavigateType navigateType, EnterCodeType enterCodeType)
        navigateToEnterPinCode,
    required TResult Function(
            NavigateType navigateType, BiometricType biometricType)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateType navigateType)
        navigateToConfirmAccount,
    required TResult Function(NavigateType navigateType, String phoneNumber)
        navigateToConfirmPhone,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToConfirmationSteps,
    required TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)
        navigateToStories,
    required TResult Function(NavigateType navigateType)
        navigateToNotifications,
    required TResult Function(NavigateType navigateType) navigateToNavigation,
    required TResult Function(NavigateType navigateType, String url)
        navigateToWebView,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToEditProfile,
    required TResult Function(NavigateType navigateType, ProfileEntity profile)
        navigateToPassport,
    required TResult Function(NavigateType navigateType, int categoryId)
        navigateToCompilations,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateType navigateType, String productId)
        navigateToProduct,
    required TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)
        navigateToProductImages,
    required TResult Function(NavigateType navigateType, ProfileEntity? profile)
        navigateToAddresses,
    required TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToEditAddress,
    required TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)
        navigateToAddressOnMap,
    required TResult Function(NavigateType navigateType) navigateToIntroduction,
    required TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)
        showSelectAddressBottomSheet,
  }) {
    return showSelectAddressBottomSheet(navigateType, addresses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic result)? navigateBack,
    TResult Function(NavigateType navigateType)? navigateToEnterPhoneNumber,
    TResult Function(NavigateType navigateType, EnterCodeType enterCodeType)?
        navigateToEnterPinCode,
    TResult Function(NavigateType navigateType, BiometricType biometricType)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateType navigateType)? navigateToConfirmAccount,
    TResult Function(NavigateType navigateType, String phoneNumber)?
        navigateToConfirmPhone,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToConfirmationSteps,
    TResult Function(NavigateType navigateType, int indexCurrentStory,
            List<StoryEntity> stories)?
        navigateToStories,
    TResult Function(NavigateType navigateType)? navigateToNotifications,
    TResult Function(NavigateType navigateType)? navigateToNavigation,
    TResult Function(NavigateType navigateType, String url)? navigateToWebView,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToEditProfile,
    TResult Function(NavigateType navigateType, ProfileEntity profile)?
        navigateToPassport,
    TResult Function(NavigateType navigateType, int categoryId)?
        navigateToCompilations,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateType navigateType, File image,
            EditProfileBloc editProfileBloc)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateType navigateType, String productId)?
        navigateToProduct,
    TResult Function(NavigateType navigateType, int currentImageIndex,
            List<String> images)?
        navigateToProductImages,
    TResult Function(NavigateType navigateType, ProfileEntity? profile)?
        navigateToAddresses,
    TResult Function(
            NavigateType navigateType,
            AddressItemEntity? addressItemEntity,
            bool isNewAddress,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToEditAddress,
    TResult Function(
            NavigateType navigateType,
            List<AddressItemEntity>? myAddresses,
            AddressesBloc? addressesBloc,
            NavigateAction actionForPopUntil)?
        navigateToAddressOnMap,
    TResult Function(NavigateType navigateType)? navigateToIntroduction,
    TResult Function(
            NavigateType navigateType, List<AddressItemEntity> addresses)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (showSelectAddressBottomSheet != null) {
      return showSelectAddressBottomSheet(navigateType, addresses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateBack value) navigateBack,
    required TResult Function(NavigateToEnterPhoneNumber value)
        navigateToEnterPhoneNumber,
    required TResult Function(NavigateToEnterPinCode value)
        navigateToEnterPinCode,
    required TResult Function(NavigateToEnableBiometricAuth value)
        navigateToEnableBiometricAuth,
    required TResult Function(NavigateToConfirmAccount value)
        navigateToConfirmAccount,
    required TResult Function(NavigateToConfirmPhone value)
        navigateToConfirmPhone,
    required TResult Function(NavigateToConfirmationSteps value)
        navigateToConfirmationSteps,
    required TResult Function(NavigateToStories value) navigateToStories,
    required TResult Function(NavigateToNotifications value)
        navigateToNotifications,
    required TResult Function(NavigateToNavigation value) navigateToNavigation,
    required TResult Function(NavigateToWebView value) navigateToWebView,
    required TResult Function(NavigateToEditProfile value)
        navigateToEditProfile,
    required TResult Function(NavigateToPassport value) navigateToPassport,
    required TResult Function(NavigateToCompilations value)
        navigateToCompilations,
    required TResult Function(NavigateToSelectPhotoArea value)
        navigateToSelectPhotoArea,
    required TResult Function(NavigateToPhotoTakenFinish value)
        navigateToPhotoTakenFinish,
    required TResult Function(NavigateToProduct value) navigateToProduct,
    required TResult Function(NavigateToProductImages value)
        navigateToProductImages,
    required TResult Function(NavigateToAddresses value) navigateToAddresses,
    required TResult Function(NavigateToEditAddress value)
        navigateToEditAddress,
    required TResult Function(NavigateToAddressOnMap value)
        navigateToAddressOnMap,
    required TResult Function(NavigateToIntroduction value)
        navigateToIntroduction,
    required TResult Function(ShowSelectAddressBottomSheet value)
        showSelectAddressBottomSheet,
  }) {
    return showSelectAddressBottomSheet(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateBack value)? navigateBack,
    TResult Function(NavigateToEnterPhoneNumber value)?
        navigateToEnterPhoneNumber,
    TResult Function(NavigateToEnterPinCode value)? navigateToEnterPinCode,
    TResult Function(NavigateToEnableBiometricAuth value)?
        navigateToEnableBiometricAuth,
    TResult Function(NavigateToConfirmAccount value)? navigateToConfirmAccount,
    TResult Function(NavigateToConfirmPhone value)? navigateToConfirmPhone,
    TResult Function(NavigateToConfirmationSteps value)?
        navigateToConfirmationSteps,
    TResult Function(NavigateToStories value)? navigateToStories,
    TResult Function(NavigateToNotifications value)? navigateToNotifications,
    TResult Function(NavigateToNavigation value)? navigateToNavigation,
    TResult Function(NavigateToWebView value)? navigateToWebView,
    TResult Function(NavigateToEditProfile value)? navigateToEditProfile,
    TResult Function(NavigateToPassport value)? navigateToPassport,
    TResult Function(NavigateToCompilations value)? navigateToCompilations,
    TResult Function(NavigateToSelectPhotoArea value)?
        navigateToSelectPhotoArea,
    TResult Function(NavigateToPhotoTakenFinish value)?
        navigateToPhotoTakenFinish,
    TResult Function(NavigateToProduct value)? navigateToProduct,
    TResult Function(NavigateToProductImages value)? navigateToProductImages,
    TResult Function(NavigateToAddresses value)? navigateToAddresses,
    TResult Function(NavigateToEditAddress value)? navigateToEditAddress,
    TResult Function(NavigateToAddressOnMap value)? navigateToAddressOnMap,
    TResult Function(NavigateToIntroduction value)? navigateToIntroduction,
    TResult Function(ShowSelectAddressBottomSheet value)?
        showSelectAddressBottomSheet,
    required TResult orElse(),
  }) {
    if (showSelectAddressBottomSheet != null) {
      return showSelectAddressBottomSheet(this);
    }
    return orElse();
  }
}

abstract class ShowSelectAddressBottomSheet implements NavigateAction {
  factory ShowSelectAddressBottomSheet(NavigateType navigateType,
          {required List<AddressItemEntity> addresses}) =
      _$ShowSelectAddressBottomSheet;

  NavigateType get navigateType => throw _privateConstructorUsedError;
  List<AddressItemEntity> get addresses => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShowSelectAddressBottomSheetCopyWith<ShowSelectAddressBottomSheet>
      get copyWith => throw _privateConstructorUsedError;
}
