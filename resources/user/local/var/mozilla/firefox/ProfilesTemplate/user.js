// Although prefs.js is considered as a primary settings storage, one
// should use user.js instead. user.js file stores settings that always
// overrides the prefs.js ones and never be overwrited by browser.
//
// This list is based on ghacks-user.js project:
//
//   <https://github.com/ghacksuserjs/ghacks-user.js>
//
// I don't really need all of those, just a little tweaks to forbid the
// most extreme privacy breaks.


// Disable about:config warning
user_pref("general.warnOnAboutConfig",                           false);

// Disable location-aware browsing
user_pref("geo.enabled",                                         false);
user_pref("geo.wifi.uri",                                           "");
user_pref("geo.wifi.logging.enabled",                            false);
user_pref("geo.wifi.scan",                                       false);

// Disable location-aware search
user_pref("browser.search.countryCode",                           "US");
user_pref("browser.search.region",                                "US");
user_pref("browser.search.geoip.url",                               "");
user_pref("browser.search.geoSpecificDefaults",                  false);
user_pref("browser.search.geoSpecificDefaults.url",                 "");

// Disable search engines auto update
user_pref("browser.search.update",                               false);

// Disable telemetry
user_pref("toolkit.telemetry.unified",                           false);
user_pref("toolkit.telemetry.enabled",                           false);
user_pref("toolkit.telemetry.server",                         "data:,");
user_pref("toolkit.telemetry.archive.enabled",                   false);
user_pref("toolkit.telemetry.cachedClientID",                       "");
user_pref("toolkit.telemetry.newProfilePing.enabled",            false);
user_pref("toolkit.telemetry.shutdownPingSender.enabled",        false);
user_pref("toolkit.telemetry.updatePing.enabled",                false);
user_pref("toolkit.telemetry.bhrPing.enabled",                   false);
user_pref("toolkit.telemetry.firstShutdownPing.enabled",         false);
user_pref("toolkit.telemetry.hybridContent.enabled",             false);

// Disable health reports
user_pref("datareporting.healthreport.uploadEnabled",            false);
user_pref("datareporting.policy.dataSubmissionEnabled",          false);

// Disable crash reports
user_pref("breakpad.reportURL",                                     "");
user_pref("browser.tabs.crashReporting.sendReport",              false);
user_pref("browser.crashReports.unsubmittedCheck.enabled",       false);
user_pref("browser.crashReports.unsubmittedCheck.autoSubmit",    false);
user_pref("browser.crashReports.unsubmittedCheck.autoSubmit2",   false);
user_pref("browser.chrome.errorReporter.enabled",                false);
user_pref("browser.chrome.errorReporter.submitUrl",                 "");

// Disable new tab tile ads & preload & marketing junk
user_pref("browser.newtab.preload",                              false);
user_pref("browser.newtabpage.enabled",                          false);

// Disable safebrowsing
user_pref("browser.safebrowsing.malware.enabled",                false);
user_pref("browser.safebrowsing.phishing.enabled",               false);
user_pref("browser.safebrowsing.downloads.enabled",              false);
user_pref("browser.safebrowsing.downloads.remote.block_potentially_unwanted", false);
user_pref("browser.safebrowsing.downloads.remote.block_uncommon", false);
user_pref("browser.safebrowsing.downloads.remote.block_dangerous", false);
user_pref("browser.safebrowsing.downloads.remote.block_dangerous_host", false);
user_pref("browser.safebrowsing.provider.google.updateURL",         "");
user_pref("browser.safebrowsing.provider.google.gethashURL",        "");
user_pref("browser.safebrowsing.provider.google4.updateURL",        "");
user_pref("browser.safebrowsing.provider.google4.gethashURL",       "");
user_pref("browser.safebrowsing.downloads.remote.enabled",       false);
user_pref("browser.safebrowsing.downloads.remote.url",              "");

