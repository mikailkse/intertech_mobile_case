import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/components/bottommodal/custom_bottom_modal.dart';
import '../../../../core/components/button/elevatedbutton/endeavour_elevated_button.dart';
import '../../../../core/components/container/random_image_background_container.dart';
import '../../../../core/components/text/button/button_large_text.dart';
import '../../../../core/components/text/headline/headline3_text.dart';
import '../../../../core/components/textformfield/text_form_field.dart';
import '../../../../core/constants/color/app_colors.dart';
import '../../../../core/extensions/context_extensions.dart';
import '../viewmodel/login_view_model.dart';

class LoginView extends StatefulWidget {
  static const routeName = 'loginView';
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        context.read<LoginViewModel>().callVexanaService();
        context.read<LoginViewModel>().getLoginService();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: buildScaffoldBody(context),
    );
  }

  ImageBackgroundContainer buildScaffoldBody(BuildContext context) {
    return ImageBackgroundContainer(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            buildLoginButton(context),
          ],
        ),
      ),
    );
  }

// Giriş yapmak için ilk adım bottomModalı açar

  Widget buildLoginButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 100),
      child: EndeavourElevatedButton(
        onPressed: () => buildTextFormContainerModal(context),
        child: ButtonLargeText(
          text: 'Giriş Yap',
          color: AppColors.white,
        ),
      ),
    );
  }

// İçinde login olmak için form, kayıt ol ve parolamı unuttum gibi buttonlar var.

  Future<dynamic> buildTextFormContainerModal(BuildContext context) {
    return customBottomModal(
      context,
      (builder) => Padding(
        padding: const EdgeInsets.all(10),
        child: SizedBox(
          height: context.height / 1.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Headline3Text(
                text: 'Bireysel Giriş',
                color: AppColors.armadillo,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    buildLoginForm(context),
                    buildSignUpAndForgotPasswordTextButton(),
                  ],
                ),
              ),
              const Spacer(),
              EndeavourElevatedButton(
                onPressed: () => context
                    .read<LoginViewModel>()
                    .buildNavigateHomeFunc(context),
                child: const Text('Devam'),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  // Login formları

  Widget buildLoginForm(BuildContext context) {
    return Form(
      key: context.read<LoginViewModel>().formState,
      child: Column(
        children: [
          Padding(
            padding: context.paddingLow,
            child: CustomTextFormField(
              labelText: 'Kullanıcı Adı / TCKN',
              hintText: 'Kullanıcı Adı / TCKN giriniz',
              prefixIcon: const Icon(Icons.account_circle),
            ),
          ),
          Padding(
            padding: context.paddingLow,
            child: Consumer<LoginViewModel>(
              builder: (context, viewModel, child) => CustomTextFormField(
                labelText: 'Parola',
                hintText: 'Parolanızı girin',
                obscureText: viewModel.isLockOpen,
                suffixIcon: IconButton(
                  onPressed: () => viewModel.isLockStateChange(),
                  padding: EdgeInsets.zero,
                  icon: Icon(
                    viewModel.isLockOpen
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                ),
                prefixIcon: const Icon(Icons.lock),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Kayıt ol ve parolamı unuttum buttonları.

  Widget buildSignUpAndForgotPasswordTextButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {},
          child: ButtonLargeText(
            text: 'Kayıt Ol',
            color: AppColors.endeavour,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: ButtonLargeText(
            text: 'Parolamı Unuttum',
            color: AppColors.endeavour,
          ),
        )
      ],
    );
  }
}
