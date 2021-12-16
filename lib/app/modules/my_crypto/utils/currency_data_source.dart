import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../currencies_ticker_model.dart';

enum CurrencyColumn { id, rank, name, price, oneHChange, oneDChange, marketCap }

class CurrencyDataSource extends DataGridSource {
  late List<DataGridRow> _currencies;

  CurrencyDataSource({required List<CurrenciesTicker?> currencies}) {
    buildDataGrid(currencies);
  }

  @override
  DataGridRowAdapter? buildRow(DataGridRow? row) => DataGridRowAdapter(
          cells: row!.getCells().map<Widget>((dataGridCell) {
        final CurrencyComparable? currencyComparable = dataGridCell.value;
        final currency = currencyComparable!.currency;
        final column = CurrencyColumn.values
            .firstWhere((value) => value.toString() == dataGridCell.columnName);

        switch (column) {
          case CurrencyColumn.id:
            return buildIdRow(currency);
          case CurrencyColumn.rank:
            return buildRankRow(currency);
          case CurrencyColumn.name:
            return buildNameRow(currency);
          case CurrencyColumn.oneHChange:
            return buildPercentageRow(currency);
          case CurrencyColumn.oneDChange:
            return buildPercentageRow(currency);
          case CurrencyColumn.marketCap:
            return buildPriceRow(currency);
          case CurrencyColumn.price:
            return buildPriceRow(currency);
          default:
            return const Text('Hello');
        }
      }).toList());

  void buildDataGrid(List<CurrenciesTicker?> currencies) => currencies
      .map<DataGridRow>((currency) => DataGridRow(
            cells: CurrencyColumn.values
                .map((column) => DataGridCell<CurrencyComparable?>(
                      columnName: column.toString(),
                      value: CurrencyComparable(column, currency),
                    ))
                .toList(),
          ))
      .toList();

  @override
  List<DataGridRow> get rows => _currencies;

  Widget buildIdRow(CurrenciesTicker? currency) => Container(
        padding: const EdgeInsets.all(12.0),
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          buildLogo(currency!),
          SizedBox(width: 8),
          Expanded(child: Text(currency.id!, overflow: TextOverflow.ellipsis))
        ]),
      );

  Widget buildRankRow(CurrenciesTicker? currency) => Container(
        padding: const EdgeInsets.all(12.0),
        child:
          Text(
            '\$${currency!.rank}',
            style: TextStyle(color: Colors.tealAccent),
          ),

      );
  Widget buildNameRow(CurrenciesTicker? currency) => Container(
        padding: const EdgeInsets.all(16.0),
        child:
          Text(
            '\$${currency!.name}',
            style: TextStyle(color: Colors.tealAccent),
          ),

      );
  Widget buildPercentageRow(CurrenciesTicker? currency) => Container(
        padding: const EdgeInsets.all(16.0),
        child:
          Text(
            '\$${currency!.pricingd!.priceChangePct}',
            style: TextStyle(color: Colors.tealAccent),
          ),

      );
  Widget buildPriceRow(CurrenciesTicker? currency) => Container(
        padding: const EdgeInsets.all(16.0),
        child:
          Text(
            '\$${currency!.price}',
            style: TextStyle(color: Colors.tealAccent),
          ),

      );

  Widget buildLogo(CurrenciesTicker? currency) {
    final isSvg = currency!.logoUrl!.endsWith('.svg');

    return CircleAvatar(
      radius: 10,
      child: isSvg
          ? SvgPicture.network(currency.logoUrl!)
          : Image.network(currency.logoUrl!),
    );
  }
}
