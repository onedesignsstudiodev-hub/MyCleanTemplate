import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../bloc/{{name.snakeCase()}}_bloc.dart';
import 'package:{{app.snakeCase()}}/core/resource/app_color.dart';

import 'package:{{app.snakeCase()}}/component/app_bar/app_appbar.dart';


class {{name.pascalCase()}}View extends StatefulWidget {
  final {{name.pascalCase()}}Bloc bloc;
  {{name.pascalCase()}}View({
    super.key,
    required this.bloc,
  });

  @override
  State<{{name.pascalCase()}}View> createState() => _{{name.pascalCase()}}ViewState();
}

class _{{name.pascalCase()}}ViewState extends State<{{name.pascalCase()}}View> {
  @override
  void dispose() {
    unawaited(widget.bloc.close());
    super.dispose();
  }
  @override
  void didChangeDependencies() {
    // widget.viewModel.context = context;
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColor.base,

      body: Container(
        // padding: EdgeInsets.only(top: context.pagePadding.top),
        decoration: BoxDecoration(gradient: AppColor.primaryGradient),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: MediaQuery.paddingOf(context).top),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                AppAppbar(width: 75.w, title: "${{name.upperCase()}}"),
                Padding(
                  padding: EdgeInsets.only(top: 10.h, bottom: 20.h),
                  child: Divider(
                    color: AppColor.highlighlowest,
                    height: 1.h,
                    thickness: 1.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.paddingOf(context).left,
                    //
                  ),
                  child: Column(
                    spacing: 20.h,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  
  }
}


