---

### Task 2: Parallel Feature Workflows & Merge Conflict Resolution

**Recommended Repo Name:** `git-branch-conflict-pipeline`

#### `README.md`
```markdown
# Parallel Feature Workflows & Merge Conflict Resolution

Simulation of collaborative Git branching workflows, manual inline merge conflict resolution across ML configuration files, and background training automation with log redirection.

## Workflow Summary

1. **Parallel Feature Branching**
   Created an isolated feature branch (`git checkout -b <branch-name>`) to modify hyperparameters (`learning_rate = 0.05` in `src/preprocess.py`) and dependency variants without affecting the main branch.

2. **Merge Conflict Resolution**
   Simulated concurrent edits to identical lines across branches, resolved the resulting inline conflict markers manually, and finalized consolidation:
   ```bash
   git add src/preprocess.py requirements.txt
   git commit -m "Resolve merge conflict in preprocessing hyperparameters"
