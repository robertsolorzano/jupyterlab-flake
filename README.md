# JupyterLab Flake
A Nix Flake providing a reproducible, portable JupyterLab environment, pre-configured with Python and essential libraries.

## Features

- Reproducible & portable development environment via Nix Flakes
- Zero-configuration setup
- Pre-configured JupyterLab
- Essential Python libraries

## Prerequisites

- Nix package manager or NixOS with Flakes enabled
- x86_64-linux architecture (support for additional operating systems coming soon)

## Quick Start

### Option 1: Temporary Remote Execution

Run JupyterLab directly without cloning the repository:

```bash
nix run github:robertsolorzano/jupyterlab-flake
```
This will temporarily download the Flake, run JupyterLab, and clean up afterward. No files will be left behind.

### Option 2: Local Execution

Clone the repository and run JupyterLab locally:

```bash
git clone https://github.com/robertsolorzano/jupyterlab-flake.git  
cd jupyterlab-flake  
nix run  
```

This approach lets you modify or inspect the Flake files directly.

## Development

### Option 1: Temporary Remote Development Environment

If you don’t want to clone the repository, you can still enter a development environment with all dependencies loaded:

```bash
nix develop github:robertsolorzano/jupyterlab-flake
```

### Option 2: Local Development Environment

If you’ve cloned the repository, you can enter the development environment locally:

```bash
nix develop  
```

Both options provide a shell with all required dependencies.

### Start JupyterLab

Once inside the development environment, run:
```bash
jupyter-lab
```
Access JupyterLab at http://localhost:8888/lab.

### Custom Packages

To add additional Python libraries or dependencies:
- Add dependencies inside flake.nix
- Rebuild the environment with:

```bash
nix develop
```