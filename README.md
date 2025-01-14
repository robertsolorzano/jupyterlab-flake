# JupyterLab Flake
A Nix Flake providing a reproducible, portable JupyterLab environment, pre-configured with Python and essential libraries.

## Features

- Reproducible & portable development environment via Nix Flakes
- Zero-configuration setup
- Pre-configured JupyterLab
- Essential Python libraries

## Prerequisites

- Nix package manager or NixOS with Flakes enabled
- x86_64-linux architecture (support for other OSes coming soon)

## Quick Start

### Direct Execution or run locally

Run JupyterLab directly without cloning the repository:

```bash
nix run github:robertsolorzano/jupyterlab-flake  # Temporary execution
```
Or clone the repository and run locally:
```bash
nix run  # Local execution
```
## Development

### Enter Development Environment

To modify or extend the environment:
```bash
nix develop github:robertsolorzano/jupyterlabs-flake  # Remote environment
nix develop  # Local development environment
```
This opens a shell with all dependencies for development.

### Start JupyterLab

Once inside the development environment, run:
```bash
jupyter-lab
```
Access JupyterLab at http://localhost:8888/lab.

### Custom Packages

To add additional packages, modify the flake.nix file