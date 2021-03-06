
QT -= core gui
TARGET = yas-speed-test
CONFIG += console
CONFIG -= app_bundle qt
TEMPLATE = app

QMAKE_CXXFLAGS += \
    -std=c++11 \
    -Wall \
    -Wextra

INCLUDEPATH += \
    ../../include \

LIBS += \
    -lboost_system \
    -lboost_serialization \
    -lboost_program_options

SOURCES += \
    main.cpp

HEADERS += \
    ../../include/yas/binary_iarchive.hpp \
    ../../include/yas/binary_oarchive.hpp \
    ../../include/yas/boost_types.hpp \
    ../../include/yas/buffers.hpp \
    ../../include/yas/defaul_traits.hpp \
    ../../include/yas/file_streams.hpp \
    ../../include/yas/mem_streams.hpp \
    ../../include/yas/std_traits.hpp \
    ../../include/yas/std_types.hpp \
    ../../include/yas/text_iarchive.hpp \
    ../../include/yas/text_oarchive.hpp \
    ../../include/yas/version.hpp \
    ../../include/yas/detail/config/compiler/clang.hpp \
    ../../include/yas/detail/config/compiler/gcc.hpp \
    ../../include/yas/detail/config/compiler/intel.hpp \
    ../../include/yas/detail/config/compiler/msvc.hpp \
    ../../include/yas/detail/config/config.hpp \
    ../../include/yas/detail/config/endian.hpp \
    ../../include/yas/detail/io/binary_streams.hpp \
    ../../include/yas/detail/io/endian_conv.hpp \
    ../../include/yas/detail/io/exceptions_base.hpp \
    ../../include/yas/detail/io/information.hpp \
    ../../include/yas/detail/io/io_exceptions.hpp \
    ../../include/yas/detail/io/serialization_exception.hpp \
    ../../include/yas/detail/io/text_streams.hpp \
    ../../include/yas/detail/preprocessor/auto_rec.hpp \
    ../../include/yas/detail/preprocessor/bitand.hpp \
    ../../include/yas/detail/preprocessor/bool.hpp \
    ../../include/yas/detail/preprocessor/cat.hpp \
    ../../include/yas/detail/preprocessor/comma_if.hpp \
    ../../include/yas/detail/preprocessor/comma.hpp \
    ../../include/yas/detail/preprocessor/compl.hpp \
    ../../include/yas/detail/preprocessor/config.hpp \
    ../../include/yas/detail/preprocessor/dec.hpp \
    ../../include/yas/detail/preprocessor/empty.hpp \
    ../../include/yas/detail/preprocessor/enum_params.hpp \
    ../../include/yas/detail/preprocessor/equal.hpp \
    ../../include/yas/detail/preprocessor/error.hpp \
    ../../include/yas/detail/preprocessor/expr_if.hpp \
    ../../include/yas/detail/preprocessor/expr_iif.hpp \
    ../../include/yas/detail/preprocessor/if.hpp \
    ../../include/yas/detail/preprocessor/iif.hpp \
    ../../include/yas/detail/preprocessor/inc.hpp \
    ../../include/yas/detail/preprocessor/not_equal.hpp \
    ../../include/yas/detail/preprocessor/overload.hpp \
    ../../include/yas/detail/preprocessor/preprocessor.hpp \
    ../../include/yas/detail/preprocessor/rep_for_impl_dmc.hpp \
    ../../include/yas/detail/preprocessor/rep_for_impl_edg.hpp \
    ../../include/yas/detail/preprocessor/rep_for_impl_msvc.hpp \
    ../../include/yas/detail/preprocessor/rep_for_impl.hpp \
    ../../include/yas/detail/preprocessor/rep_for.hpp \
    ../../include/yas/detail/preprocessor/repeat.hpp \
    ../../include/yas/detail/preprocessor/seq_elem.hpp \
    ../../include/yas/detail/preprocessor/seq_for_each_i.hpp \
    ../../include/yas/detail/preprocessor/seq_for_each.hpp \
    ../../include/yas/detail/preprocessor/seq_seq.hpp \
    ../../include/yas/detail/preprocessor/seq_size.hpp \
    ../../include/yas/detail/preprocessor/stringize.hpp \
    ../../include/yas/detail/preprocessor/tuple_eat.hpp \
    ../../include/yas/detail/preprocessor/tuple_elem.hpp \
    ../../include/yas/detail/preprocessor/tuple_rem.hpp \
    ../../include/yas/detail/preprocessor/tuple_size.hpp \
    ../../include/yas/detail/preprocessor/tuple_to_seq.hpp \
    ../../include/yas/detail/preprocessor/variadic_elem.hpp \
    ../../include/yas/detail/preprocessor/variadic_size.hpp \
    ../../include/yas/detail/tools/cast.hpp \
    ../../include/yas/detail/tools/noncopyable.hpp \
    ../../include/yas/detail/tools/utf8conv.hpp \
    ../../include/yas/detail/type_traits/has_function_serialize.hpp \
    ../../include/yas/detail/type_traits/has_method_serialize.hpp \
    ../../include/yas/detail/type_traits/serializer.hpp \
    ../../include/yas/detail/type_traits/type_traits.hpp \
    ../../include/yas/detail/io/archive_header.hpp \
    ../../include/yas/detail/io/binary_archive_info.hpp \
    ../../include/yas/detail/io/text_archive_info.hpp \
    ../../include/yas/detail/io/json_archive_info.hpp \
    ../../include/yas/tools/base_object.hpp \
    ../../include/yas/tools/hexdumper.hpp \
    ../../include/yas/tools/pair_object.hpp \
    ../../include/yas/types/boost/boost_array_serializers.hpp \
    ../../include/yas/types/boost/boost_chrono_serializers.hpp \
    ../../include/yas/types/boost/boost_container_deque_serializers.hpp \
    ../../include/yas/types/boost/boost_container_flat_map_serializers.hpp \
    ../../include/yas/types/boost/boost_container_flat_multimap_serializers.hpp \
    ../../include/yas/types/boost/boost_container_flat_multiset_serializers.hpp \
    ../../include/yas/types/boost/boost_container_flat_set_serializers.hpp \
    ../../include/yas/types/boost/boost_container_list_serializers.hpp \
    ../../include/yas/types/boost/boost_container_map_serializers.hpp \
    ../../include/yas/types/boost/boost_container_multimap_serializers.hpp \
    ../../include/yas/types/boost/boost_container_multiset_serializers.hpp \
    ../../include/yas/types/boost/boost_container_set_serializers.hpp \
    ../../include/yas/types/boost/boost_container_slist_serializers.hpp \
    ../../include/yas/types/boost/boost_container_stable_vector_serializers.hpp \
    ../../include/yas/types/boost/boost_container_static_vector_serializers.hpp \
    ../../include/yas/types/boost/boost_container_string_serializers.hpp \
    ../../include/yas/types/boost/boost_container_vector_serializers.hpp \
    ../../include/yas/types/boost/boost_container_wstring_serializers.hpp \
    ../../include/yas/types/boost/boost_fusion_list_serializers.hpp \
    ../../include/yas/types/boost/boost_fusion_map_serializers.hpp \
    ../../include/yas/types/boost/boost_fusion_pair_serializers.hpp \
    ../../include/yas/types/boost/boost_fusion_set_serializers.hpp \
    ../../include/yas/types/boost/boost_fusion_tuple_serializers.hpp \
    ../../include/yas/types/boost/boost_fusion_vector_serializers.hpp \
    ../../include/yas/types/boost/boost_optional_serializers.hpp \
    ../../include/yas/types/boost/boost_tuple_serializers.hpp \
    ../../include/yas/types/boost/boost_unordered_map_serializers.hpp \
    ../../include/yas/types/boost/boost_unordered_multimap_serializers.hpp \
    ../../include/yas/types/boost/boost_unordered_multiset_serializers.hpp \
    ../../include/yas/types/boost/boost_unordered_set_serializers.hpp \
    ../../include/yas/types/std/std_array_serializers.hpp \
    ../../include/yas/types/std/std_bitset_serializers.hpp \
    ../../include/yas/types/std/std_chrono_serializers.hpp \
    ../../include/yas/types/std/std_complex_serializers.hpp \
    ../../include/yas/types/std/std_deque_serializers.hpp \
    ../../include/yas/types/std/std_forward_list_serializers.hpp \
    ../../include/yas/types/std/std_list_serializers.hpp \
    ../../include/yas/types/std/std_map_serializers.hpp \
    ../../include/yas/types/std/std_multimap_serializers.hpp \
    ../../include/yas/types/std/std_multiset_serializers.hpp \
    ../../include/yas/types/std/std_optional_serializers.hpp \
    ../../include/yas/types/std/std_pair_serializers.hpp \
    ../../include/yas/types/std/std_set_serializers.hpp \
    ../../include/yas/types/std/std_string_serializers.hpp \
    ../../include/yas/types/std/std_tuple_serializers.hpp \
    ../../include/yas/types/std/std_unordered_map_serializers.hpp \
    ../../include/yas/types/std/std_unordered_multimap_serializers.hpp \
    ../../include/yas/types/std/std_unordered_multiset_serializers.hpp \
    ../../include/yas/types/std/std_unordered_set_serializers.hpp \
    ../../include/yas/types/std/std_vector_serializers.hpp \
    ../../include/yas/types/std/std_wstring_serializers.hpp \
    ../../include/yas/types/utility/autoarray_serializers.hpp \
    ../../include/yas/types/utility/buffer_serializers.hpp \
    ../../include/yas/types/utility/enum_serializer.hpp \
    ../../include/yas/types/utility/fundamental_serializers.hpp \
    ../../include/yas/types/utility/object_serializers.hpp \
    ../../include/yas/types/utility/pair_serializers.hpp \
    ../../include/yas/types/utility/usertype_serializers.hpp
