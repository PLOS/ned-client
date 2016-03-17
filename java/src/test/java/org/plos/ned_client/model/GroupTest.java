package org.plos.ned_client.model;

import org.plos.ned_client.model.Group;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;
import java.time.*;
import org.junit.*;
import java.time.format.DateTimeFormatter;

import static org.junit.Assert.*;

public class GroupTest {

  @Test
  public void testGroupDates() {

    Group g = new Group();

    g.setStartdate(LocalDate.of(1994, 2, 4));

    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");

    g.setEnddate(LocalDate.parse("2005-01-12", formatter));

    assertEquals(g.getEnddate().toString(), "2005-01-12");
    assertEquals(g.getStartdate().toString(), "1994-02-04");

    // g.setCreated = new Date(1994, 2, 6);

    // assertEquals(g.getCreated().toString(), "1994-02-06");
  }
}
