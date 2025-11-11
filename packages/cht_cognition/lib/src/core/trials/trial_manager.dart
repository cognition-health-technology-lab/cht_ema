import 'dart:collection';

class TrialManager<T> {
  final List<T> _originalTrials;
  final List<T> _usedTrials = <T>[];
  final List<T> _unusedTrials = <T>[];
  T _currentTrial;

  TrialManager({required List<T> trials})
    : _originalTrials = List.unmodifiable(trials),
      _currentTrial = trials.first {
    _usedTrials.add(_currentTrial);
    _unusedTrials.addAll(trials.sublist(1));
  }

  T get currentTrial => _currentTrial;
  List<T> get originalTrials => UnmodifiableListView(_originalTrials);
  List<T> get usedTrials => UnmodifiableListView(_usedTrials);
  List<T> get unusedTrials => UnmodifiableListView(_unusedTrials);

  int get originalCount => _originalTrials.length;
  int get usedCount => _usedTrials.length;
  int get unusedCount => _unusedTrials.length;

  T nextTrial() {
    _currentTrial = _unusedTrials.removeAt(0);
    _usedTrials.add(_currentTrial);
    return _currentTrial;
  }
}
