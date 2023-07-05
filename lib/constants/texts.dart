import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';

//Made the texts separate to make it easy to apply multilingual feature.

class TextConst {
  static List<String> langList = [translate('language.en')];
  static String title = translate('title');
  static String search = translate('search');
  static String home = translate('homepage.home');
  static String welcome = translate('homepage.welcome');
  static String description = translate('homepage.description');
  static String help = translate('homepage.help');
  static String settings = translate('homepage.settings');
  static String option = translate('homepage.option');
  static String about = translate('homepage.about');
  static String save = translate('settings.save');
  static String connect = translate('settings.connect');
  static String disconnect = translate('settings.disconnect');
  static String connected = translate('settings.connected');
  static String online = translate('settings.online');
  static String offline = translate('settings.offline');
  static String disconnected = translate('settings.disconnected');
  static String cleanLogo = translate('settings.clean_logo');
  static String showLogo = translate('settings.show_logo');
  static String cleanKML = translate('settings.clean_kml');
  static String setRefresh = translate('settings.set_refresh');
  static String resetRefresh = translate('settings.reset_refresh');
  static String relaunchLG = translate('settings.relaunch_lg');
  static String rebootLG = translate('settings.reboot_lg');
  static String shutdownLG = translate('settings.shutdown_lg');
  static String download = translate('settings.download');
  static String deleteCSV = translate('settings.delete_csv');
  static String deleteKML = translate('settings.delete_kml');
  static String language = translate('settings.language');
  static String theme = translate('settings.theme');
  static String goBack = translate('city_page.go_back');
  static String weather = translate('city_page.weather');
  static String contentUnavailable = translate('dashboard.downloadable_content_unavailable');
  static String date = translate('dashboard.weather.date');
  static String cloud = translate('dashboard.weather.cloud');
  static String latitude = translate('dashboard.about.latitude');
  static String longitude = translate('dashboard.about.longitude');
  static String country = translate('dashboard.about.country');
  static String aboutDescription = translate('dashboard.about.description');
  static String availableOptions = translate('dashboard.about.available_options');
  static String environment = translate('dashboard.environment.environment');
  static String waterConsumptionTitle = translate('city_data.new_york.environment.water_consumption_title');
  static String population = translate('city_data.new_york.environment.population');
  static String waterConsumption = translate('city_data.new_york.environment.water_consumption');
  static String squirrelTitle = translate('city_data.new_york.environment.squirrel_data');
  static String squirrelSubTitle = translate('city_data.new_york.environment.squirrel');
  static String aboutPageDescription = translate('homepage.about_page.description');
  static String aboutPageMadeBy = translate('homepage.about_page.made_by');
  static String aboutPagePrayag = translate('homepage.about_page.prayag');
  static String aboutPageOrganisation = translate('homepage.about_page.organization');
  static String aboutPageLiquidGalaxy = translate('homepage.about_page.liquid_galaxy');
  static String aboutPageOrgAdmin = translate('homepage.about_page.organization_admin');
  static String aboutPageAndrew = translate('homepage.about_page.andrew');
  static String aboutPageMentor = translate('homepage.about_page.mentor');
  static String aboutPageMerul = translate('homepage.about_page.merul');
  static String aboutPageGithub = translate('homepage.about_page.project_github');
  static String aboutPageLicense = translate('homepage.about_page.license');
  static String aboutPageLGSite = translate('homepage.about_page.lg_site');
  static String aboutPageLinkedin = translate('homepage.about_page.linkedin');
  static String total = translate('dashboard.total');
}

const fontFamily = 'Inter';
const textStyleNormal = TextStyle(
  fontFamily: fontFamily,
  fontStyle: FontStyle.normal
);
const textStyleSemiBold = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500
);
const textStyleBold = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600
);
const textStyleExtraBold = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700
);
const textStyleNormalWhite = TextStyle(
    color: Colors.white,
    fontFamily: fontFamily,
    fontStyle: FontStyle.normal
);
const textStyleSemiBoldWhite = TextStyle(
    color: Colors.white,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500
);
const textStyleBoldWhite = TextStyle(
    color: Colors.white,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600
);
const textStyleExtraBoldWhite = TextStyle(
    color: Colors.white,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700
);