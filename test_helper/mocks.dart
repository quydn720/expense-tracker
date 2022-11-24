import 'package:authentication_repository/authentication_repository.dart';
import 'package:expense_tracker/common/cache/local_cache.dart';
import 'package:expense_tracker/features/app/bloc/app_bloc.dart';
import 'package:expense_tracker/features/authentication/domain/entities/form_value.dart';
import 'package:expense_tracker/features/authentication/domain/usecases/forgot_password_use_case.dart';
import 'package:expense_tracker/features/authentication/domain/usecases/login_with_email_and_pw.dart';
import 'package:expense_tracker/features/authentication/domain/usecases/login_with_google_account_use_case.dart';
import 'package:expense_tracker/features/authentication/domain/usecases/register_with_email_and_pw.dart';
import 'package:expense_tracker/features/authentication/presentation/register_form/cubit/register_form_cubit.dart';
import 'package:expense_tracker/features/edit_transaction/domain/usecases/add_transaction_use_case.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:mocktail/mocktail.dart';
import 'package:transaction_repository/transaction_repository.dart';

class MockLoginWithEmailAndPwUseCase extends Mock
    implements LoginWithEmailAndPwUseCase {}

class MockLoginWithGoogleUseCase extends Mock
    implements LoginWithGoogleUseCase {}

class MockAppBloc extends Mock implements AppBloc {}

class MockThemeController extends Mock implements AppBloc {}

class MockLocalCache extends Mock implements ILocalCache {}

class MockAuthenticationRepository extends Mock
    implements IAuthenticationRepository {}

class MockUser extends Mock implements User {}

class MockRegisterWithEmailAndPwUseCase extends Mock
    implements RegisterWithEmailAndPwUseCase {}

class MockRegisterCubit extends Mock implements RegisterFormCubit {}

class MockNormalText extends Mock implements NormalText {}

class MockFirebaseDynamicLinks extends Mock implements FirebaseDynamicLinks {}

class MockAddTransaction extends Mock implements AddTransactionUseCase {}

class MockTransactionRepository extends Mock implements TransactionRepository {}

class MockForgotPasswordUseCase extends Mock implements ForgotPasswordUseCase {}
