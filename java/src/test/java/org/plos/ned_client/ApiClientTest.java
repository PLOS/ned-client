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
  public void testDateParsingForJdkVersion() throws Exception {
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
