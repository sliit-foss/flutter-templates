import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:catfacts/components/common/common.dart';
import 'package:catfacts/state/data/fact/fact_bloc.dart';
import 'package:catfacts/state/ui/global/global_bloc.dart';

class Mobile extends StatefulWidget {
  const Mobile({super.key});

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  void initState() {
    super.initState();
    final factBloc = BlocProvider.of<FactBloc>(context);
    if (!factBloc.state.facts.initialFetchComplete) factBloc.add(FetchFacts());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.facts),
      ),
      endDrawer: Drawer(
        width: MediaQuery.of(context).size.width / 2,
        child: Column(
          children: [
            const SizedBox(height: 25),
            GestureDetector(
              onTap: () {
                context.read<GlobalBloc>().add(SetLocale(context.read<GlobalBloc>().state.locale == "en" ? "ar" : "en"));
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 6, offset: const Offset(0, 4)),
                  ],
                ),
                child: Center(
                  child: Text(
                    "${AppLocalizations.of(context)!.switchLanguage} (${context.read<GlobalBloc>().state.locale})",
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: BlocBuilder<FactBloc, FactState>(
          buildWhen: (previous, current) => previous.facts != current.facts,
          builder: (context, state) {
            if (state.facts.loading) {
              return ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) => Column(
                  children: const [
                    Skeleton(width: double.infinity, height: 94),
                    Divider(),
                  ],
                ),
              );
            }
            return ListView.builder(
              itemCount: state.facts.data.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: ListTile(
                        title: Text(state.facts.data[index].fact),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(state.facts.data[index].length.toString()),
                        ),
                      ),
                    ),
                    const Divider(),
                  ],
                );
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async => context.read<FactBloc>()..add(FetchFacts(useLoader: true)),
        tooltip: AppLocalizations.of(context)!.refresh,
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
