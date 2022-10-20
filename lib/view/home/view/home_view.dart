import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/components/card/account_detail_card.dart';
import '../viewmodel/home_view_model.dart';

class HomeView extends StatefulWidget {
  static const routeName = 'homeView';
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        context.read<HomeViewModel>().callVexanaService();
        context.read<HomeViewModel>().getAccountListService();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: context.watch<HomeViewModel>().isLoading == true
          ? const Center(child: CircularProgressIndicator.adaptive())
          : buildAccountDetailCard(),
    );
  }

  Consumer<HomeViewModel> buildAccountDetailCard() {
    return Consumer<HomeViewModel>(
      builder: (context, viewModel, child) => ListView.separated(
        itemCount:
            viewModel.accountListResponseModel?.data?.accountList?.length ?? 0,
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (context, index) => const SizedBox(height: 20),
        itemBuilder: (context, index) => AccountDetailCard(
          viewModel: viewModel,
          index: index,
        ),
      ),
    );
  }
}
