// ignore_for_file: must_be_immutable

part of 'profile_stats_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileStats widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileStatsEvent extends Equatable {}

/// Event that is dispatched when the ProfileStats widget is first created.
class ProfileStatsInitialEvent extends ProfileStatsEvent {
  @override
  List<Object?> get props => [];
}
