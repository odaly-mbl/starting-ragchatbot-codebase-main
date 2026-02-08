# Code Quality Tools

This document describes the code quality tools and workflows for the frontend codebase.

## Overview

The frontend uses the following tools to maintain code quality:

- **ESLint** - JavaScript linting and code quality
- **Prettier** - Code formatting for JavaScript, CSS, and HTML
- **npm scripts** - Convenient commands for running quality checks

## Quick Start

### Install Dependencies

```bash
npm install
```

### Run Quality Checks

```bash
# Run all quality checks (lint + format check)
npm run quality

# Or use the convenience script
./quality-check.sh
```

### Auto-Fix Issues

```bash
# Fix linting issues
npm run lint:fix

# Fix formatting issues
npm run format

# Or use the convenience script to fix everything
./quality-fix.sh
```

## Available Commands

### Linting

```bash
# Check for linting issues
npm run lint

# Auto-fix linting issues
npm run lint:fix
```

### Formatting

```bash
# Check if code is formatted correctly
npm run format:check

# Format all code
npm run format
```

### Combined

```bash
# Run all quality checks (no auto-fix)
npm run quality

# Fix all issues automatically
npm run quality:fix
```

## Configuration Files

### ESLint (`.eslintrc.json`)

Configured with:
- ES2021 features
- Browser environment
- ESLint recommended rules
- Prettier integration to avoid conflicts
- Custom rules for code quality

Key rules:
- `no-console`: Warns on console statements (allows warn/error)
- `no-var`: Enforces const/let over var
- `prefer-const`: Prefers const when variable isn't reassigned
- `eqeqeq`: Requires === and !== instead of == and !=

### Prettier (`.prettierrc.json`)

Formatting settings:
- Single quotes for strings
- Semicolons enabled
- 2-space indentation
- 80 character line width
- Trailing commas in ES5 style
- LF line endings

## Development Workflow

### Before Committing

Run quality checks to ensure code meets standards:

```bash
./quality-check.sh
```

If issues are found, fix them:

```bash
./quality-fix.sh
```

### Editor Integration

#### VS Code

Install these extensions:
- ESLint (`dbaeumer.vscode-eslint`)
- Prettier (`esbenp.prettier-vscode`)

Add to `.vscode/settings.json`:
```json
{
  "editor.formatOnSave": true,
  "editor.defaultFormatter": "esbenp.prettier-vscode",
  "eslint.validate": ["javascript"],
  "editor.codeActionsOnSave": {
    "source.fixAll.eslint": true
  }
}
```

#### Other Editors

Most modern editors support ESLint and Prettier plugins. Check your editor's documentation.

## CI/CD Integration

To add quality checks to your CI/CD pipeline:

```yaml
# Example GitHub Actions workflow
- name: Install dependencies
  run: npm install

- name: Run quality checks
  run: npm run quality
```

## Troubleshooting

### "eslint: command not found"

Make sure dependencies are installed:
```bash
npm install
```

### "Parsing error" in ESLint

Check that the file has valid JavaScript syntax. ESLint can't parse files with syntax errors.

### Conflicts Between ESLint and Prettier

The configuration uses `eslint-config-prettier` to disable conflicting rules. If you add custom ESLint rules, make sure they don't conflict with Prettier formatting.

### Files Not Being Checked

Check `.eslintignore` and `.prettierignore` to ensure your files aren't excluded.

## Customization

### Adding New ESLint Rules

Edit `.eslintrc.json` and add rules to the `rules` object:

```json
{
  "rules": {
    "your-rule": "error"
  }
}
```

### Changing Prettier Settings

Edit `.prettierrc.json` with your preferred formatting options.

### Ignoring Files

Add patterns to `.eslintignore` or `.prettierignore` to exclude files from checks.

## Best Practices

1. **Run quality checks before committing** - Catch issues early
2. **Let auto-fix handle formatting** - Don't manually format code
3. **Address linting warnings** - They indicate potential issues
4. **Use editor integration** - Get real-time feedback while coding
5. **Keep configurations consistent** - Don't override settings per-file

## Resources

- [ESLint Documentation](https://eslint.org/docs/latest/)
- [Prettier Documentation](https://prettier.io/docs/en/index.html)
- [ESLint Rules Reference](https://eslint.org/docs/latest/rules/)
- [Prettier Options](https://prettier.io/docs/en/options.html)
