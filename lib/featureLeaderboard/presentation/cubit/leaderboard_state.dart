part of 'leaderboard_cubit.dart';

abstract class LeaderboardState extends Equatable {
  const LeaderboardState();

  @override
  List<Object?> get props => [];
}

class LeaderboardInitial extends LeaderboardState {}

class LeaderboardLoading extends LeaderboardState {}

class LeaderboardLoaded extends LeaderboardState {
  final List<LeaderboardUser> users;
  const LeaderboardLoaded(this.users);

  @override
  List<Object?> get props => [users];
}

class LeaderboardError extends LeaderboardState {
  final String message;
  const LeaderboardError(this.message);

  @override
  List<Object?> get props => [message];
}
