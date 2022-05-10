import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note.dart';
import 'package:notes_app/services/remote/dio_helper.dart';
part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainInitial());
  static MainCubit get(context) => BlocProvider.of(context);
  Note? note;
  void getNote() {
    emit(GetNoteLoading());
    DioHelper.getData(url: "user/", query: {}).then((value) {
      note = Note.fromJson(value.data);
      emit(GetNoteSuccessfully());
    }).catchError((error) {
      print("error is: $error");
      emit(PostNoteLoading());
    });
  }

  void addNote() {
    emit(PostNoteLoading());
    DioHelper.postData(url: "/user", query: {});
  }
}