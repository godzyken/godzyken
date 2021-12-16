import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:godzyken/app/modules/my_crypto/utils/currency_data_source.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../controllers/my_crypto_controller.dart';

class MyCryptoView extends GetView<MyCryptoController> {
  @override
  Widget build(BuildContext context) {
    return controller.currencyDataSource == null
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : SfDataGrid(
            allowSorting: true,
            defaultColumnWidth: 110,
            frozenColumnsCount: 1,
            source: controller.currencyDataSource!,
            columns: buildGridColumns());
  }

  List<GridColumn> buildGridColumns() => <GridColumn>[
        GridColumn(
          columnName: CurrencyColumn.id.toString(),
          label: buildLabel('ID'),
        ),
        GridColumn(
          columnName: CurrencyColumn.rank.toString(),
          maximumWidth: 80,
          label: buildLabel('Rank'),
        ),
        GridColumn(
          columnName: CurrencyColumn.name.toString(),
          label: buildLabel('Name'),
        ),
        GridColumn(
          columnName: CurrencyColumn.price.toString(),
          label: buildLabel('Price'),
        ),
        GridColumn(
          columnName: CurrencyColumn.oneHChange.toString(),
          label: buildLabel('One H Change'),
        ),
        GridColumn(
          columnName: CurrencyColumn.oneDChange.toString(),
          label: buildLabel('One D Change'),
        ),
        GridColumn(
          columnName: CurrencyColumn.marketCap.toString(),
          label: buildLabel('market Cap'),
        ),
      ];

  Widget buildLabel(String? text) => Text(
        text!,
      );
}
