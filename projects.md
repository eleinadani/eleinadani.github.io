---
layout: default
---

## Research Projects

My research interests are at the intersection of **Systems** and **Language runtimes** (e.g., the Java Virtual Machine, JavaScript engines, WebAssembly runtimes etc), **Data analytics** (e.g., SQL query compilation and optimization, data serialization and de-serialization, etc), **Parallel, Distributed** and **Concurrent** programming (e.g., GPU programming, SIMD parallelization,  shared-memory concurrency, etc), and broadly speaking **Cloud** computing (e.g., serverless). In general, I like to build things, and I am interested in all performance-related aspects of the  topics above.

### Recommended background knowledge.

All offered projects are challenging and require good systems programming and knowledge. I assume that at the Bachelor’s level you have taken (or you are familiar with some of the topics of) **Computer Organization**, **Advanced Systems Programming**, **Compiler Construction**, **Operating Systems**, and **Concurrency and Multithreading**. At the Master’s level, you have taken/or you are familiar with at least some of **Programming Large-Scale Parallel Systems**,  **Systems Seminar**, **Programming Multi-core and Many-core Systems**. Very good knowledge of Java, C, C++, Rust, or comparable languages is strongly recommended.


### MSc-level projects.

The projects below can either be a MSc thesis (typically with a literature study) or large (12 ECTS) MSc research projects. Some of the projects can be adapted to BSc-level (for ambitious BSc students!)

_High performance data_

* **[Parallel GPU-based data de-serialization].** Data de-serialization (e.g. of JSON data) remains a key bottleneck in many analytics workloads. This project investigates how to offload parsing to GPUs, implementing a prototype GPU-based parser for a popular data format (e.g., JSON) that can tokenize, structure, and analyze data in parallel, and comparing it against state-of-the-art CPU-based parsers.

* **[NPU-assisted query execution].** Neural Processing Units (NPUs) are emerging hardware accelerators optimized for matrix operations. This project explores how to offload parts of query execution—such as joins or aggregations—to NPUs, leveraging their parallel computation model to accelerate analytical workloads.

* **[Adaptive data encoding for Kafka streams].** The goal of this project is to develop an adaptive encoding framework for Kafka where the serialization format is chosen dynamically based on message characteristics (size, schema, or frequency). The student will design selection heuristics and evaluate trade-offs in latency and throughput.

* **[SIMD acceleration for data analytics for Apache Spark].** Many data analytics operations such as filtering, aggregation, and string comparison can be vectorized using SIMD instructions. This project will explore how to exploit SIMD in Apache Spark SQL to speed up data processing kernels, and integrate them into a simple analytics pipeline.


