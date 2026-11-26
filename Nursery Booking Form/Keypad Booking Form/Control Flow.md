# Program Control Flow

[Back to project](README.md)

```mermaid
flowchart TD
A["Initialize LCD"] --> B["Read category"]
B --> C["Read service option"]
C --> D{"Option 1 or 2?"}
D -->|No| E["Display error"]
E --> C
D -->|Yes| F["Store selections"]
F --> G["Idle"]
```
