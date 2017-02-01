package org.plos.ned_client;

import static org.junit.Assert.*;
import static org.plos.ned_client.ClientDateTimeFormat.*;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;

import org.junit.Test;

public class ApiClientTest {

  @Test
  public void testDateFormatPatternForJdkVersion() throws Exception {
    double[] jdks = { 1.6, 1.7, 1.8 };

    String[] expectedFormats = {
      PRE_JAVA_7_DATE_FORMAT, JAVA_7_DATE_FORMAT, JAVA_7_DATE_FORMAT
    };

    for (int i = 0; i < jdks.length; i++) {
      setJdkVersion(jdks[i]);
      ClientDateTimeFormat dateformat = new ClientDateTimeFormat();
      assertEquals(expectedFormats[i], dateformat.getDateTimeFormatPattern());
    }
  }

  @Test
  public void testDateParsingForJdk6() throws Exception {

    String[] dateTimeStrings = {
      "2016-03-16T15:09:15.763-0700",   // rfc 822/iso 8601 tz
      "2016-03-16T15:09:15.763-07:00",  // iso 8601 tz
      "2016-03-16T15:09:15.763-07"      // iso 8601 tz
    };

    setJdkVersion(1.6);
    ClientDateTimeFormat dateformat = new ClientDateTimeFormat();
    for (int i = 0; i < dateTimeStrings.length; i++) {
      assertNotNull( dateformat.parse(dateTimeStrings[i]) );
    }
  }

  @Test
  public void testDateParsingForJdk7() throws Exception {
    double[] jdks = { 1.7, 1.8 };

    String[] parsableDateTimeStrings = {
      "2016-03-16T15:09:15.763-07:00"   // iso 8601 tz
    };

    for (int i = 0; i < jdks.length; i++) {
      for (int j = 0; j < parsableDateTimeStrings.length; j++) {
        setJdkVersion(jdks[i]);
        ClientDateTimeFormat dateformat = new ClientDateTimeFormat();
        assertNotNull( dateformat.parse(parsableDateTimeStrings[j]) );
      }
    }

    String[] unparsableDateTimeStrings = {
      "2016-03-16T15:09:15.763-0700",
      "2016-03-16T15:09:15.763-07"
    };

    for (int i = 0; i < jdks.length; i++) {
      for (int j = 0; j < unparsableDateTimeStrings.length; j++) {
        setJdkVersion(jdks[i]);
        ClientDateTimeFormat dateformat = new ClientDateTimeFormat();
        try {
          dateformat.parse(unparsableDateTimeStrings[j]);
        } 
        catch (java.text.ParseException expected) {
          // client date format (XXX) currently only supports the ISO 8601
          // timezone component with hours and minutes (ex: -08:00). a format
          // mask of XX would be able to parse -0700; similarly, a format mask
          // with one X would be able to parse -07. this may be a moot point
          // though because ned-api generates timezones with hours and minutes
          // (-08:00).
        }
      }
    }
  }

  private void setJdkVersion(double jdkVersion) throws Exception {
    Field field = ClientDateTimeFormat.class.getDeclaredField("JAVA_VERSION");
    field.setAccessible(true);

    // clear final attribute
    Field modifiersField = Field.class.getDeclaredField("modifiers");
    modifiersField.setAccessible(true);
    modifiersField.setInt(field, field.getModifiers() & ~Modifier.FINAL);

    field.set(null, jdkVersion);
  }
}
