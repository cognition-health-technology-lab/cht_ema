import 'dart:collection';

class TrialManager<T> {
  late List<T> _originalTrials;
  final List<T> _usedTrials = <T>[];
  final List<T> _unusedTrials = <T>[];
  late T _currentTrial;

  TrialManager({required List<T> trials}) {
    if (trials.isEmpty) {
      throw ArgumentError.value(
        trials,
        'trials',
        'trials list cannot be empty',
      );
    }
    _originalTrials = List<T>.unmodifiable(trials);
    _currentTrial = trials.first;
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
    if (_unusedTrials.isEmpty) {
      throw StateError('No more trials available');
    }
    _currentTrial = _unusedTrials.removeAt(0);
    _usedTrials.add(_currentTrial);
    return _currentTrial;
  }
}
