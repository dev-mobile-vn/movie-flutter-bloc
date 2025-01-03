import 'package:get_it/get_it.dart';
import 'package:movie/features/confirm_payment/bloc/confirm_payment_bloc.dart';
import 'package:movie/features/language/bloc/language_bloc.dart';
import 'package:movie/features/main/screens/profile/bloc/profile_bloc.dart';
import 'package:movie/features/payments/bloc/payments_bloc.dart';
import '../core/cubit/app_cubit.dart';
import '../core/data/data_resource/remote/movie/movie_api_service.dart';
import '../core/data/data_resource/remote/movie/search_movie_api_service.dart';
import '../core/network/movie_provider.dart';
import '../core/network/search_movie_provider.dart';
import '../features/add_card/bloc/add_card_bloc.dart';
import '../features/edit_profile/bloc/edit_profile_bloc.dart';
import '../features/main/screens/explore/data/repository/search_movies_repository_impld.dart';
import '../features/main/screens/explore/domain/repository/search_movies_repository.dart';
import '../features/main/screens/explore/domain/use_case/search_use_case.dart';
import '../features/main/screens/explore/presentation/bloc/explore_cubit.dart';
import '../features/main/screens/home/bloc/home_cubit.dart';
import '../features/movie_detail/data/repository/movie_detail_repository_impl.dart';
import '../features/movie_detail/domain/repository/movie_detail_repository.dart';
import '../features/movie_detail/domain/use_case/movie_detai_use_case.dart';
import '../features/movie_detail/domain/use_case/review_use_case.dart';
import '../features/movie_detail/domain/use_case/trailer_use_case.dart';
import '../features/movie_detail/presentation/bloc/movie_detail_bloc_cubit.dart';
import '../features/movie_detail/presentation/screens/view/bloc/similar_movie_bloc_cubit.dart';
import '../features/movies/data/repository/movies_repository_impl.dart';
import '../features/movies/domain/list_movie_use_case/list_movie.dart';
import '../features/movies/domain/repository/movies_repository.dart';
import '../features/movies/presentation/bloc/list_movie_cubit.dart';

final GetIt getIt = GetIt.instance;

Future<void> init() async {
  getIt.registerSingleton(AppCubit());
  //  sl.registerFactory(() => AppCubit());
  getIt.registerSingleton<MovieProvider>((MovieProvider()));
  getIt.registerSingleton<MovieApiService>((MovieApiService(getIt.get())));

  getIt.registerLazySingleton<SearchMovieProvider>(() => SearchMovieProvider());
  getIt.registerLazySingleton<SearchMovieApiService>(
      () => SearchMovieApiService(getIt.get()));

  getIt.registerSingleton<MovieDetailRepository>(
      MovieDetailRepositoryImpl(getIt.get()));
  getIt.registerSingleton<MovieDetailUseCase>(MovieDetailUseCase(getIt.get()));

  getIt.registerSingleton<ListMovieRepository>(ListMovieRepositoryImpl(getIt.get()));
  getIt.registerSingleton<ListMovieUseCase>(ListMovieUseCase(getIt.get()));

  getIt.registerSingleton(ListMovieCubit(getIt.get()));
  getIt.registerSingleton(ReviewUseCase(getIt.get()));
  getIt.registerSingleton(TrailerUseCase(getIt.get()));

  getIt.registerSingleton<HomeCubit>(HomeCubit(
    movieDetailUseCase: getIt.get(),
    listMovieUseCase: getIt.get(),
  ));
  getIt.registerFactory(() => MovieDetailBlocCubit(
        detailUseCase: getIt.get(),
        listMovieUseCase: getIt.get(),
        reviewUseCase: getIt.get(),
        trailerUseCase: getIt.get(),
      ));
  getIt.registerFactory<SimilarMovieBlocCubit>(
      () => SimilarMovieBlocCubit(getIt.get()));
  getIt.registerLazySingleton<SearchMoviesRepository>(
      () => SearchMoviesRepositoryImpl(getIt.get()));
  getIt.registerLazySingleton<SearchUseCase>(() => SearchUseCase(getIt.get()));
  getIt.registerLazySingleton<ExploreCubit>(() => ExploreCubit(getIt.get()));

  getIt.registerFactory<PaymentsBloc>(() => PaymentsBloc());

  getIt.registerFactory<ConfirmPaymentBloc>(() => ConfirmPaymentBloc());

  getIt.registerFactory<AddCardBloc>(() => AddCardBloc());

  getIt.registerLazySingleton<ProfileBloc>(() => ProfileBloc());

  getIt.registerFactory<LanguageBloc>(() => LanguageBloc());

  getIt.registerFactory<EditProfileBloc>(() => EditProfileBloc());
}