// Disable safebrowsing reporting URLs
user_pref("browser.safebrowsing.provider.google.reportURL",         "");
user_pref("browser.safebrowsing.reportPhishURL",                    "");
user_pref("browser.safebrowsing.provider.google4.reportURL",        "");
user_pref("browser.safebrowsing.provider.google.reportMalwareMistakeURL", "");
user_pref("browser.safebrowsing.provider.google.reportPhishMistakeURL", "");
user_pref("browser.safebrowsing.provider.google4.reportMalwareMistakeURL", "");
user_pref("browser.safebrowsing.provider.google4.reportPhishMistakeURL", "");
user_pref("browser.safebrowsing.provider.google4.dataSharing.enabled", false);
user_pref("browser.safebrowsing.provider.google4.dataSharingURL",   "");

// Disable some system add-ons and experiments
user_pref("extensions.systemAddon.update.url",                      "");
user_pref("browser.ping-centre.telemetry",                       false);

user_pref("experiments.enabled",                                 false);
user_pref("experiments.manifest.uri",                               "");
user_pref("experiments.supported",                               false);
user_pref("experiments.activeExperiment",                        false);
user_pref("network.allow-experiments",                           false);

// Disable Normandy/Shield. Shield is an telemetry system
// (including Heartbeat) that can also push and test "recipes".
user_pref("app.normandy.enabled",                                false);
user_pref("app.normandy.api_url",                                   "");
user_pref("app.shield.optoutstudies.enabled",                    false);

// Disable Pocket
user_pref("extensions.pocket.enabled",                           false);

// Disable Screenshots
user_pref("extensions.screenshots.disabled",                      true);

// Disable Onboarding
user_pref("browser.onboarding.enabled",                          false);

// Disable Form Autofill
user_pref("extensions.formautofill.addresses.enabled",           false);
user_pref("extensions.formautofill.available",                   "off");
user_pref("extensions.formautofill.creditCards.enabled",         false);
user_pref("extensions.formautofill.heuristics.enabled",          false);

// Disable Web Compatibility Reporter
user_pref("extensions.webcompat-reporter.enabled",               false);

// Disable Reader
user_pref("reader.parse-on-load.enabled",                        false);
user_pref("reader.parse-on-load.force-enabled",                  false);
user_pref("reader.errors.includeURLs",                           false);

// Disable link prefetching
user_pref("network.prefetch-next",                               false);

// Disable DNS prefetching
user_pref("network.dns.disablePrefetch",                          true);
user_pref("network.dns.disablePrefetchFromHTTPS",                 true);

// Disable Seer/Necko
user_pref("network.predictor.enabled",                           false);

// Disable more Necko/Captive Portal
user_pref("captivedetect.canonicalURL",                             "");
user_pref("network.captive-portal-service.enabled",              false);

// Disable link-mouseover opening connection to linked server
user_pref("network.http.speculative-parallel-limit",                 0);

// Disable pings (but enforce same host in case)
user_pref("browser.send_pings",                                  false);
user_pref("browser.send_pings.require_same_host",                 true);

// Disable predictor
user_pref("network.predictor.enable-prefetch",                   false);

// Headers and Referers Settings
//
//   To fix broken sites (including your modem/router), temporarily set
//   XOriginPolicy to 0 and XOriginTrimmingPolicy to 2 in about:config.
//   Use the site and then change the values back. If you visit those
//   sites regularly (e.g. Vimeo), use an extension.
//
//   Definitions:
//                full URI: http://example.com:8888/foo/bar.html?id=1234
//   scheme+host+path+port: http://example.com:8888/foo/bar.html
//        scheme+host+port: http://example.com:8888
//
// Control when images/links send a referer
//
//   - 0  never
//   - 1  send only when links are clicked
//   - 2  for links and images (default)
user_pref("network.http.sendRefererHeader",                          2);
//
// Control the amount of information to send
//   - 0  send full URI (default)
//   - 1  scheme+host+path+port
//   - 2  scheme+host+port
user_pref("network.http.referer.trimmingPolicy",                     0);
//
// Control when to send a referer for cross-origin
//   - 0  always (default)
//   - 1  only if base domains match
//   - 2  only if hosts match
user_pref("network.http.referer.XOriginPolicy",                      1);
//
// Control the amount of information to send for cross-origin
//   - 0  send full URI (default)
//   - 1  scheme+host+path+port
//   - 2  scheme+host+port
user_pref("network.http.referer.XOriginTrimmingPolicy",              0);
//
// Disable spoofing a referer
user_pref("network.http.referer.spoofSource",                    false);
//
// Set the default Referrer Policy
//   - 0  no-referer
//   - 1  same-origin
//   - 2  strict-origin-when-cross-origin (default on pbmode)
//   - 3  no-referrer-when-downgrade (default)
user_pref("network.http.referer.defaultPolicy",                      3);
user_pref("network.http.referer.defaultPolicy.pbmode",               2);
//
// Hide (not spoof) referrer when leaving a .onion domain for TOR
user_pref("network.http.referer.hideOnionSource",                 true);
// Disable the DNT HTTP header, which is essentially useless
user_pref("privacy.donottrackheader.enabled",                    false);

