//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:openapi/src/date_serializer.dart';
import 'package:openapi/src/model/date.dart';

import 'package:openapi/src/model/add_address_command.dart';
import 'package:openapi/src/model/add_option_command.dart';
import 'package:openapi/src/model/add_order_note_request.dart';
import 'package:openapi/src/model/adjust_inventory_command.dart';
import 'package:openapi/src/model/analytics_dto.dart';
import 'package:openapi/src/model/assign_driver_request.dart';
import 'package:openapi/src/model/auth_result.dart';
import 'package:openapi/src/model/cancel_order_request.dart';
import 'package:openapi/src/model/cancel_reservation_command.dart';
import 'package:openapi/src/model/category_dto.dart';
import 'package:openapi/src/model/change_password_command.dart';
import 'package:openapi/src/model/confirm_email_change_command.dart';
import 'package:openapi/src/model/confirm_email_command.dart';
import 'package:openapi/src/model/confirm_reservation_command.dart';
import 'package:openapi/src/model/create_category_command.dart';
import 'package:openapi/src/model/create_customer_profile_command.dart';
import 'package:openapi/src/model/create_menu_item_command.dart';
import 'package:openapi/src/model/create_option_group_command.dart';
import 'package:openapi/src/model/create_order_command.dart';
import 'package:openapi/src/model/create_order_dto.dart';
import 'package:openapi/src/model/create_order_item_dto.dart';
import 'package:openapi/src/model/create_reservation_command.dart';
import 'package:openapi/src/model/create_reservation_dto.dart';
import 'package:openapi/src/model/create_review_command.dart';
import 'package:openapi/src/model/create_staff_profile_request.dart';
import 'package:openapi/src/model/current_user_dto.dart';
import 'package:openapi/src/model/customer_address_dto.dart';
import 'package:openapi/src/model/customer_profile_dto.dart';
import 'package:openapi/src/model/forgot_password_command.dart';
import 'package:openapi/src/model/inventory_item_dto.dart';
import 'package:openapi/src/model/inventory_transaction_dto.dart';
import 'package:openapi/src/model/inventory_transaction_type.dart';
import 'package:openapi/src/model/login_command.dart';
import 'package:openapi/src/model/logout_command.dart';
import 'package:openapi/src/model/loyalty_points_dto.dart';
import 'package:openapi/src/model/menu_item_detail_dto.dart';
import 'package:openapi/src/model/menu_item_dto.dart';
import 'package:openapi/src/model/message_response_dto.dart';
import 'package:openapi/src/model/option_dto.dart';
import 'package:openapi/src/model/option_group_dto.dart';
import 'package:openapi/src/model/option_selection_type.dart';
import 'package:openapi/src/model/order_detail_dto.dart';
import 'package:openapi/src/model/order_dto.dart';
import 'package:openapi/src/model/order_item_dto.dart';
import 'package:openapi/src/model/order_item_option_dto.dart';
import 'package:openapi/src/model/order_note_type.dart';
import 'package:openapi/src/model/order_status.dart';
import 'package:openapi/src/model/order_summary_dto.dart';
import 'package:openapi/src/model/order_type.dart';
import 'package:openapi/src/model/payment_dto.dart';
import 'package:openapi/src/model/payment_method.dart';
import 'package:openapi/src/model/payment_response_dto.dart';
import 'package:openapi/src/model/payment_status.dart';
import 'package:openapi/src/model/popular_item_dto.dart';
import 'package:openapi/src/model/problem_details.dart';
import 'package:openapi/src/model/process_payment_command.dart';
import 'package:openapi/src/model/refresh_token_command.dart';
import 'package:openapi/src/model/refund_payment_command.dart';
import 'package:openapi/src/model/register_command.dart';
import 'package:openapi/src/model/register_response_dto.dart';
import 'package:openapi/src/model/request_email_change_command.dart';
import 'package:openapi/src/model/resend_confirmation_command.dart';
import 'package:openapi/src/model/reservation_dto.dart';
import 'package:openapi/src/model/reservation_status.dart';
import 'package:openapi/src/model/reset_password_command.dart';
import 'package:openapi/src/model/respond_to_review_command.dart';
import 'package:openapi/src/model/restock_item_command.dart';
import 'package:openapi/src/model/review_dto.dart';
import 'package:openapi/src/model/sales_report_dto.dart';
import 'package:openapi/src/model/set_user_active_status_request.dart';
import 'package:openapi/src/model/table_availability_dto.dart';
import 'package:openapi/src/model/token_validation_dto.dart';
import 'package:openapi/src/model/update_address_request.dart';
import 'package:openapi/src/model/update_customer_profile_command.dart';
import 'package:openapi/src/model/update_menu_item_request.dart';
import 'package:openapi/src/model/update_order_status_request.dart';
import 'package:openapi/src/model/upload_image_response_dto.dart';
import 'package:openapi/src/model/validate_token_query.dart';
import 'package:openapi/src/model/validation_problem_details.dart';

