import 'package:customtemplate/core/model/fetch_data_params.dart';
import 'package:customtemplate/core/model/i_params.dart';
import 'package:customtemplate/core/network/network_info.dart'
    show INetworkInfo;
import 'package:dartz/dartz.dart';

abstract class IBaseRepo {
  final INetworkInfo networkInfo;

  IBaseRepo({required this.networkInfo});

  Future<Either<Object, T>> fetchData<T, P extends Params>({
    required FetchDataParams<T, P> params,
  });
}
