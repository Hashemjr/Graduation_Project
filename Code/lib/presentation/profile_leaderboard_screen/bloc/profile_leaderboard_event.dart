// ignore_for_file: must_be_immutable

part of 'profile_leaderboard_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileLeaderboard widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileLeaderboardEvent extends Equatable {}

/// Event that is dispatched when the ProfileLeaderboard widget is first created.
class ProfileLeaderboardInitialEvent extends ProfileLeaderboardEvent {
  @override
  List<Object?> get props => [];
}
