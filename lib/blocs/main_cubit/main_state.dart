part of 'main_cubit.dart';

@immutable
abstract class MainState {}

class MainInitial extends MainState {}
class GetNoteLoading extends MainState {}
class GetNoteSuccessfully extends MainState {}
class GetNoteError extends MainState {}
class PostNoteLoading extends MainState {}
class PostNoteSuccessfully extends MainState {}
class PostNoteError extends MainState {}