// Prevent websites from disabling new window features
user_pref("dom.disable_window_open_feature.close",                true);
user_pref("dom.disable_window_open_feature.location",             true);
user_pref("dom.disable_window_open_feature.menubar",              true);
user_pref("dom.disable_window_open_feature.minimizable",          true);
user_pref("dom.disable_window_open_feature.personalbar",          true);
user_pref("dom.disable_window_open_feature.resizable",            true);
user_pref("dom.disable_window_open_feature.status",               true);
user_pref("dom.disable_window_open_feature.titlebar",             true);
user_pref("dom.disable_window_open_feature.toolbar",              true);

// Disable meddling with open windows
user_pref("dom.allow_scripts_to_close_windows",                  false);
user_pref("dom.disable_window_flip",                              true);
user_pref("dom.disable_window_move_resize",                       true);

// Open links targeting new windows in a new tab instead
user_pref("browser.link.open_newwindow",                             3);
user_pref("browser.link.open_newwindow.restriction",                 0);

// Enforce Punycode for Internationalized Domain Names
user_pref("network.IDN_show_punycode",                            true);

// Enforce user interaction for security by always asking the user where
// to download
user_pref("browser.download.useDownloadDir",                     false);
// Disable adding downloads to the system's "recent documents" list
user_pref("browser.download.manager.addToRecentDocs",            false);
// Disable hiding mime types not associated with a plugin
user_pref("browser.download.hide_plugins_without_extensions",    false);

// Devtools tweaks
user_pref("devtools.screenshot.audio.enabled",                   false);
user_pref("devtools.webide.autoinstallADBHelper",                false);
user_pref("devtools.webide.autoinstallFxdtAdapters",             false);
user_pref("devtools.webide.autoConnectRuntime",                  false);
user_pref("devtools.remote.wifi.scan",                           false);
user_pref("devtools.remote.wifi.visible",                        false);
user_pref("devtools.gcli.imgurClientID",                            "");
user_pref("devtools.gcli.imgurUploadURL",                           "");
user_pref("devtools.devedition.promo.enabled",                   false);
user_pref("devtools.devedition.promo.shown",                      true);
user_pref("devtools.devedition.promo.url",                          "");

// User Agent override
//
//   window.navigator.appName
user_pref("general.appname.override",                       "Netscape");
//
//   window.navigator.appVersion
user_pref("general.appversion.override",               "5.0 (Windows)");
//
//   window.navigator.oscpu
user_pref("general.oscpu.override",            "Windows NT 6.1; WOW64");
//
//   window.navigator.platform
user_pref("general.platform.override",                         "Win32");
//
//   HTTP User-Agent, window.navigator.userAgent
user_pref("general.useragent.override", "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101 Firefox/52.0");
//
//   window.navigator.buildID
user_pref("general.buildID.override",                 "20170815141045");
user_pref("general.useragent.locale",                          "en-US");

// Ignore HTML <meta http-equiv="refresh" /> (not affect on HTTP 300)
user_pref("accessibility.blockautorefresh",                       true);

// UI Tweaks and Miscellaneous
//
//   - 0  previous page
//   - 1  scroll up
//   - 2  do nothing
user_pref("browser.backspace_action",                                2);
user_pref("browser.ctrlTab.previews",                             true);
user_pref("browser.tabs.loadBookmarksInTabs",                     true);
user_pref("browser.urlbar.oneOffSearches",                       false);
user_pref("browser.urlbar.usepreloadedtopurls.enabled",          false);
user_pref("browser.shell.checkDefaultBrowser",                   false);
