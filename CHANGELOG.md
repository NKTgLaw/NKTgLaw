# 📦 Changelog

All notable changes to this project will be documented in this file.

This project adheres to [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

---

## [v0.2.0] - 2025-10-09

### Added
- Go SDK in `clients/go/` with modular structure, unit tests, example, benchmark, and CI workflow
- C# SDK in `clients/csharp/` with structured layout, xUnit tests, example, benchmark, and CI workflow
- Benchmark files for both Go and C#
- CI workflows for Go and C# in `.github/workflows/`
- Community & governance files: `CODE_OF_CONDUCT.md`, `CONTRIBUTING.md`, `SECURITY.md`, `FUNDING.yml`
- Dual licensing model: GPL-3.0 and Commercial
- Standardized README files across SDKs
- Release notes integration for GitHub Releases

### Improved
- Refactored Python SDK structure for clarity and consistency
- Enhanced documentation in `foundations/` and `README.md`
- Unified project layout across all language clients

### Fixed
- Corrected versioning mismatch between changelog and release tags
- Synced changelog format with GitHub Releases

---

## [v0.1.0] - 2025-09-15

### Added
- Initialized core library in C++ (`core/`)
- Integrated REST API using Crow framework
- Added Python wrapper for API access
- Implemented unit tests for core functionality
- Created initial README and example usage
