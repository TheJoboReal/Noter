---
created: 2025-12-30
type: definition
tags:
  - definition
  - scimet/metrics
aliases:
---
# `=this.file.name`

**`=this.file.name`** refers to:

> a journal-level metric that measures influence by weighting citations according to the importance of the citing journals.
^def

**Calculation (conceptual):**
- Citations form a network
- Citations from highly influential journals contribute more
- Self-citations are excluded
- Computed over a five-year window

**Context / Notes (optional):**
- Inspired by network centrality measures
- Not normalized per article

**Related:**
- [[Impact Factor]]
- [[Article Influence Score]]

**Sources**
- [[merged_3_reduced.pdf#page=30|merged_3_reduced, page 30]]
- [[scimeth-eigenfacor.pdf]] - how to calculate
