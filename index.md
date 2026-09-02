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
<strong>Assistant Professor</strong>, Computer Science &mdash; <a href="https://vu.nl/en/about-vu/faculties/faculty-of-science/departments/computer-science">VU Amsterdam</a><br>
<strong>Assistant Professor</strong> (part-time) &mdash; <a href="https://www.tue.nl/en/research/research-groups/data-science/data-and-artificial-intelligence/database-group/">TU Eindhoven</a><br>
NU building 11A-43, De Boelelaan 1111, 1081 HV Amsterdam
</p>

<p class="elsewhere">
<a href="mailto:d.bonetta@vu.nl">d.bonetta@vu.nl</a> <span class="sep">&middot;</span> <a href="https://scholar.google.com/citations?user=AR2pK8QAAAAJ">Scholar</a> <span class="sep">&middot;</span> <a href="https://dblp.org/pid/51/8686.html">DBLP</a> <span class="sep">&middot;</span> <a href="https://github.com/eleinadani">GitHub</a> <span class="sep">&middot;</span> <a href="https://www.linkedin.com/in/daniele-bonetta-2478333">LinkedIn</a>
</p>

I work at the intersection of **programming languages and systems**. My group studies
managed language runtimes &mdash; the virtual machines and compilers underneath Java,
JavaScript and WebAssembly &mdash; and how they meet modern data systems. The recurring
question is where the performance goes, and how much of it we can get back by changing
the runtime rather than the application.

Before joining the VU I was a Principal Researcher in the Virtual Machine Research Group
at [Oracle Labs](http://labs.oracle.com) and a member of the [GraalVM](https://github.com/graalvm)
team, where I also served on ECMA [TC39](https://tc39.es/). I hold a Ph.D. from
[USI Lugano](http://www.inf.usi.ch). At the VU I am part of the
[Computer Systems](https://www.vucompsys.net/) group and the
[At Large](https://atlarge-research.com/) team.

<p class="more"><a href="research">Full background and research statement &rarr;</a></p>

</div>

<section markdown="1">
## Recent news

<!--
  Add new items at the top. Keep the two-column shape:
  <li><span class="when">Mmm YYYY</span><span class="what">... text ...</span></li>
-->

<ul class="news">
  <li><span class="when">OOPSLA 2025</span><span class="what"><em>HeapBuffers: Why Not Just Using a Binary Serialization Format for Your Managed Memory?</em> appeared in PACMPL, with J&uacute;nior L&ouml;ff, Matteo Basso and Walter Binder. <a href="https://doi.org/10.1145/3763175">DOI</a></span></li>
  <li><span class="when">VLDB 2025</span><span class="what"><em>GpJSON: High-performance JSON Data Processing on GPUs</em> appeared in PVLDB 18(9). <a href="https://doi.org/10.14778/3746405.3746439">DOI</a></span></li>
  <li><span class="when">CF 2025</span><span class="what"><em>Multi-GPU Greedy Scheduling Through a Polyglot Runtime</em>, on scheduling GPU work from a language runtime. <a href="https://doi.org/10.1145/3719276.3725199">DOI</a></span></li>
  <li><span class="when">IPDPSW 2025</span><span class="what"><em>Memory Efficient WebAssembly Containers</em>, with Matthijs Jansen, Maciej Kozub and Alexandru Iosup. <a href="https://doi.org/10.1109/IPDPSW66978.2025.00166">DOI</a></span></li>
  <li><span class="when">ICPE 2025</span><span class="what"><em>Investigating Performance Overhead of Distributed Tracing in Microservices and Serverless Systems</em>. <a href="https://doi.org/10.1145/3680256.3721316">DOI</a></span></li>
  <li><span class="when">ICPE 2025</span><span class="what">Co-chaired the <strong>HotCloudPerf'25</strong> workshop on hot topics in cloud performance.</span></li>
</ul>

<p class="more"><a href="https://scholar.google.com/citations?user=AR2pK8QAAAAJ">Full publication list on Google Scholar &rarr;</a></p>
</section>

<section markdown="1">
## Ongoing work

<div class="cards">
  <div class="card">
    <h3>Accelerators for data processing</h3>
    <p>Moving parsing, joins and aggregation onto GPUs and NPUs, and finding out which parts of a query engine actually survive the trip.</p>
  </div>
  <div class="card">
    <h3>Runtimes and compilers</h3>
    <p>JIT and AOT compilation in GraalVM and WebAssembly runtimes: profile-guided inlining, stateful incremental compilation, SIMD-aware optimizations.</p>
  </div>
  <div class="card">
    <h3>Data formats and memory layout</h3>
    <p>Serialization, compressed representations and managed-heap layouts &mdash; Arrow, Parquet, JSON and friends &mdash; and the cost they impose on the runtime.</p>
  </div>
  <div class="card">
    <h3>Lean cloud runtimes</h3>
    <p>Startup latency, memory footprint and energy use of Java and WebAssembly in serverless and container settings.</p>
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
experimental evaluations, real contributions to open-source projects.

**Prospective Ph.D. students** &mdash; send me an email with your CV, your research
interests, and why you think there is a good match with our ongoing work.

**VU and TU/e students** &mdash; I regularly offer B.Sc. and M.Sc. theses, literature
studies and research projects. Have a look at the [open topics](projects) and send me
an email to arrange a chat.

<p class="more"><a href="research">More on supervision and internships &rarr;</a></p>
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
