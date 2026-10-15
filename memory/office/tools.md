# Installed tools and formats

Technical inventory: Claude updates it on its own (skill `get-tools`) every time it
installs, tests or discards something. The user does not need to read it.

operating_system: (to be written at the first start: Windows / macOS / Linux, with version)
base_tools_status: TO_INSTALL

## Formats: how they are read and written
| Format | Read | Write/convert | Checked on |
|---|---|---|---|
| PDF | Claude reads it directly; text: pdfplumber; scans: Tesseract | skill `pdf` | |
| DOCX / DOC | pandoc, python-docx; DOC → LibreOffice | skill `docx` | |
| XLSX / XLS | openpyxl, pandas; XLS → LibreOffice | skill `xlsx` | |
| RTF | pandoc or LibreOffice | LibreOffice | |
| P7M (signed files) | to get when needed | — | |
| Photos / images | Claude reads them directly | Pillow | |

## Programs
| Program | Version | Where from | Command that works | Date |
|---|---|---|---|---|

## Skills installed from outside
| Skill | Source | Checked (what I verified) | Date |
|---|---|---|---|

## Tried and discarded
| What | Why | Date |
|---|---|---|
