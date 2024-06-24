import 'package:puzzle/core/assets_gen/assets.gen.dart';

enum EnvFlavor { dev, staging, production }

// extension
extension EnvFlavorExtension on EnvFlavor {
  String get configFile {
    switch (this) {
      case EnvFlavor.dev:
        return Assets.env.envDev;
      case EnvFlavor.staging:
        return Assets.env.envStaging;
      case EnvFlavor.production:
        return Assets.env.envProduction;
      default:
        return Assets.env.envDev;
    }
  }
}
