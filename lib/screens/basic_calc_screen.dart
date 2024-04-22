import 'package:flutter/material.dart';
import 'package:kalkulator/providers/basic_calc_provider.dart';
import 'package:provider/provider.dart';

class BasicCalcScreen extends StatelessWidget {
  const BasicCalcScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BasicCalcProvider>(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      alignment: Alignment.centerRight,
                      child: SingleChildScrollView(
                        reverse: true,
                        scrollDirection: Axis.horizontal,
                        child: Text(
                          provider.currentExpression.isEmpty
                              ? '0'
                              : provider.currentExpression,
                          textScaler: const TextScaler.linear(4),
                        ),
                      )),
                  Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        provider.resultString,
                        textScaler: const TextScaler.linear(2),
                        style: TextStyle(
                            color: Theme.of(context).disabledColor),
                      )),
                ],
              )),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: FilledButton.tonal(
                      onPressed: () {
                        provider.onPressed('(');
                      },
                      child: const Text('(')),
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: FilledButton.tonal(
                      onPressed: () {
                        provider.onPressed(')');
                      },
                      child: const Text(')')),
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: FilledButton.tonal(
                      onPressed: () {
                        provider.deleteAll();
                      },
                      child: const Text('C')),
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: FilledButton.tonal(
                      onPressed: () {
                        provider.delete();
                      },
                      child: const Icon(Icons.backspace_rounded)),
                )),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: FilledButton(
                      onPressed: () {
                        provider.onPressed('7');
                      },
                      child: const Text('7')),
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: FilledButton(
                      onPressed: () {
                        provider.onPressed('8');
                      },
                      child: const Text('8')),
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: FilledButton(
                      onPressed: () {
                        provider.onPressed('9');
                      },
                      child: const Text('9')),
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: FilledButton.tonal(
                      onPressed: () {
                        provider.onPressed('+');
                      },
                      child: const Text('+')),
                )),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: FilledButton(
                      onPressed: () {
                        provider.onPressed('4');
                      },
                      child: const Text('4')),
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: FilledButton(
                      onPressed: () {
                        provider.onPressed('5');
                      },
                      child: const Text('5')),
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: FilledButton(
                      onPressed: () {
                        provider.onPressed('6');
                      },
                      child: const Text('6')),
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: FilledButton.tonal(
                      onPressed: () {
                        provider.onPressed('-');
                      },
                      child: const Text('-')),
                )),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: FilledButton(
                      onPressed: () {
                        provider.onPressed('1');
                      },
                      child: const Text('1')),
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: FilledButton(
                      onPressed: () {
                        provider.onPressed('2');
                      },
                      child: const Text('2')),
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: FilledButton(
                      onPressed: () {
                        provider.onPressed('3');
                      },
                      child: const Text('3')),
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: FilledButton.tonal(
                      onPressed: () {
                        provider.onPressed('*');
                      },
                      child: const Text('*')),
                )),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: FilledButton(
                      onPressed: () {
                        provider.onPressed('.');
                      },
                      child: const Text('.')),
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: FilledButton(
                      onPressed: () {
                        provider.onPressed('0');
                      },
                      child: const Text('0')),
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: FilledButton.tonal(
                      onPressed: () {
                        provider.equals();
                      },
                      child: const Text('=')),
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: FilledButton.tonal(
                      onPressed: () {
                        provider.onPressed('/');
                      },
                      child: const Text('/')),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
