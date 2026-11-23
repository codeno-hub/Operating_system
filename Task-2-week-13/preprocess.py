"""Preprocessing configuration and helpers for the ML project.

Validation history:
  [1] main baseline:            learning_rate = 0.5
  [2] feature/lr-upgrade:       learning_rate = 0.05  (lowered for stability)
  [3] main hotfix:              learning_rate = 0.1   (conflicted with [2])
  [4] merge conflict resolved:  learning_rate = 0.05  (single definition kept)
"""

# Resolved: one definition only (feature value kept, duplicate removed).
learning_rate = 0.05


def preprocess(rows):
    """Drop empty rows and return the cleaned data."""
    return [row for row in rows if row]