part 'serializers.g.dart';

@SerializersFor([
  AddAddressCommand,
  AddOptionCommand,
  AddOrderNoteRequest,
  AdjustInventoryCommand,
  AnalyticsDto,
  AssignDriverRequest,
  AuthResult,
  CancelOrderRequest,
  CancelReservationCommand,
  CategoryDto,
  ChangePasswordCommand,
  ConfirmEmailChangeCommand,
  ConfirmEmailCommand,
  ConfirmReservationCommand,
  CreateCategoryCommand,
  CreateCustomerProfileCommand,
  CreateMenuItemCommand,
  CreateOptionGroupCommand,
  CreateOrderCommand,
  CreateOrderDto,
  CreateOrderItemDto,
  CreateReservationCommand,
  CreateReservationDto,
  CreateReviewCommand,
  CreateStaffProfileRequest,
  CurrentUserDto,
  CustomerAddressDto,
  CustomerProfileDto,
  ForgotPasswordCommand,
  InventoryItemDto,
  InventoryTransactionDto,
  InventoryTransactionType,
  LoginCommand,
  LogoutCommand,
  LoyaltyPointsDto,
  MenuItemDetailDto,
  MenuItemDto,
  MessageResponseDto,
  OptionDto,
  OptionGroupDto,
  OptionSelectionType,
  OrderDetailDto,
  OrderDto,
  OrderItemDto,
  OrderItemOptionDto,
  OrderNoteType,
  OrderStatus,
  OrderSummaryDto,
  OrderType,
  PaymentDto,
  PaymentMethod,
  PaymentResponseDto,
  PaymentStatus,
  PopularItemDto,
  ProblemDetails,
  ProcessPaymentCommand,
  RefreshTokenCommand,
  RefundPaymentCommand,
  RegisterCommand,
  RegisterResponseDto,
  RequestEmailChangeCommand,
  ResendConfirmationCommand,
  ReservationDto,
  ReservationStatus,
  ResetPasswordCommand,
  RespondToReviewCommand,
  RestockItemCommand,
  ReviewDto,
  SalesReportDto,
  SetUserActiveStatusRequest,
  TableAvailabilityDto,
  TokenValidationDto,
  UpdateAddressRequest,
  UpdateCustomerProfileCommand,
  UpdateMenuItemRequest,
  UpdateOrderStatusRequest,
  UploadImageResponseDto,
  ValidateTokenQuery,
  ValidationProblemDetails,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(CustomerAddressDto)]),
        () => ListBuilder<CustomerAddressDto>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(InventoryItemDto)]),
        () => ListBuilder<InventoryItemDto>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(InventoryTransactionDto)]),
        () => ListBuilder<InventoryTransactionDto>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ReviewDto)]),
        () => ListBuilder<ReviewDto>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(TableAvailabilityDto)]),
        () => ListBuilder<TableAvailabilityDto>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(PaymentDto)]),
        () => ListBuilder<PaymentDto>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(CategoryDto)]),
        () => ListBuilder<CategoryDto>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(OrderSummaryDto)]),
        () => ListBuilder<OrderSummaryDto>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(PopularItemDto)]),
        () => ListBuilder<PopularItemDto>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(MenuItemDto)]),
        () => ListBuilder<MenuItemDto>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ReservationDto)]),
        () => ListBuilder<ReservationDto>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer())
    ).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
