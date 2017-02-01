package org.plos.ned_client;

import java.util.Date;

import java.text.ParsePosition;
import java.text.SimpleDateFormat;

public class ClientDateTimeFormat extends SimpleDateFormat {

  // The time zone format "XXX" is available in Java 1.7+
  public static final String JAVA_7_DATE_FORMAT     = "yyyy-MM-dd'T'HH:mm:ss.SSSXXX";
  public static final String PRE_JAVA_7_DATE_FORMAT = "yyyy-MM-dd'T'HH:mm:ss.SSSZ";

  public static final double JAVA_VERSION;
  static {
    JAVA_VERSION = Double.parseDouble(System.getProperty("java.specification.version"));
  }

  public ClientDateTimeFormat() {
    applyPattern(getDateTimeFormatPattern());
  }

  @Override
  public Date parse(String source, ParsePosition pos) {

    if (JAVA_VERSION < 1.7) {
      // make timezone RFC 822 compliant (-0700), if necessary
      if (source.length() == 29) {
        source = source.replaceAll(":(\\d\\d)$", "$1"); // 2016-03-16T15:09:15.763-07:00
      } else if (source.length() == 26) {
        source = source+"00";                           // 2016-03-16T15:09:15.763-07
      }
    }
    return super.parse(source, pos);
  }

  String getDateTimeFormatPattern() {
    if (JAVA_VERSION >= 1.7) {
      return JAVA_7_DATE_FORMAT;
    }
    // Use a common format that works across all systems.
    return PRE_JAVA_7_DATE_FORMAT;
  }
}
