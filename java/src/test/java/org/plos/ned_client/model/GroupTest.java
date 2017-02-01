/*
 * Copyright (c) 2017 Public Library of Science
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
 * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 */

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
