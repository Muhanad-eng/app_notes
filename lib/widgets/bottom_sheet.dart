import 'package:app_note/cubits/add%20note%20cubit/add_note_cubit.dart';
import 'package:app_note/widgets/add_note_form.dart';
import 'package:app_note/widgets/custom_button.dart';
import 'package:app_note/widgets/custtom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class CusttomBottomSheet extends StatelessWidget {
  const CusttomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: BlocConsumer(
          listener: (BuildContext context, state) {
            if (state is AddNoteLoading) {
              Navigator.pop(context);
            }
            if (state is AddNoteFailure) {
              print("failed ${state.errMessage}");
            }
          },
          builder: (BuildContext context, Object? state) {
            return ModalProgressHUD(
                inAsyncCall: state is AddNoteLoading ? true : false,
                child: const AddNoteForm());
          },
        ),
      ),
    );
  }
}
