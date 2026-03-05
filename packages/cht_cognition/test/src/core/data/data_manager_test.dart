import 'package:cht_cognition/src/core/data/data_manager.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late DataManager dataManager;

  setUp(() {
    dataManager = DataManager(
      participantId: 'p1',
      sessionId: 's1',
    );
  });
  group('addTrialData', () {
    test(
      'adds a model with the correct trial data.',
      () {
        final startTime = DateTime.now();
        final endTime = startTime.add(const Duration(seconds: 5));
        dataManager.addTrialData(
          stim: 'stim1',
          response: 'response1',
          startTime: startTime,
          endTime: endTime,
        );

        final actualTrial = dataManager.trialData.first;

        expect(actualTrial.stim, 'stim1');
        expect(actualTrial.response, 'response1');
        expect(actualTrial.startTime, startTime);
        expect(actualTrial.endTime, endTime);
        expect(actualTrial.participantId, 'p1');
        expect(actualTrial.sessionId, 's1');
      },
    );
  });
  group('export', () {
    test(
      'When adding a single trial, contains correct session and trial data.',
      () {
        final startTime = DateTime.now();
        final endTime = startTime.add(const Duration(seconds: 5));

        dataManager.addTrialData(
          stim: 'stim1',
          response: 'response1',
          startTime: startTime,
          endTime: endTime,
        );

        dataManager.startTime = startTime;
        dataManager.endTime = endTime;
        final cognitiveData = dataManager.export();

        expect(cognitiveData.sessionData.participantId, 'p1');
        expect(cognitiveData.sessionData.sessionId, 's1');
        expect(cognitiveData.sessionData.startTime, startTime);
        expect(cognitiveData.sessionData.endTime, endTime);

        expect(cognitiveData.trialData.length, 1);
        final actualTrial = cognitiveData.trialData.first;
        expect(actualTrial.stim, 'stim1');
        expect(actualTrial.response, 'response1');
        expect(actualTrial.startTime, startTime);
        expect(actualTrial.endTime, endTime);
        expect(actualTrial.participantId, 'p1');
        expect(actualTrial.sessionId, 's1');
      },
    );
    test(
      'When adding two trials, contains correct session and trial data.',
      () {
        final startTime1 = DateTime.now();
        final endTime1 = startTime1.add(const Duration(seconds: 5));

        dataManager.addTrialData(
          stim: 'stim1',
          response: 'response1',
          startTime: startTime1,
          endTime: endTime1,
        );

        final startTime2 = DateTime.now();
        final endTime2 = startTime2.add(const Duration(seconds: 5));
        dataManager.addTrialData(
          stim: 'stim2',
          response: 'response2',
          startTime: startTime2,
          endTime: endTime2,
        );

        dataManager.startTime = startTime1;
        dataManager.endTime = endTime2;
        final cognitiveData = dataManager.export();

        expect(cognitiveData.sessionData.participantId, 'p1');
        expect(cognitiveData.sessionData.sessionId, 's1');
        expect(cognitiveData.sessionData.startTime, startTime1);
        expect(cognitiveData.sessionData.endTime, endTime2);

        expect(cognitiveData.trialData.length, 2);

        final actualTrial1 = cognitiveData.trialData.first;
        expect(actualTrial1.stim, 'stim1');
        expect(actualTrial1.response, 'response1');
        expect(actualTrial1.startTime, startTime1);
        expect(actualTrial1.endTime, endTime1);
        expect(actualTrial1.participantId, 'p1');
        expect(actualTrial1.sessionId, 's1');

        final actualTrial2 = cognitiveData.trialData.last;
        expect(actualTrial2.stim, 'stim2');
        expect(actualTrial2.response, 'response2');
        expect(actualTrial2.startTime, startTime2);
        expect(actualTrial2.endTime, endTime2);
        expect(actualTrial2.participantId, 'p1');
        expect(actualTrial2.sessionId, 's1');
      },
    );
  });
}
