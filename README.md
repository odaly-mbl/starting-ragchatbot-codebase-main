# Course Materials RAG System

A Retrieval-Augmented Generation (RAG) system designed to answer questions about course materials using semantic search and AI-powered responses.

## Overview

This application is a full-stack web application that enables users to query course materials and receive intelligent, context-aware responses. It uses ChromaDB for vector storage, Anthropic's Claude for AI generation, and provides a web interface for interaction.


## Prerequisites

- Python 3.13 or higher
- uv (Python package manager)
- Node.js and npm (for frontend development and quality tools)
- An Anthropic API key (for Claude AI)
- **For Windows**: Use Git Bash to run the application commands - [Download Git for Windows](https://git-scm.com/downloads/win)

## Installation

1. **Install uv** (if not already installed)
   ```bash
   curl -LsSf https://astral.sh/uv/install.sh | sh
   ```

2. **Install Python dependencies**
   ```bash
   uv sync
   ```

3. **Install Node.js dependencies** (for frontend development)
   ```bash
   npm install
   ```

4. **Set up environment variables**
   
   Create a `.env` file in the root directory:
   ```bash
   ANTHROPIC_API_KEY=your_anthropic_api_key_here
   ```

## Running the Application

### Quick Start

Use the provided shell script:
```bash
chmod +x run.sh
./run.sh
```

### Manual Start

```bash
cd backend
uv run uvicorn app:app --reload --port 8000
```

The application will be available at:
- Web Interface: `http://localhost:8000`
- API Documentation: `http://localhost:8000/docs`

## Code Quality

This project uses ESLint and Prettier to maintain code quality and consistent formatting for the frontend code.

### Quick Quality Check

```bash
# Check code quality (linting and formatting)
./quality-check.sh

# Or using npm
npm run quality
```

### Auto-Fix Issues

```bash
# Automatically fix linting and formatting issues
./quality-fix.sh

# Or using npm
npm run quality:fix
```

### Available Commands

```bash
npm run lint              # Check for linting issues
npm run lint:fix          # Fix linting issues
npm run format            # Format all code
npm run format:check      # Check if code is formatted
npm run quality           # Run all quality checks
npm run quality:fix       # Fix all issues
```

For more details, see [QUALITY.md](./QUALITY.md).

