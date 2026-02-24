import 'package:cht_cognition/src/core/data/data_manager.dart';
import 'package:cht_cognition/src/core/data/trial_data.dart';
import 'package:cht_cognition/src/core/state/cognitive_task_state.dart';
import 'package:cht_cognition/src/core/trials/trial.dart';
import 'package:cht_cognition/src/core/trials/trial_manager.dart';
import 'package:cht_cognition/src/core/view_model.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';

final List<Trial<int>> trialList = [
  const Trial<int>(
    stim: 1,
  ),
  const Trial<int>(
    stim: 2,
  ),
  const Trial<int>(
    stim: 3,
  ),
  const Trial<int>(
    stim: 4,
  ),
  const Trial<int>(
    stim: 5,
  ),
  const Trial<int>(
    stim: 6,
  ),
];

const itiDuration = Duration(milliseconds: 1);

class TestViewModel extends ViewModel<Trial<int>> {
  int onTrialCallCount = 0;

  TestViewModel({
    required List<Trial<int>> trials,
    super.trialTimeoutDuration,
    super.restEveryNTrials = 5,
  }) : super(
         trialManager: TrialManager<Trial<int>>(trials: trials),
         dataManager: DataManager(participantId: 'p1', sessionId: 's1'),
         itiDuration: itiDuration,
       );

  @override
  void onTrial({required String response}) {
    onTrialCallCount++;
    super.onTrial(response: response);
  }
}