* **[Adaptive SQL compilation in Apache Spark].** Data processing systems such as Apache Spark perform runtime JIT compilation of SQL to machine code. Such compilation is typically static: once compiled, the code is never modified. In this project we want to instead explore “dynamic” compilation techniques in the context of Apache Spark SQL. Related work [(1)](https://www.databricks.com/blog/2016/05/23/apache-spark-as-a-compiler-joining-a-billion-rows-per-second-on-a-laptop.html).

* **[Compressed Strings for the JVM].** This project aims to design and implement a Java library that represents and manipulates strings in compressed form while preserving a familiar string API. The library will support multiple compression schemes—starting from dictionary-based methods and extending to more advanced formats—and will expose operations such as construction, concatenation, substring, pattern search, and iteration directly over compressed data, minimizing decompression overhead. The project will explore data structures and algorithms that enable efficient random access and search on compressed representations, integrate with the JVM’s memory model and garbage collector, and evaluate performance across realistic, string-intensive workloads. The outcome will be a practical, pluggable compressed-string library for the JVM, along with a systematic evaluation of its space–time trade-offs compared to standard `java.lang.String`.

* **[JIT-based JSON parsing].** JSON parsing libraries such as jackson do not make any assumptions on the actual structure of the JSON data being parsed. However, very often multiple JSON objects have a somehow “similar” structure. In this project we want to explore using JIT compilation to speed up JSON data analytics. Specifically, we want to develop a JSON parsing library that “learns” the most-likely structure of the JSON data being parsed, and generates machine code that is optimized for the predicted JSON data. The expectation is that such “learned” JSON parser should be significantly faster than a general-purpose one. Related work [(1)](https://github.com/FasterXML/jackson).


_VMs and compilers_


* **[Accelerating Parsing and Lexing with SIMD and GPUs].** This project investigates how to speed up parsing and lexing for popular programming languages (e.g., C, C++, Java, JavaScript, Rust) using modern hardware accelerators such as SIMD units and GPUs. The goal is to design and implement prototype lexers/parsers that exploit data-parallelism in tokenization, scanning, and syntax analysis, while remaining compatible with existing compiler and tooling pipelines. The project will explore vectorized algorithms for character classification and token recognition, batch-oriented or streaming GPU kernels for large codebases, and hybrid CPU–GPU execution strategies. We will evaluate performance against state-of-the-art mainstream parsers on realistic workloads (compilation, static analysis, IDE features), quantifying speedups, energy implications, and integration overhead. The outcome is a set of acceleration techniques and a benchmarking framework that can guide the next generation of high-performance language front ends.

* **[Compilation service for WebAssembly].** Modern WebAssembly runtimes such as wasmer provide in-process Just-in-time compilation. JIT compilers are normally running as a concurrent thread in the same process of the application. In this project we want to study an alternative runtime design, where the JIT compiler runs as an external “service”, i.e., in a different process, potentially running on a different machine. Such client-server design would allow to reduce even more the memory consumption of the WebAssembly runtime, as well as enable distributed code caching and other optimizations. Related work [(1)](https://github.com/wasmerio/wasmer).

* **[Profile-guided inlining for WebAssembly].** Profile-guided optimization (PGO) is a compiler optimization technique where profiling information and runtime traces from previous execution of a given application are used to optimize future executions of the same application. The intuition is that the same application will most likely behave in the same way across multiple runs, with the consequence that knowledge from past runs can be used to optimize future executions. In this project, we want to explore the usage of PGO-style optimizations for WebAssembly, starting from function inlining. Related work [(1)](https://go.dev/doc/pgo).

* **[Accelerated RexEx engines].** Regular expressions are natively supported in many high-level programming languages such as JavaScript, Java or Python. RegEx execution performance is often critical, and state-of-the-art langauge VMs employ advanced JIT compilation techniques or (SIMD) parallel processing to optimize RegEx performance. In this project we want to explore using accelerators (such as FPGAs, NPUs or others) to speed up RegEx matching performance. 

* **[SIMD-based micro-optimizations for string data processing].** This project focuses on simple, well-defined SIMD use cases such as string scanning, predicate evaluation, or data compression. The goal is to implement CPU-vectorized routines using intrinsics and evaluate their performance against scalar baselines.

* **[Learned data structures in a language VM].** Learned data structures have been used successfully in the context of DataBase processing systems. In this project we want to explore using such data structures to implement some of the internal components of a modern language VM such as Google V8 or the Java Virtual Machine. Related work [(1)](https://arxiv.org/abs/1712.01208).


* **[Extending Graal’s compiler pipeline with a custom optimization pass].** The Graal compiler framework allows adding new optimization phases. In this project, the student will implement a custom optimization (e.g., loop unrolling, constant folding, or dead code elimination) in Graal’s IR pipeline, evaluate its impact on performance, and visualize the transformation on benchmark programs.

* **[GPU-assisted compilation using the Graal compiler].** Graal’s extensible design allows exploring offloading parts of compilation to accelerators. This project investigates how certain compiler passes (e.g., SSA construction or data-flow analysis) could be parallelized or accelerated using a GPU-based backend.

* **[Combining CRIU and GraalVM native-image].** GraalVM native image is an open-source language technology that can be used to create optimized, cloud-ready binary executables for Java. By leveraging Ahead-of-time compilation of Java code, GraalVM native images can significantly reduce applications’ startup time, leading to reduced cold starts in Cloud deployments such as AWS Lambda. CRIU is an emerging technology provided by the Linux kernel aimed at the same goal: minimize applications startup time. Unlike GraalVM native image, CRIU leverages “user-space” snapshotting. In this project we want to explore how the two technologies can be combined in order to minimize even further the startup latency of Cloud applications. Related work [(1)](https://criu.org/Main_Page).


### BSc-level projects.
Depending on the topic, most of them can be extended to more challenging MSc-level projects.

_High performance data_

* **[Performance impact of serialization formats in Apache Kafka].** Apache Kafka supports multiple serialization formats such as Avro, Protocol Buffers, JSON, and MessagePack. This project investigates how the choice of serialization affects producer and consumer throughput, message latency, and CPU usage under different message sizes and workloads.

* **[Monitoring and visualizing Kafka serialization performance].** This project focuses on developing a monitoring and visualization tool that measures serialization/deserialization overheads in Kafka pipelines. The student will instrument Kafka clients and build dashboards showing how data format, batch size, and schema evolution affect performance.

* **[Performance evaluation of JSON parsing libraries enabled with JIT compilation].** Many modern JSON libraries leverage JIT compilation or runtime code generation to improve performance. This project will evaluate several popular JIT-enabled JSON parsers (e.g., simdjson, RapidJSON, DSL-JSON, etc.) across multiple programming languages, measuring parsing speed, memory footprint, and scalability on different datasets.

* **[Performance evaluation of Apache Kafka workloads on different JVMs].** Apache Kafka is widely used for distributed streaming, and its performance can vary significantly across JVM implementations. This project will benchmark Kafka workloads running on HotSpot, GraalVM, and Native Image, comparing startup time, throughput, and latency under different configurations.

* **[Performance analysis of Java code generated by Spark SQL].** Spark SQL translates declarative SQL queries into Java bytecode at runtime. This project investigates how efficiently Spark’s code generation performs across query patterns. The student will extract and analyze generated Java code, profile its execution, and identify optimization opportunities in the generated plans.

* **[Performance evaluation of popular binary and textual encoding formats].** Data is often encoded using binary formats such as Parquet, Cap’n Proto, Protocol Buffers, Arrow, FlatBuffers etc. In this project, we want to build a comprehensive performance evaluation suite (i.e., a benchmark) to compare the performance of popular encoding formats on popular programming languages such as Java, JavaScript, Python, C/C++ and Rust.

* **[Data access pattern performance impact on Apache Arrow].** In this project we want to answer and understand a simple question: does the order in which we access large datasets stored in the Apache Arrow format have an impact on performance? And, if so, can the application and/or the language VM optimize the way data is accessed to improve performance? Related work [(1)](https://arrow.apache.org/).


_VMs and compilers_

* **[Phase-Level Performance Analysis of the Graal Compiler].** This project focuses on a detailed, phase-level performance analysis of the Graal just-in-time compiler to identify bottlenecks and opportunities for optimization. The goal is to instrument Graal’s compilation pipeline to collect fine-grained timing, allocation, and IR-size metrics for individual compiler phases (e.g., decoding, inlining, optimization passes, register allocation). Using these measurements across a diverse set of workloads, the project will characterize where compilation time is spent, how phase costs correlate with code size and optimization level, and which phases dominate end-to-end compilation latency. The outcome will be a profiling and visualization framework for Graal’s internal behavior, along with actionable insights and concrete suggestions for optimizing or restructuring expensive phases to improve compilation speed without compromising code quality.

* **[Performance analysis of SIMD support in WebAssembly].** SIMD instructions are at the core of modern data processing. For example, several data ingestion operations (e.g., importing data from a CSV file) requires UTF-8 validation: the input data needs to be analyzed (one character at a time) to ensure that the input text is valid. Parallel execution techniques can be employed to speed-up the validation of large text files. In this project, we want to explore the performance of existing WebAssembly runtimes in the context of SIMD execution, looking at common operations such as e.g. UTF-8 validation. The goal of the project is to implement multiple SIMD-based data processing  techniques targeting WebAssembly (either in WebAssembly itself, or by leveraging emscripten or alternative WASM compilers), to assess the current performance of WebAssembly in such Data-parallel operations. Related work [(1)](https://github.com/WebAssembly/simd/blob/main/proposals/simd/SIMD.md) [(2)](https://arxiv.org/abs/2010.03090).

* **[Dynamic program analysis for WebAssembly].** WebAssembly is increasingly used beyond the browser, yet its runtime behavior remains less understood. This project will design a dynamic analysis tool for WebAssembly programs (e.g., to measure memory access, function calls, or execution time) and apply it to benchmark programs compiled from C/C++ or Rust.

* **[Performance analysis of the Java Vector API].** for JSON data processing applications. Upcoming versions of the Java language will feature built-in support for SIMD programming. Simdjson is one of the most popular high-performance JSON processing libraries; it is implemented in highly-optimized C code, and leverages advanced SIMD instructions to perform data de-serialization in parallel. Achieving similar performance using a managed programming language such as Java would be simply impossible without access to SIMD parallelism. The recently-introduced Java Vector API promises to bring high-performance SIMD parallel programming to the Java language. In this project we want to explore the usage of such a new API in the context of JSON data processing. In particular, the goal of the project is to implement the simdjson library using the new Java Vector API, and assess its performance profile compared against the native, highly-optimized simdjson implementation. Related work [(1)](https://github.com/simdjson/simdjson) [(2)](https://openjdk.org/jeps/460).

* **[Power consumption profile and analysis of Java serverless].** Java and the Java Virtual Machine are among the most popular technologies on the planet, with billions of daily users. Despite such great popularity, we still know very little about the carbon footprint of a language such as Java compared to statically-compiled languages such as C. In this project, we want to explore and understand the impact of language runtimes such as the JVM on energy consumption, ideally identifying guidelines and recommendations for the most energy-friendly configuration of a Java Virtual Machine. Related work [(1)](https://inria.hal.science/hal-03275286/document) [(2)](https://ionutbalosin.com/2024/03/analyzing-jvm-energy-consumption-for-jdk-21-an-empirical-study/?utm_source=pocket_saves).



#### Literature studies.

Literature studies are often paired with a MSc thesis. In exceptional cases (e.g., a MSc thesis with industry) I am happy to supervise literature studies on all areas related to the BSc and MSc topics above.


#### Past projects.

These project have been completed and are no longer offered. If you find the topic very interesting, I am happy to discuss about possible follow-up projects on the same (or related) topic.

* **[Compressed strings in a language VM].** Modern language VMs such as Google V8 or the Java Virtual Machine (JVM) represent in-memory strings using advanced runtime techniques such as Ropes. In this project we want to investigate if/how compression algorithms can be used in the context of language VMs to reduce memory consumption for large in-memory strings without negative performance impacts. Related work [(1)](https://www.cs.tufts.edu/comp/150FP/archive/hans-boehm/ropes.pdf).

* **[ML-based inlining for the Graal compiler].** Advanced dynamic JIT compilers such as Graal rely on several of heuristics-based algorithms to perform compiler optimizations. Such heuristics are often hand-tuned. In this project we want to explore using Machine Learning to replace the inlining heuristics used in a modern compiler with a ML model, with the goal of improving performance.

* **[Binary layout performance impact].** The way an executable file is stored on disk has a potential impact on the application’s startup performance. For example, large binary files might result in hundreds of page faults depending on the order in which functions are declared and executed. In this project we want to develop automatic compiler-driven techniques to optimize the layout of binary files with the goal of improving application startup.

* **[DPDK bindings for Node.js].** The DPDK user-space networking stack is the state-of-the-art solution for high-performance networking. Unfortunately, using DPDK from high-level programming languages such as Python or JavaScript is not always easy. In this project we want to develop Node.js _native_ bindings for the DPDK library, so to enable high-performance netowking in Node.js. Such bindings already exist for other languages (e.g. Go); in this project you will implement them for Node.js. Related work [(1)](https://github.com/DPDK/dpdk) [(2)](https://github.com/yerden/go-dpdk).
_

* **[Performance evaluation of the new CPython JIT compiler].** The CPython engine is the most popular language VM for Python. In recent weeks, the engine was finally extended with a JIT compiler. In this project, we want to assess the performance impact of the new JIT, and want to understand what its properties and limitations are. Related: [(1)](https://github.com/python/cpython/pull/113465).

* **[Hybrid compilation: combining JIT and AOT using GraalVM].** This project explores combining ahead-of-time compiled components (via Native Image) with JIT-compiled modules to achieve both fast startup and adaptive optimization. The student will design and evaluate hybrid execution setups for mixed workloads.

* **[User-level eBPF scheduling for the JVM].** The new `sched_ext` functionality in the Linux kernel enables user-space applications to customize CPU OS scheduling, allowing applications to implement domain-specific scheduling policies. `sched_ext` is based on eBPF and can be easily exposed to high-level language runtimes such as the Java Virtual Machine. In this project, you will study the impact of user-level domain-specific scheduling on serverless applications. The goal of the project is to implement and evaluate different user-level scheduling policies targeting the Java VM, and evaluate the impact of different scheduling decisions on performance properties of the application. Related work [(1)](https://mostlynerdless.de/blog/2024/09/10/hello-ebpf-writing-a-linux-scheduler-in-java-with-ebpf-15/) [(2)](https://github.com/sched-ext/scx).