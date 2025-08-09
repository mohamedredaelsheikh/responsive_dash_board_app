import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: "Customer name",
                hint: "Type customer name",
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                title: "Customer Email",
                hint: "Type customer name",
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: "Item name",
                hint: "Type customer name",
              ),
            ),
            SizedBox(width: 16),
            Expanded(child: TitleTextField(title: "Item name", hint: "USD")),
          ],
        ),
      ],
    );
  }
}
