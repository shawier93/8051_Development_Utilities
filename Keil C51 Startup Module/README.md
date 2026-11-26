# Keil C51 Startup Module

[Repository overview](../README.md)

Initialize the configured memory and stack before a linked C program starts.

## Implementations

This is vendor startup support, not a standalone application. It needs the linked runtime and application to complete execution.

| Implementation | Input | Output |
| --- | --- | --- |
| [Configured C Runtime Initialization](Configured%20C%20Runtime%20Initialization/README.md) | Reset and configuration | Linked C runtime |
