// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Home`
  String get tab_home {
    return Intl.message('Home', name: 'tab_home', desc: '', args: []);
  }

  /// `Explore`
  String get tab_explore {
    return Intl.message('Explore', name: 'tab_explore', desc: '', args: []);
  }

  /// `My List`
  String get tab_my_list {
    return Intl.message('My List', name: 'tab_my_list', desc: '', args: []);
  }

  /// `Download`
  String get tab_download {
    return Intl.message('Download', name: 'tab_download', desc: '', args: []);
  }

  /// `Profile`
  String get tab_profile {
    return Intl.message('Profile', name: 'tab_profile', desc: '', args: []);
  }

  /// `Edit Profile`
  String get label_menu_edit_profile {
    return Intl.message(
      'Edit Profile',
      name: 'label_menu_edit_profile',
      desc: '',
      args: [],
    );
  }

  /// `Notification`
  String get label_menu_notification {
    return Intl.message(
      'Notification',
      name: 'label_menu_notification',
      desc: '',
      args: [],
    );
  }

  /// `Download`
  String get label_menu_download {
    return Intl.message(
      'Download',
      name: 'label_menu_download',
      desc: '',
      args: [],
    );
  }

  /// `Security`
  String get label_menu_security {
    return Intl.message(
      'Security',
      name: 'label_menu_security',
      desc: '',
      args: [],
    );
  }

  /// `Help Center`
  String get label_menu_help_center {
    return Intl.message(
      'Help Center',
      name: 'label_menu_help_center',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get label_menu_privacy_policy {
    return Intl.message(
      'Privacy Policy',
      name: 'label_menu_privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// `Log out`
  String get label_menu_log_out {
    return Intl.message(
      'Log out',
      name: 'label_menu_log_out',
      desc: '',
      args: [],
    );
  }

  /// `Dark Mode`
  String get label_menu_dark_mode {
    return Intl.message(
      'Dark Mode',
      name: 'label_menu_dark_mode',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get label_menu_language {
    return Intl.message(
      'Language',
      name: 'label_menu_language',
      desc: '',
      args: [],
    );
  }

  /// `Top 10 Movies This Week`
  String get title_top_movie {
    return Intl.message(
      'Top 10 Movies This Week',
      name: 'title_top_movie',
      desc: '',
      args: [],
    );
  }

  /// `New Releases`
  String get title_new_release {
    return Intl.message(
      'New Releases',
      name: 'title_new_release',
      desc: '',
      args: [],
    );
  }

  /// `Subscribe to Premium`
  String get title_subscribe_to_premium {
    return Intl.message(
      'Subscribe to Premium',
      name: 'title_subscribe_to_premium',
      desc: '',
      args: [],
    );
  }

  /// `Enjoy watching Full-HD movies, without restrictions and without ads`
  String get content_subscribe_to_premium {
    return Intl.message(
      'Enjoy watching Full-HD movies, without restrictions and without ads',
      name: 'content_subscribe_to_premium',
      desc: '',
      args: [],
    );
  }

  /// `month`
  String get txt_month {
    return Intl.message('month', name: 'txt_month', desc: '', args: []);
  }

  /// `year`
  String get txt_year {
    return Intl.message('year', name: 'txt_year', desc: '', args: []);
  }

  /// `Payment`
  String get title_payment {
    return Intl.message('Payment', name: 'title_payment', desc: '', args: []);
  }

  /// `Watch all you want. Ad-free.`
  String get txt_watch_all_you_want_ad_free {
    return Intl.message(
      'Watch all you want. Ad-free.',
      name: 'txt_watch_all_you_want_ad_free',
      desc: '',
      args: [],
    );
  }

  /// `Allows streaming of 4K.`
  String get txt_allows_streaming_of4k {
    return Intl.message(
      'Allows streaming of 4K.',
      name: 'txt_allows_streaming_of4k',
      desc: '',
      args: [],
    );
  }

  /// `Video & Audio Quality is Better.`
  String get txt_video_audio_quality_is_better {
    return Intl.message(
      'Video & Audio Quality is Better.',
      name: 'txt_video_audio_quality_is_better',
      desc: '',
      args: [],
    );
  }

  /// `Join Premium!`
  String get txt_join_premium {
    return Intl.message(
      'Join Premium!',
      name: 'txt_join_premium',
      desc: '',
      args: [],
    );
  }

  /// `Enjoy watching Full-HD movies, without restrictions and without ads`
  String get txt_content_join_premium {
    return Intl.message(
      'Enjoy watching Full-HD movies, without restrictions and without ads',
      name: 'txt_content_join_premium',
      desc: '',
      args: [],
    );
  }

  /// `Select the payment method you want to use.`
  String get txt_select_payment_method {
    return Intl.message(
      'Select the payment method you want to use.',
      name: 'txt_select_payment_method',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get btn_continue {
    return Intl.message('Continue', name: 'btn_continue', desc: '', args: []);
  }

  /// `Review Summary`
  String get title_review_summary {
    return Intl.message(
      'Review Summary',
      name: 'title_review_summary',
      desc: '',
      args: [],
    );
  }

  /// `Amount`
  String get txt_amount {
    return Intl.message('Amount', name: 'txt_amount', desc: '', args: []);
  }

  /// `Tax`
  String get txt_tax {
    return Intl.message('Tax', name: 'txt_tax', desc: '', args: []);
  }

  /// `Total`
  String get txt_total {
    return Intl.message('Total', name: 'txt_total', desc: '', args: []);
  }

  /// `Change`
  String get btn_change {
    return Intl.message('Change', name: 'btn_change', desc: '', args: []);
  }

  /// `Congratulations!`
  String get txt_congratulations {
    return Intl.message(
      'Congratulations!',
      name: 'txt_congratulations',
      desc: '',
      args: [],
    );
  }

  /// `You have successfully subscribed {time} month premium. Enjoy the benefits!`
  String txt_content_congratulations(int time) {
    return Intl.message(
      'You have successfully subscribed $time month premium. Enjoy the benefits!',
      name: 'txt_content_congratulations',
      desc: '',
      args: [time],
    );
  }

  /// `Add New Card`
  String get title_add_new_card {
    return Intl.message(
      'Add New Card',
      name: 'title_add_new_card',
      desc: '',
      args: [],
    );
  }

  /// `Card Name`
  String get tf_card_name {
    return Intl.message('Card Name', name: 'tf_card_name', desc: '', args: []);
  }

  /// `Card Number`
  String get tf_card_number {
    return Intl.message(
      'Card Number',
      name: 'tf_card_number',
      desc: '',
      args: [],
    );
  }

  /// `Expiry Date`
  String get tf_expiry_date {
    return Intl.message(
      'Expiry Date',
      name: 'tf_expiry_date',
      desc: '',
      args: [],
    );
  }

  /// `CVV`
  String get tf_cvv {
    return Intl.message('CVV', name: 'tf_cvv', desc: '', args: []);
  }

  /// `Add`
  String get btn_add {
    return Intl.message('Add', name: 'btn_add', desc: '', args: []);
  }

  /// `Add New Card`
  String get btn_add_new_card {
    return Intl.message(
      'Add New Card',
      name: 'btn_add_new_card',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get title_language {
    return Intl.message('Language', name: 'title_language', desc: '', args: []);
  }

  /// `Edit Profile`
  String get title_edit_profile {
    return Intl.message(
      'Edit Profile',
      name: 'title_edit_profile',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get btn_update {
    return Intl.message('Update', name: 'btn_update', desc: '', args: []);
  }

  /// `Country`
  String get hint_text_country {
    return Intl.message(
      'Country',
      name: 'hint_text_country',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get hint_text_email {
    return Intl.message('Email', name: 'hint_text_email', desc: '', args: []);
  }

  /// `Full name`
  String get hint_full_name {
    return Intl.message(
      'Full name',
      name: 'hint_full_name',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get hint_text_gender {
    return Intl.message('Gender', name: 'hint_text_gender', desc: '', args: []);
  }

  /// `Phone number`
  String get hint_text_phone_number {
    return Intl.message(
      'Phone number',
      name: 'hint_text_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get male {
    return Intl.message('Male', name: 'male', desc: '', args: []);
  }

  /// `Female`
  String get female {
    return Intl.message('Female', name: 'female', desc: '', args: []);
  }

  /// `Gender`
  String get title_gender {
    return Intl.message('Gender', name: 'title_gender', desc: '', args: []);
  }

  /// `Search...`
  String get hint_text_search_country {
    return Intl.message(
      'Search...',
      name: 'hint_text_search_country',
      desc: '',
      args: [],
    );
  }

  /// `Countries`
  String get title_selected_country {
    return Intl.message(
      'Countries',
      name: 'title_selected_country',
      desc: '',
      args: [],
    );
  }

  /// `Top rate`
  String get title_top_rate {
    return Intl.message('Top rate', name: 'title_top_rate', desc: '', args: []);
  }

  /// `Trailer`
  String get tab_trailers {
    return Intl.message('Trailer', name: 'tab_trailers', desc: '', args: []);
  }

  /// `Similar movies`
  String get tab_similar_movies {
    return Intl.message(
      'Similar movies',
      name: 'tab_similar_movies',
      desc: '',
      args: [],
    );
  }

  /// `Comments`
  String get tab_comments {
    return Intl.message('Comments', name: 'tab_comments', desc: '', args: []);
  }

  /// `Download`
  String get btn_download {
    return Intl.message('Download', name: 'btn_download', desc: '', args: []);
  }

  /// `Play`
  String get btn_play {
    return Intl.message('Play', name: 'btn_play', desc: '', args: []);
  }

  /// `Now playing`
  String get title_now_playing {
    return Intl.message(
      'Now playing',
      name: 'title_now_playing',
      desc: '',
      args: [],
    );
  }

  /// `Upcoming`
  String get title_upcoming {
    return Intl.message('Upcoming', name: 'title_upcoming', desc: '', args: []);
  }

  /// `Popular`
  String get title_popular {
    return Intl.message('Popular', name: 'title_popular', desc: '', args: []);
  }

  /// `See all`
  String get see_all {
    return Intl.message('See all', name: 'see_all', desc: '', args: []);
  }

  /// `Sign up`
  String get btn_sign_up {
    return Intl.message('Sign up', name: 'btn_sign_up', desc: '', args: []);
  }

  /// `Don’t have an account? `
  String get txt_dont_have_an_account {
    return Intl.message(
      'Don’t have an account? ',
      name: 'txt_dont_have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `or continue with`
  String get txt_or_continue_with {
    return Intl.message(
      'or continue with',
      name: 'txt_or_continue_with',
      desc: '',
      args: [],
    );
  }

  /// `Forgot  password?`
  String get btn_forgot_fassword {
    return Intl.message(
      'Forgot  password?',
      name: 'btn_forgot_fassword',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get btn_login {
    return Intl.message('Login', name: 'btn_login', desc: '', args: []);
  }

  /// `Remember me`
  String get txt_remember_me {
    return Intl.message(
      'Remember me',
      name: 'txt_remember_me',
      desc: '',
      args: [],
    );
  }

  /// `Login to Your Account`
  String get txt_login_to_your_account {
    return Intl.message(
      'Login to Your Account',
      name: 'txt_login_to_your_account',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get hint_text_password {
    return Intl.message(
      'Password',
      name: 'hint_text_password',
      desc: '',
      args: [],
    );
  }

  /// `Create Your Account`
  String get title_create_your_account {
    return Intl.message(
      'Create Your Account',
      name: 'title_create_your_account',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account? `
  String get txt_already_have_an_account {
    return Intl.message(
      'Already have an account? ',
      name: 'txt_already_have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get txt_sign_in {
    return Intl.message('Sign in', name: 'txt_sign_in', desc: '', args: []);
  }

  /// `Email is invalid`
  String get err_email_invalid {
    return Intl.message(
      'Email is invalid',
      name: 'err_email_invalid',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain at least one uppercase letter, one lowercase letter, and one number.`
  String get err_invalid_password {
    return Intl.message(
      'Password must contain at least one uppercase letter, one lowercase letter, and one number.',
      name: 'err_invalid_password',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain at least 5 characters including uppercase, lowercase and numbers`
  String get err_invalid_pass {
    return Intl.message(
      'Password must contain at least 5 characters including uppercase, lowercase and numbers',
      name: 'err_invalid_pass',
      desc: '',
      args: [],
    );
  }

  /// `No user found for that email.`
  String get err_no_user_found_for_that_email {
    return Intl.message(
      'No user found for that email.',
      name: 'err_no_user_found_for_that_email',
      desc: '',
      args: [],
    );
  }

  /// `Please check again email or password.`
  String get err_check_again_email_password {
    return Intl.message(
      'Please check again email or password.',
      name: 'err_check_again_email_password',
      desc: '',
      args: [],
    );
  }

  /// `The password provided is too weak.`
  String get err_password_providedIs_too_weak {
    return Intl.message(
      'The password provided is too weak.',
      name: 'err_password_providedIs_too_weak',
      desc: '',
      args: [],
    );
  }

  /// `The account already exists for that email.`
  String get err_account_already_axists_for_that_email {
    return Intl.message(
      'The account already exists for that email.',
      name: 'err_account_already_axists_for_that_email',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred, please check again`
  String get err_an_error_occurred_please_check_again {
    return Intl.message(
      'An error occurred, please check again',
      name: 'err_an_error_occurred_please_check_again',
      desc: '',
      args: [],
    );
  }

  /// `Verify your email`
  String get title_verify_your_email {
    return Intl.message(
      'Verify your email',
      name: 'title_verify_your_email',
      desc: '',
      args: [],
    );
  }

  /// `A verification email has been sent to your address. Please check your inbox to complete the verification process`
  String get mgs_verify_email {
    return Intl.message(
      'A verification email has been sent to your address. Please check your inbox to complete the verification process',
      name: 'mgs_verify_email',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get btn_get_started {
    return Intl.message(
      'Get Started',
      name: 'btn_get_started',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to Movie`
  String get title_welcome_to_movie {
    return Intl.message(
      'Welcome to Movie',
      name: 'title_welcome_to_movie',
      desc: '',
      args: [],
    );
  }

  /// `The best movie streaming app of the century to make your days great!`
  String get des_wellcome_movie {
    return Intl.message(
      'The best movie streaming app of the century to make your days great!',
      name: 'des_wellcome_movie',
      desc: '',
      args: [],
    );
  }

  /// `My List`
  String get title_my_list {
    return Intl.message('My List', name: 'title_my_list', desc: '', args: []);
  }

  /// `All Categories`
  String get txt_all_categories {
    return Intl.message(
      'All Categories',
      name: 'txt_all_categories',
      desc: '',
      args: [],
    );
  }

  /// `Movie`
  String get txt_movie {
    return Intl.message('Movie', name: 'txt_movie', desc: '', args: []);
  }

  /// `TV Series`
  String get txt_tv_series {
    return Intl.message('TV Series', name: 'txt_tv_series', desc: '', args: []);
  }

  /// `K Drama`
  String get txt_k_drama {
    return Intl.message('K Drama', name: 'txt_k_drama', desc: '', args: []);
  }

  /// `Animal`
  String get txt_animal {
    return Intl.message('Animal', name: 'txt_animal', desc: '', args: []);
  }

  /// `Search`
  String get search {
    return Intl.message('Search', name: 'search', desc: '', args: []);
  }

  /// `Not Found`
  String get txt_not_found {
    return Intl.message('Not Found', name: 'txt_not_found', desc: '', args: []);
  }

  /// `Sorry, the keyword you entered could not be found. Try to check again or search with other keywords.`
  String get txt_des_not_found_movie {
    return Intl.message(
      'Sorry, the keyword you entered could not be found. Try to check again or search with other keywords.',
      name: 'txt_des_not_found_movie',
      desc: '',
      args: [],
    );
  }

  /// `Popularity`
  String get soft_popularity {
    return Intl.message(
      'Popularity',
      name: 'soft_popularity',
      desc: '',
      args: [],
    );
  }

  /// `Latest Release`
  String get soft_latest_release {
    return Intl.message(
      'Latest Release',
      name: 'soft_latest_release',
      desc: '',
      args: [],
    );
  }

  /// `Sort & Filter`
  String get title_sort_filter {
    return Intl.message(
      'Sort & Filter',
      name: 'title_sort_filter',
      desc: '',
      args: [],
    );
  }

  /// `Categories`
  String get txt_filter_categories {
    return Intl.message(
      'Categories',
      name: 'txt_filter_categories',
      desc: '',
      args: [],
    );
  }

  /// `Regions`
  String get txt_filter_regions {
    return Intl.message(
      'Regions',
      name: 'txt_filter_regions',
      desc: '',
      args: [],
    );
  }

  /// `Genre`
  String get txt_filter_genre {
    return Intl.message('Genre', name: 'txt_filter_genre', desc: '', args: []);
  }

  /// `Time/Periods`
  String get txt_filter_time_periods {
    return Intl.message(
      'Time/Periods',
      name: 'txt_filter_time_periods',
      desc: '',
      args: [],
    );
  }

  /// `Sort`
  String get txt_filter_sort {
    return Intl.message('Sort', name: 'txt_filter_sort', desc: '', args: []);
  }

  /// `Reset`
  String get btn_reset {
    return Intl.message('Reset', name: 'btn_reset', desc: '', args: []);
  }

  /// `Apply`
  String get btn_apply {
    return Intl.message('Apply', name: 'btn_apply', desc: '', args: []);
  }

  /// `All Periods`
  String get txt_filter_all_periods {
    return Intl.message(
      'All Periods',
      name: 'txt_filter_all_periods',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'vi'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
