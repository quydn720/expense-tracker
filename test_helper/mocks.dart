import 'package:authentication_repository/authentication_repository.dart';
import 'package:expense_tracker/common/cache/local_cache.dart';
import 'package:expense_tracker/features/app/bloc/app_bloc.dart';
import 'package:expense_tracker/features/authentication/domain/entities/form_value.dart';
import 'package:expense_tracker/features/authentication/domain/usecases/login_with_email_and_pw.dart';
import 'package:expense_tracker/features/authentication/domain/usecases/register_with_email_and_pw.dart';
import 'package:expense_tracker/features/authentication/presentation/login_form/cubit/login_form_cubit.dart';
import 'package:expense_tracker/features/authentication/presentation/register_form/cubit/register_form_cubit.dart';
import 'package:expense_tracker/features/settings/theme/theme_controller.dart';
import 'package:expense_tracker/l10n/locale_controller.dart';
import 'package:mocktail/mocktail.dart';

class MockLoginWithEmailAndPwUseCase extends Mock
    implements LoginWithEmailAndPwUseCase {}

class MockLoginWithGoogleUseCase extends Mock
    implements LoginWithGoogleUseCase {}

class MockAppBloc extends Mock implements AppBloc {}

class MockThemeController extends Mock implements ThemeController {}

class MockLocaleController extends Mock implements LocaleController {}

class MockLocalCache extends Mock implements ILocalCache {}

class MockAuthenticationRepository extends Mock
    implements IAuthenticationRepository {}

class MockUser extends Mock implements User {}

class MockRegisterWithEmailAndPwUseCase extends Mock
    implements RegisterWithEmailAndPwUseCase {}

class MockRegisterCubit extends Mock implements RegisterFormCubit {}

class MockNormalText extends Mock implements NormalText {}
