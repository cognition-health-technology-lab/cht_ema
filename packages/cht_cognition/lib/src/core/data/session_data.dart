import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_data.freezed.dart';

@freezed
abstract class SessionData with _$SessionData {
  const factory SessionData({
    required String participantId,
    required String sessionId,
    required DateTime startTime,
    required DateTime endTime,
  }) = _SessionData;
}