void main() {
  late TestViewModel viewModel;
  final trialData = TrialData(
    participantId: 'p1',
    sessionId: 's1',
    stim: 'stim1',
    response: 'stim1',
    startTime: DateTime.now(),
    endTime: DateTime.now(),
  );

  setUp(() {
    viewModel = TestViewModel(trials: trialList);
  });

  group(
    'ViewModel',
    () {
      test(
        'When the view model starts, the initial state is instructions.',
        () {
          expect(
            viewModel.state,
            equals(const CognitiveTaskState<Trial<int>>.instructions()),
          );
        },
      );
    },
  );
  group(
    'ViewModel.onInstructions',
    () {
      test(
        'When onInstructions is called, state changes to trial and it contains the first original trial.',
        () {
          viewModel.onInstructions();
          expect(
            viewModel.state,
            equals(CognitiveTaskState<Trial<int>>.trial(trial: trialList[0])),
          );
        },
      );
    },
  );
  group(
    'ViewModel.shouldRest',
    () {
      test(
        'shouldRest returns false when task starts.',
        () {
          final shouldRest = viewModel.shouldRest();
          expect(shouldRest, isFalse);
        },
      );
      test(
        'shouldRest returns true when rest criteria is met.',
        () {
          viewModel.onInstructions();
          viewModel.onTrial(
            response: trialData.response,
          );
          viewModel.onTrial(
            response: trialData.response,
          );
          viewModel.onTrial(
            response: trialData.response,
          );
          viewModel.onTrial(
            response: trialData.response,
          );
          viewModel.onTrial(
            response: trialData.response,
          );
          final shouldRest = viewModel.shouldRest();
          expect(shouldRest, isTrue);
        },
      );
      test(
        'shouldRest returns false if rest criteria is unmet.',
        () {
          viewModel.onInstructions();
          viewModel.onTrial(
            response: trialData.response,
          );
          viewModel.onRest();
          final shouldRest = viewModel.shouldRest();
          expect(shouldRest, isFalse);
        },
      );
      test(
        'shouldRest returns false if rests are disabled.',
        () {
          final testSpecificViewModel = TestViewModel(
            trials: trialList,
            restEveryNTrials: null,
          );
          testSpecificViewModel.onInstructions();
          testSpecificViewModel.onTrial(
            response: trialData.response,
          );
          testSpecificViewModel.onRest();
          final shouldRest = testSpecificViewModel.shouldRest();
          expect(shouldRest, isFalse);
        },
      );
    },
  );
  group('onRest', () {
    test(
      'After onRest, state changes to trial and it contains the second original trial.',
      () {
        fakeAsync((async) {
          viewModel.onRest();
          async.elapse(itiDuration);
          expect(
            viewModel.state,
            equals(CognitiveTaskState<Trial<int>>.trial(trial: trialList[1])),
          );
        });
      },
    );
  });
  group(
    'ViewModel.shouldFinish',
    () {
      test(
        'shouldFinish returns false, when finish criteria is met.',
        () {
          final shouldFinish = viewModel.shouldFinish();
          expect(shouldFinish, isFalse);
        },
      );
      test(
        'shouldFinish returns true, when finish criteria is unmet.',
        () {
          viewModel.onInstructions();
          viewModel.onTrial(
            response: trialData.response,
          );
          viewModel.onTrial(
            response: trialData.response,
          );
          viewModel.onRest();
          viewModel.onTrial(
            response: trialData.response,
          );
          viewModel.onRest();
          final shouldFinish = viewModel.shouldFinish();
          expect(shouldFinish, isTrue);
        },
      );
    },
  );
  group('onTrial', () {
    test('When the rest criteria is met, state changes to rest', () {
      viewModel.onInstructions();
      viewModel.onTrial(
        response: trialData.response,
      );
      viewModel.onTrial(
        response: trialData.response,
      );
      viewModel.onTrial(
        response: trialData.response,
      );
      viewModel.onTrial(
        response: trialData.response,
      );
      viewModel.onTrial(
        response: trialData.response,
      );

      // ignore: prefer_const_constructors - Using const causes an error associated with freezed objects, not an actual error. Test passes without issue.
      final expectedState = CognitiveTaskState<Trial<int>>.rest();
      expect(viewModel.state, expectedState);
    });
    test(
      'When the finished criteria is met, state changes to finished',
      () {
        viewModel.onInstructions();
        viewModel.onTrial(
          response: trialData.response,
        );
        viewModel.onTrial(
          response: trialData.response,
        );
        viewModel.onRest();
        viewModel.onTrial(
          response: trialData.response,
        );
        viewModel.onTrial(
          response: trialData.response,
        );
        viewModel.onRest();
        viewModel.onTrial(
          response: trialData.response,
        );

        // ignore: prefer_const_constructors - Using const causes an error associated with freezed objects, not an actual error. Test passes without issue.
        final expectedState = CognitiveTaskState<Trial<int>>.finished();
        expect(viewModel.state, expectedState);
      },
    );
    test(
      'If rest nor finished criteria are met, state changes to ITI and then to '
      'trial containing next trial.',
      () {
        fakeAsync((async) {
          viewModel.onInstructions();
          viewModel.onTrial(
            response: trialData.response,
          );

          expect(viewModel.state, const CognitiveTaskState<Trial<int>>.iti());

          async.elapse(itiDuration);
          final expectedState = CognitiveTaskState<Trial<int>>.trial(
            trial: trialList[1],
          );
          expect(viewModel.state, expectedState);
        });
      },
    );
  });
  group('_setupTrialTimeout', () {
    test(
      'finishes trial after timeout duration. It is tested indirectly through '
      'calling onInstructions, which calls _onEnterTrial, '
      'which actually calls _setupTrialTimeout.',
      () {
        fakeAsync((async) {
          const timeout = Duration(seconds: 2);
          viewModel = TestViewModel(
            trials: trialList,
            trialTimeoutDuration: timeout,
          );

          viewModel.onInstructions();
          async.elapse(timeout - const Duration(milliseconds: 500));
          expect(viewModel.onTrialCallCount, 0);

          async.elapse(timeout);
          expect(viewModel.onTrialCallCount, 1);
        });
      },
    );
    test(
      'cancels the timeout timer if a response is submitted. Tested indirectly '
      'through calling onInstructions, which calls _onEnterTrial, '
      'which actually calls _setupTrialTimeout.',
      () {
        fakeAsync((async) {
          const timeout = Duration(seconds: 2);
          viewModel = TestViewModel(
            trials: List.from([trialList.first]),
            trialTimeoutDuration: timeout,
          );

          viewModel.onInstructions();
          viewModel.onTrial(response: 'tap');
          expect(viewModel.onTrialCallCount, 1);

          async.elapse(timeout);
          expect(viewModel.onTrialCallCount, 1);
        });
      },
    );
  });
}
