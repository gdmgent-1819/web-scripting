---
permalink: /search
scripts:
  bottom:
    - /syllabus-resources/js/utilities.js
    - /syllabus-resources/js/course.search.js
#
title       : Zoeken
title_long  : Zoeken in Syllabus
---


<form id="frm-search-inpage" class="searchform" action="{{ 'search' | relative_url }}" method="get">
  <label for="search-query-inpage"><i class="icon-search-1"></i>
  <input type="text" id="search-query-inpage" name="search-query" placeholder="Zoekterm">
  </label>
  <input type="submit" class="button-primary" value="Zoek">
</form>

<h1>Resultaten</h1>

<div class="search-results" id="search-results"></div>