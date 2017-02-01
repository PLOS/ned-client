package org.plos.ned_client.model;

import static org.junit.Assert.assertEquals;

import org.joda.time.LocalDate;
import org.joda.time.format.DateTimeFormatter;
import org.joda.time.format.ISODateTimeFormat;
import org.junit.Test;

public class GroupTest {

  // iso local date format (yyyy-mm-dd)
  private DateTimeFormatter formatter = ISODateTimeFormat.date();

  @Test
  public void testGroupDates() {

    Group g = new Group();

    g.setStartdate(new LocalDate(1994, 2, 4));

    g.setEnddate(LocalDate.parse("2005-01-12", formatter));

    assertEquals(g.getEnddate().toString(), "2005-01-12");
    assertEquals(g.getStartdate().toString(), "1994-02-04");

    // g.setCreated = new Date(1994, 2, 6);

    // assertEquals(g.getCreated().toString(), "1994-02-06");
  }
}
