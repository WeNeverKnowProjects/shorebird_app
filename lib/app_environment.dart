abstract class BaseEnvironment {
  String get url;
}

class DevEnvironment extends BaseEnvironment {
  @override
  // TODO: implement url
  String get url => "https://development.api.com";
}

class StagingEnvironment extends BaseEnvironment {
  @override
  // TODO: implement url
  String get url => "https://staging.api.com";
}

class ProdEnvironment extends BaseEnvironment {
  @override
  // TODO: implement url
  String get url => "https://production.api.com";
}

class AppEnvironment {
  static BaseEnvironment baseEnvironment = DevEnvironment();

  static String get url => baseEnvironment.url;

  static getConfig(String env) {
    switch (env) {
      case "prod":
        baseEnvironment = ProdEnvironment();
        break;
      case "staging":
        baseEnvironment = StagingEnvironment();
        break;
      case "dev":
      default:
        baseEnvironment = DevEnvironment();
        break;
    }
  }
}
