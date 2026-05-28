# Design document for the CHT Cognition package

## Architecture

- MVVM (Model-View-ViewModel) pattern and migrate/extend to a clean architecture as needed based
  on complexity.

## Design

#### Overview

We will design a general cognitive task object to standardize how cognitive tasks are created. We will
then have each specific cognitive task pass its configuration to the general cognitive task.

Reusable components will be created to handle common functionality, like data managers.

### General cognitive task

- Responsible for implementing the general structure and control flow of cognitive tasks.
- Accepts views and configurations from specific tasks.

### Specific cognitive tasks

- Responsible for defining task-specific views and configurations.
- Enables users to customize tasks without modifying the core logic.
- Enables users to determine how to process data
- Enables users to determine how to navigate after task completion.

### Reusable components

- Responsible for handling common functionality across different cognitive tasks, like data and stimuli management.
