import 'package:flutter_bloc/flutter_bloc.dart';

class DummyCubit extends Cubit<int> {
  DummyCubit() : super(0);
}

List<BlocProvider> blocProvidersList = [
  BlocProvider<DummyCubit>(
    create: (_) => DummyCubit(),
  ),
];


