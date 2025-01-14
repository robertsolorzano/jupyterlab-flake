# JupyterLab Flake
A Nix Flake providing a reproducible, portable JupyterLab environment pre-configured with Python and essential libraries.

## Features

- Reproducible development environment using Nix Flakes
- Portable across different systems
- Zero-configuration setup
- Pre-configured JupyterLab installation
- Essential starter Python libraries included

## Prerequisites

- Either Nix package manager or NixOs with Flakes enabled
- x86_64-linux (will provide more OS support soon)

## Quick Start

### Option 1: Direct Execution

Run JupyterLab directly without cloning the repository:

```bash
nix run github:robertsolorzano/jupyterlab-flake
```

### Option 2: Clone and Run locally

```bash
git clone https://github.com/robertsolorzano/jupyterlab-flake.git
cd jupyterlab-flake
nix run
```
## Development

### Enter Development Environment

To modify or extend the environment:
```bash
nix develop github:robertsolorzano/jupyterlabs-flake #temp
nix develop #local
```
This provides a shell with all dependencies available for development.

### Start JupyterLab Manually

Once in the development environment:
```bash
jupyter-lab
```
JupyterLab will be available at http://localhost:8888/lab

### Custom Packages

To add additional packages, modify the flake.nix file