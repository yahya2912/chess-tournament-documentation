# Chess Tournament Documentation

Final documentation repository for the **Chess Club Tournament & Rating Manager**, developed for **Introduction to Database Management Systems** at **THGA Bochum**.

## Project Links

- **Application repository:** https://github.com/yahya2912/chess-club-manager
- **Documentation repository:** https://github.com/yahya2912/chess-tournament-documentation
- **Demo video:** https://youtu.be/xtMlvPf5F0g

## Contents

```text
documentation.tex            Final project documentation
style/thga-db.sty            THGA document style
Makefile                     Local PDF build
.github/workflows/build.yml  GitHub Actions build/release workflow
out/                         Generated PDF output (not committed)
```

The final submission is built as a **single PDF**:

```text
out/documentation.pdf
```

## Build Locally

Requirements:

- `latexmk`
- TeX Live / MacTeX

Build the documentation with:

```bash
make
```

Open the generated PDF on macOS with:

```bash
open out/documentation.pdf
```

Remove build output with:

```bash
make distclean
```

## GitHub Release

The GitHub Actions workflow builds the documentation automatically. A version tag matching `v*` triggers the release process.

Example:

```bash
git tag v1.0.0
git push origin v1.0.0
```

The generated `documentation.pdf` is then attached to the corresponding GitHub Release.

## Project

The application manages chess-club tournaments and Elo ratings using:

- PostgreSQL 16
- FastAPI
- Docker Compose
- Python / tkinter
- Debian packaging (`.deb`)

The documentation follows the structure provided in the professor's DBMS_10 example documentation and covers the data model, PostgreSQL database, FastAPI backend, tkinter frontend, deployment, testing, and reflection.
