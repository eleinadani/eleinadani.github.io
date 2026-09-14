---
layout: default
description: >-
  Daniele Bonetta is an Assistant Professor of Computer Science at VU Amsterdam
  working at the intersection of programming languages and systems: managed
  language runtimes, compilers, and high-performance data processing.
---

<div class="home" markdown="1">

<div class="intro" markdown="1">

<div class="portrait"><img src="dani2.png" alt="Daniele Bonetta" width="168" height="168"></div>

<p class="affiliation">
<strong>Assistant Professor</strong><br>Department of Computer Science<a href="https://vu.nl/en/about-vu/faculties/faculty-of-science/departments/computer-science"><br>VU Amsterdam</a>
<!-- NU building 11A-43, De Boelelaan 1111, 1081 HV Amsterdam -->
</p>

<p class="elsewhere">
<a href="mailto:d.bonetta@vu.nl">d.bonetta@vu.nl</a> <span class="sep">&middot;</span> <a href="https://scholar.google.com/citations?user=AR2pK8QAAAAJ">Scholar</a> <span class="sep">&middot;</span> <a href="https://dblp.org/pid/51/8686.html">DBLP</a> <span class="sep">&middot;</span> <a href="https://github.com/eleinadani">GitHub</a> <span class="sep">&middot;</span> <a href="https://www.linkedin.com/in/daniele-bonetta-2478333">LinkedIn</a>
</p>

I work at the intersection of **programming languages and data systems**. I am particularly interested in programming language implementation technologies (e.g., compilers, language VMs, optimizations), and how they meet modern data systems in areas such as data formats, parsing, querying and hardware acceleration. The recurring
theme of my research is bridging the gap between high-level programming abstractions and the systems and hardware that execute them.

Before joining the VU I was a Principal Researcher in the Virtual Machine Research Group
at [Oracle Labs](https://apexapps.oracle.com/pls/apex/r/labs/labs/projects) and a member of the [GraalVM](https://github.com/graalvm)
team, where I also served on ECMA [TC39](https://tc39.es/). I hold a Ph.D. from
[USI Lugano](http://www.inf.usi.ch). At the VU I am part of the
[Computer Systems](https://www.vucompsys.net/) and [At Large](https://atlarge-research.com/) team. I also hold a part-time appointment in the [Database group](https://dai.win.tue.nl/team/) of TU/e.

<p class="more"><a href="research">Full background and research statement &rarr;</a></p>

</div>

<section markdown="1">
## Recent news

<!--
  Add new items at the top. Keep the two-column shape:
  <li><span class="when">Mmm YYYY</span><span class="what">... text ...</span></li>
-->

<ul class="news">
  <li><span class="when">OOPSLA 2026</span><span class="what"><em>TwinString: Preserving string semantics with off-heap data on the JVM</em>. Keeping Java&rsquo;s String semantics intact while the characters live off the heap.</span></li>
  <li><span class="when">ICSME 2026</span><span class="what"><em>Unavailable, Undocumented, or Unbuildable: A Reproducibility Study of WebAssembly Benchmarks</em>. How many published WebAssembly benchmarks can still be obtained, understood and built.</span></li>
  <li><span class="when">OOPSLA 2025</span><span class="what"><em>HeapBuffers: Why Not Just Using a Binary Serialization Format for Your Managed Memory?</em> Using a binary serialization format as the layout of managed memory itself.</span></li>
  <li><span class="when">VLDB 2025</span><span class="what"><em>GpJSON: High-performance JSON Data Processing on GPUs</em>. JSON parsing and querying executed on the GPU.</span></li>
  <li><span class="when">CF 2025</span><span class="what"><em>Multi-GPU Greedy Scheduling Through a Polyglot Runtime</em>. Scheduling work across several GPUs from inside a language runtime.</span></li>
  <li><span class="when">IPDPSW 2025</span><span class="what"><em>Memory Efficient WebAssembly Containers</em>. Cutting the memory footprint of WebAssembly-based containers.</span></li>
</ul>

<p class="more"><a href="https://scholar.google.com/citations?user=AR2pK8QAAAAJ">Paper links and more on Google Scholar &rarr;</a></p>
</section>

<section markdown="1">
## Ongoing work

<div class="cards">
  <div class="card">
    <h3>VMs, Runtimes and compilers</h3>
    <p>JIT and AOT compilation in JVM and WebAssembly runtimes: profile-guided inlining, stateful incremental compilation, SIMD-aware optimizations.</p>
  </div>
  <div class="card">
    <h3>Data formats and memory layout</h3>
    <p>Serialization, compressed representations and managed-heap layouts &mdash; Arrow, Parquet, JSON and friends &mdash; and the cost they impose on the runtime.</p>
  </div>
  <div class="card">
    <h3>Accelerators for data processing</h3>
    <p>Moving parsing, joins and aggregation onto GPUs and NPUs, and finding out which parts of a query engine actually survive the trip.</p>
  </div>
  <div class="card">
    <h3>Cloud workloads</h3>
    <p>Startup latency, memory footprint and energy use of Java/GraalVM and WebAssembly in serverless and container settings.</p>
  </div>
</div>

<p class="more"><a href="projects">Open B.Sc. and M.Sc. project topics &rarr;</a></p>
</section>

<section markdown="1">
## Teaching

<ul class="courses">
  <li><a href="https://studiegids.vu.nl/en/courses/2024-2025/XM_0122#/">Systems Seminar</a>
      <span class="where">M.Sc. &mdash; VU Amsterdam</span></li>
  <li><a href="https://research.tue.nl/en/courses/language-virtual-machines-design-and-implementation">Language VMs: Design and Implementation</a>
      <span class="where">M.Sc. &mdash; TU Eindhoven</span></li>
  <li><a href="https://studiegids.vu.nl/en/Bachelor/2025-2026/computer-science/XB_0150#/">Advanced Systems Programming</a>
      <span class="where">B.Sc. &mdash; VU Amsterdam</span></li>
</ul>

<p class="more"><a href="teaching">Course details and student resources &rarr;</a></p>
</section>

<section markdown="1">
## Working with me

I am always looking for students who like building things: practical tools, careful
experimental evaluations, real contributions to open-source projects. I supervise
Ph.D. students at the VU, and B.Sc. and M.Sc. theses, literature studies and research
projects at both the VU and TU/e &mdash; the current [open topics](projects) are a good
place to start.

<p class="more"><a href="research#prospective-students">Supervision, internships, and what to send me &rarr;</a></p>
</section>

<section markdown="1">
## Contact

<div class="contact-grid" markdown="1">
<div markdown="1">
<p class="label">Email</p>
<p><a href="mailto:d.bonetta@vu.nl">d.bonetta@vu.nl</a> (VU)<br>
<a href="mailto:d.bonetta@tue.nl">d.bonetta@tue.nl</a> (TU/e)</p>
</div>
<div markdown="1">
<p class="label">Office</p>
<p>VU Amsterdam, Faculty of Science<br>
NU building, 11A-43<br>
De Boelelaan 1111, 1081 HV Amsterdam</p>
</div>
</div>

<p class="more"><a href="contact">All contact details &rarr;</a></p>
</section>

</div>
