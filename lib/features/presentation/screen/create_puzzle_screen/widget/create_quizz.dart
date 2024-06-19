import 'package:flutter/material.dart';
import 'package:puzzle/features/presentation/screen/create_puzzle_screen/widget/custome_textfield.dart';

class QuizzModel {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController aController = TextEditingController();
  final TextEditingController bController = TextEditingController();
  final TextEditingController cController = TextEditingController();
  final TextEditingController dController = TextEditingController();
  final TextEditingController anwer = TextEditingController(text: "a");
  QuizzModel();
}

class CreateQuizz extends StatefulWidget {
  const CreateQuizz({
    super.key,
    required this.quizzModel,
    required this.index,
  });
  final QuizzModel quizzModel;
  final int index;
  @override
  State<CreateQuizz> createState() => _CreateQuizzState();
}

class _CreateQuizzState extends State<CreateQuizz> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CustomeTextField(
          title: "Nội dung câu đố ${widget.index}",
          hint: "Nội dung câu đố ${widget.index}",
          controller: widget.quizzModel.titleController,
        ),
        Row(
          children: [
            Expanded(
                child: CustomeTextField(
              hint: "Đáp án A",
              controller: widget.quizzModel.aController,
              backgroudColor: widget.quizzModel.anwer.text == "a" ? Colors.green : null,
              widget: Checkbox(
                  value: widget.quizzModel.anwer.text == "a",
                  onChanged: (value) {
                    if (value == true) {
                      setState(() {
                        widget.quizzModel.anwer.text = "a";
                      });
                    }
                  }),
            )),
            const SizedBox(
              width: 10,
            ),
            Expanded(
                child: CustomeTextField(
              hint: "Đáp án B",
              controller: widget.quizzModel.bController,
              backgroudColor: widget.quizzModel.anwer.text == "b" ? Colors.green : null,
              widget: Checkbox(
                  value: widget.quizzModel.anwer.text == "b",
                  onChanged: (value) {
                    if (value == true) {
                      setState(() {
                        widget.quizzModel.anwer.text = "b";
                      });
                    }
                  }),
            ))
          ],
        ),
        Row(
          children: [
            Expanded(
                child: CustomeTextField(
              hint: "Đáp án C",
              controller: widget.quizzModel.cController,
              backgroudColor: widget.quizzModel.anwer.text == "c" ? Colors.green : null,
              widget: Checkbox(
                  value: widget.quizzModel.anwer.text == "c",
                  onChanged: (value) {
                    if (value == true) {
                      setState(() {
                        widget.quizzModel.anwer.text = "c";
                      });
                    }
                  }),
            )),
            const SizedBox(
              width: 10,
            ),
            Expanded(
                child: CustomeTextField(
              hint: "Đáp án D",
              controller: widget.quizzModel.dController,
              backgroudColor: widget.quizzModel.anwer.text == "d" ? Colors.green : null,
              widget: Checkbox(
                  value: widget.quizzModel.anwer.text == "d",
                  onChanged: (value) {
                    if (value == true) {
                      setState(() {
                        widget.quizzModel.anwer.text = "d";
                      });
                    }
                  }),
            ))
          ],
        )
      ],
    );
  }
}
