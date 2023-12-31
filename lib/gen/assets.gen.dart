/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/human1.jpg
  AssetGenImage get human1 => const AssetGenImage('assets/images/human1.jpg');

  /// File path: assets/images/human2.jpg
  AssetGenImage get human2 => const AssetGenImage('assets/images/human2.jpg');

  /// File path: assets/images/human3.jpg
  AssetGenImage get human3 => const AssetGenImage('assets/images/human3.jpg');

  /// File path: assets/images/human4.jpg
  AssetGenImage get human4 => const AssetGenImage('assets/images/human4.jpg');

  /// File path: assets/images/human5.jpg
  AssetGenImage get human5 => const AssetGenImage('assets/images/human5.jpg');

  /// File path: assets/images/human6.jpg
  AssetGenImage get human6 => const AssetGenImage('assets/images/human6.jpg');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/profile_image.jpg
  AssetGenImage get profileImage =>
      const AssetGenImage('assets/images/profile_image.jpg');

  /// File path: assets/images/splash_icon.png
  AssetGenImage get splashIcon =>
      const AssetGenImage('assets/images/splash_icon.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        human1,
        human2,
        human3,
        human4,
        human5,
        human6,
        logo,
        profileImage,
        splashIcon
      ];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/logo.svg
  SvgGenImage get logo => const SvgGenImage('assets/svg/logo.svg');

  /// File path: assets/svg/logo_2.svg
  SvgGenImage get logo2 => const SvgGenImage('assets/svg/logo_2.svg');

  /// File path: assets/svg/logo_3.svg
  SvgGenImage get logo3 => const SvgGenImage('assets/svg/logo_3.svg');

  /// File path: assets/svg/logo_text.svg
  SvgGenImage get logoText => const SvgGenImage('assets/svg/logo_text.svg');

  /// List of all assets
  List<SvgGenImage> get values => [logo, logo2, logo3, logoText];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
