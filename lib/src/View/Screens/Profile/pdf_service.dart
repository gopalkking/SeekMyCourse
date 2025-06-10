import 'dart:io';

import 'package:flutter/services.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:seek_my_course/src/View/Utilies/images.dart';

class PdfServices {
  Future<void> savepdfFile(String fileName, Uint8List byteList) async {
    final output = await getTemporaryDirectory();
    var filePath = "${output.path}/$fileName.pdf";
    final file = File(filePath);
    await file.writeAsBytes(byteList);
    await OpenFile.open(filePath);
  }

  Future<Uint8List> generateSubscriptionInvoice() async {
    final pdf = pw.Document();
    final Uint8List imageBytes = await rootBundle
        .load(AppImages.morpheus)
        .then((data) => data.buffer.asUint8List());
    final Uint8List morpheusCodeBytes = await rootBundle
        .load(AppImages.morpheusCode)
        .then((data) => data.buffer.asUint8List());
    final pw.ImageProvider logoImage = pw.MemoryImage(imageBytes);
    final pw.ImageProvider morpheusCode = pw.MemoryImage(morpheusCodeBytes);
    final fontData = await rootBundle.load('assets/fonts/NotoSans-Regular.ttf');
    final ttf = pw.Font.ttf(fontData);
    pdf.addPage(
      pw.MultiPage(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return [
            pw.Container(
              padding: pw.EdgeInsets.all(18),
              decoration: pw.BoxDecoration(
                border: pw.Border.all(color: PdfColors.black, width: 2),
                color: PdfColors.white,
              ),
              child: pw.Column(
                children: [
                  _rowText("Commission Slip No: ", "MCTLLP/01"),
                  pw.SizedBox(height: 8),
                  pw.Align(
                    alignment: pw.Alignment.topRight,
                    child: pw.Column(
                      children: [
                        pw.Image(logoImage, height: 26, width: 180),
                        pw.Image(morpheusCode, height: 26, width: 180),
                      ],
                    ),
                  ),
                  pw.SizedBox(height: 8),
                  _rowText("Product: ", " SeekMYCOURSE Subscription"),
                  pw.SizedBox(height: 8),
                  _rowText("Plan: ", "Basic"),
                  pw.SizedBox(height: 8),
                  _rowText("Billing Type: ", "Monthly"),
                  pw.SizedBox(height: 8),
                  _rowText("Purchase Date: ", "01-Jan-2025"),
                  pw.SizedBox(height: 8),
                  _rowText("Plan Expiry Date: ", "31-Jan-2025"),
                  pw.SizedBox(height: 8),
                  _rowText("User Id: ", "102345698"),
                  pw.SizedBox(height: 16),
                  pw.Container(
                    padding: pw.EdgeInsets.all(16),
                    decoration: pw.BoxDecoration(
                      border: pw.Border.all(color: PdfColors.black, width: 2),
                    ),
                    child: _rowText("Payment ID: ", "asdafdsfadfdffd"),
                  ),
                  pw.SizedBox(height: 16),
                  pw.Table(
                    border: pw.TableBorder.all(
                      color: PdfColors.black,
                      width: 2,
                    ),
                    columnWidths: {
                      0: pw.FixedColumnWidth(150),
                      1: pw.FixedColumnWidth(109),
                    },
                    children: [
                      pw.TableRow(
                        children: [
                          _tableText("Services", ttf),
                          _tableText("Period", ttf),
                          _tableText("Amount", ttf),
                        ],
                      ),
                      pw.TableRow(
                        children: [
                          _tableText("SeekMYCOURSEYearly Subscription", ttf),
                          _tableText("01-Jan-2025 to 01-Jan-2026", ttf),
                          _tableText("₹1999.00", ttf),
                        ],
                      ),
                    ],
                  ),
                  pw.Table(
                    border: pw.TableBorder.all(
                      color: PdfColors.black,
                      width: 2,
                    ),
                    columnWidths: {0: pw.FixedColumnWidth(255)},
                    children: [
                      pw.TableRow(
                        children: [
                          _tableText("Subtotal :", ttf),
                          _tableText("₹1999.00", ttf),
                        ],
                      ),
                      pw.TableRow(
                        children: [
                          _tableText("Tax(GST) :", ttf),
                          _tableText("₹360.00", ttf),
                        ],
                      ),
                      pw.TableRow(
                        children: [
                          pw.Padding(
                            padding: pw.EdgeInsets.all(16.0),
                            child: pw.Text(
                              "TOTAL :",
                              style: pw.TextStyle(
                                color: PdfColors.black,
                                fontWeight: pw.FontWeight.bold,
                              ),
                              textAlign: pw.TextAlign.center,
                            ),
                          ),
                          _tableText("₹1999.00", ttf),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ];
        },
      ),
    );
    return pdf.save();
  }

  Future<Uint8List> generatePayoutInvoice() async {
    final pdf = pw.Document();
    final Uint8List imageBytes = await rootBundle
        .load(AppImages.morpheus)
        .then((data) => data.buffer.asUint8List());
    final Uint8List morpheusCodeBytes = await rootBundle
        .load(AppImages.morpheusCode)
        .then((data) => data.buffer.asUint8List());
    final pw.ImageProvider logoImage = pw.MemoryImage(imageBytes);
    final pw.ImageProvider morpheusCode = pw.MemoryImage(morpheusCodeBytes);
    final fontData = await rootBundle.load('assets/fonts/NotoSans-Regular.ttf');
    final ttf = pw.Font.ttf(fontData);
    pdf.addPage(
      pw.MultiPage(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return [
            pw.Container(
              padding: pw.EdgeInsets.all(16),
              decoration: pw.BoxDecoration(
                border: pw.Border.all(color: PdfColors.black, width: 2),
                color: PdfColors.white,
              ),
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  _rowText("Commission Slip No: ", "MCTLLP/01"),
                  pw.SizedBox(height: 8),
                  pw.Align(
                    alignment: pw.Alignment.topRight,
                    child: pw.Column(
                      children: [
                        pw.Image(logoImage, height: 26, width: 180),
                        pw.Image(morpheusCode, height: 26, width: 180),
                      ],
                    ),
                  ),
                  pw.SizedBox(height: 8),
                  _rowText("Date: ", "01-Jan-2025"),
                  pw.SizedBox(height: 8),
                  _rowText("Pay Period: ", "Dec:2025"),
                  pw.SizedBox(height: 8),
                  _rowText("Product: ", "Seek My Course"),
                  pw.SizedBox(height: 8),
                  _rowText(
                    "Link: ",
                    "https ://app.seekmysourse.com/signup/12345687898",
                  ),
                  pw.SizedBox(height: 8),
                  _rowText("User Name: ", "Vishnu Nair"),
                  pw.SizedBox(height: 8),
                  _rowText("User Id: ", "102345698"),
                  pw.SizedBox(height: 16),
                  pw.Container(
                    width: double.infinity,
                    padding: pw.EdgeInsets.all(8),
                    decoration: pw.BoxDecoration(
                      border: pw.Border(top: pw.BorderSide(color: PdfColors.black, width: 2),left: pw.BorderSide(color: PdfColors.black, width: 2),right: pw.BorderSide(color: PdfColors.black, width: 2) ),
                    ),
                    child: pw.Text(
                      'Earnings',
                      style: pw.TextStyle(fontSize: 14, color: PdfColors.black),
                      textAlign: pw.TextAlign.center,
                    ),
                  ),
                  pw.Table(
                    border: pw.TableBorder.all(
                      color: PdfColors.black,
                      width: 2,
                    ),
                    columnWidths: {
                      0: pw.FixedColumnWidth(60),
                      1: pw.FlexColumnWidth(2.1),
                      2: pw.FlexColumnWidth(3),
                      3: pw.FlexColumnWidth(3),
                    },
                    children: [
                      pw.TableRow(
                        children: [
                          _tableText("Sr.NO", ttf),
                          _tableText("Date", ttf),
                          _tableText("Total Paid Signups", ttf),
                          _tableText("Commission Earned", ttf),
                        ],
                      ),
                      pw.TableRow(
                        children: [
                          _tableText("01", ttf),
                          _tableText("01-Jan-2025", ttf),
                          _tableText("100", ttf),
                          _tableText("₹ 3500.00", ttf),
                        ],
                      ),
                    ],
                  ),
                  pw.Table(
                    border: pw.TableBorder.all(
                      color: PdfColors.black,
                      width: 2,
                    ),
                    columnWidths: {
                      0: pw.FlexColumnWidth(2.1),
                      1: pw.FlexColumnWidth(),
                    },
                    children: [
                      pw.TableRow(
                        children: [
                          _tableText("Gross Earnings", ttf),
                          _tableText("₹ 3500.00", ttf),
                        ],
                      ),
                    ],
                  ),
                  pw.SizedBox(height: 16),
                  pw.Container(
                    padding: pw.EdgeInsets.all(8),
                    width: double.infinity,
                    decoration: pw.BoxDecoration(
                     border: pw.Border(top: pw.BorderSide(color: PdfColors.black, width: 2),left: pw.BorderSide(color: PdfColors.black, width: 2),right: pw.BorderSide(color: PdfColors.black, width: 2) ),
                    ),
                    child: pw.Text(
                      'Deductions',
                      style: pw.TextStyle(fontSize: 14, color: PdfColors.black),
                      textAlign: pw.TextAlign.center,
                    ),
                  ),
                  pw.Table(
                    border: pw.TableBorder.all(
                      color: PdfColors.black,
                      width: 2,
                    ),
                    columnWidths: {
                      0: pw.FixedColumnWidth(61),
                      1: pw.FlexColumnWidth(3.4),
                      2: pw.FlexColumnWidth(2),
                    },
                    children: [
                      pw.TableRow(
                        children: [
                          _tableText("Sr.NO", ttf),
                          _tableText("Deduction", ttf),
                          _tableText("Amount", ttf),
                        ],
                      ),
                      pw.TableRow(
                        children: [
                          _tableText("01", ttf),
                          _tableText("TDS (Tax Deducted at Source)", ttf),
                          _tableText("₹ 350.00", ttf),
                        ],
                      ),
                    ],
                  ),
                  pw.Table(
                    border: pw.TableBorder.all(
                      color: PdfColors.black,
                      width: 2,
                    ),
                    columnWidths: {
                      0: pw.FlexColumnWidth(2.1),
                      1: pw.FlexColumnWidth(),
                    },
                    children: [
                      pw.TableRow(
                        children: [
                          _tableText("Total Deductions", ttf),
                          _tableText("₹ 350.00", ttf),
                        ],
                      ),
                      pw.TableRow(
                        children: [
                          _tableText("Net Earnings", ttf),
                          _tableText("₹ 3250.00", ttf),
                        ],
                      ),
                    ],
                  ),
                  pw.SizedBox(height: 16),
                  _rowText(
                    "In words: ",
                    "Three Thousand Two Hundred and Fifty Only",
                  ),
                  pw.SizedBox(height: 8),
                  pw.Text(
                    'Transaction Details',
                    style: pw.TextStyle(
                      fontSize: 14,
                      color: PdfColors.black,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                  pw.SizedBox(height: 8),
                  _rowText("Bank Name: ", "Axis Bank"),
                  pw.SizedBox(height: 8),
                  _rowText("Account Number: ", "102457894561"),
                  pw.SizedBox(height: 8),
                  _rowText("IFSC Code: ", "UIF2349876"),
                  pw.SizedBox(height: 8),
                  _rowText("Account Holder Name: ", "Vishnu Nair"),
                  pw.SizedBox(height: 8),
                  _rowText("Transaction Date: ", "01-Jan-2025"),
                  pw.SizedBox(height: 8),
                  _rowText("Transaction ID: ", "657894579888"),
                  pw.SizedBox(height: 8),
                  _rowText("Status: ", "Completed"),
                ],
              ),
            ),
          ];
        },
      ),
    );
    return pdf.save();
  }

  pw.Widget _rowText(String text, String answer) {
    return pw.Row(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Text(
          text,
          style: pw.TextStyle(fontSize: 10, color: PdfColors.black),
        ),
        pw.Flexible(
          flex: 2,
          child: pw.Text(
            answer,
            style: pw.TextStyle(fontSize: 10, color: PdfColors.black),
          ),
        ),
      ],
    );
  }

  pw.Widget _tableText(String text, pw.Font font) {
    return pw.Padding(
      padding: pw.EdgeInsets.all(8),
      child: pw.Text(
        text,
        style: pw.TextStyle(
          font: font,
          fontSize: 10,
          fontWeight: pw.FontWeight.normal,
        ),
        textAlign: pw.TextAlign.center,
      ),
    );
  }
}
