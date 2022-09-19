import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/entities/category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_dto.g.dart';

@Collection<CategoryDto>('categories')
final categoriesRef = CategoryDtoCollectionReference();

@JsonSerializable(explicitToJson: true, createFieldMap: true)
class CategoryDto extends Equatable {
  final String uid;
  final String title;
  final int color;

  const CategoryDto({
    required this.uid,
    required this.title,
    this.color = 1,
  });

  factory CategoryDto.fromDomain(Category? category) {
    return CategoryDto(
      uid: category!.uid.getOrCrash()!,
      title: category.title.getOrCrash()!,
      color: category.color.getOrCrash()!.value,
    );
  }

  factory CategoryDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryDtoFromJson(json);

  @override
  List<Object?> get props => [uid, title,  color];

  Map<String, Object?> toJson() => _$CategoryDtoToJson(this);
}
