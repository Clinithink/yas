
// Copyright (c) 2010-2014 niXman (i dot nixman dog gmail dot com)
//
// Distributed under the Boost Software License, Version 1.0. (See accompanying
// file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
//
//
//
// Boost Software License - Version 1.0 - August 17th, 2003
//
// Permission is hereby granted, free of charge, to any person or organization
// obtaining a copy of the software and accompanying documentation covered by
// this license (the "Software") to use, reproduce, display, distribute,
// execute, and transmit the Software, and to prepare derivative works of the
// Software, and to permit third-parties to whom the Software is furnished to
// do so, all subject to the following:
//
// The copyright notices in the Software and this entire statement, including
// the above license grant, this restriction and the following disclaimer,
// must be included in all copies of the Software, in whole or in part, and
// all derivative works of the Software, unless such copies or derivative
// works are solely in the form of machine-executable object code generated by
// a source language processor.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT
// SHALL THE COPYRIGHT HOLDERS OR ANYONE DISTRIBUTING THE SOFTWARE BE LIABLE
// FOR ANY DAMAGES OR OTHER LIABILITY, WHETHER IN CONTRACT, TORT OR OTHERWISE,
// ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
// DEALINGS IN THE SOFTWARE.

#ifndef _yas__binary__boost_cont_static_vector_serializer_hpp
#define _yas__binary__boost_cont_static_vector_serializer_hpp

#include <yas/detail/type_traits/type_traits.hpp>
#include <yas/detail/type_traits/selector.hpp>
#include <yas/detail/io/serialization_exception.hpp>

#include <boost/container/static_vector.hpp>

namespace yas {
namespace detail {

/***************************************************************************/

template<typename T, std::size_t N>
struct serializer<
	type_prop::not_a_pod,
	ser_method::use_internal_serializer,
	archive_type::binary,
	direction::out,
	boost::container::static_vector<T, N>
> {
	template<typename Archive>
	static Archive& apply(Archive &ar, const boost::container::static_vector<T, N> &vector) {
		ar.write((std::uint32_t)N);
		ar.write((std::uint32_t)vector.size());
		if ( std::is_fundamental<T>::value && sizeof(T) == 1 ) {
			ar.write(&vector[0], vector.size());
		} else {
			for ( const auto &it: vector ) {
				ar & it;
			}
		}
		return ar;
	}
};

template<typename T, std::size_t N>
struct serializer<
	type_prop::not_a_pod,
	ser_method::use_internal_serializer,
	archive_type::binary,
	direction::in,
	boost::container::static_vector<T, N>
> {
	template<typename Archive>
	static Archive& apply(Archive &ar, boost::container::static_vector<T, N> &vector) {
		std::uint32_t capacity = 0, size = 0;
		ar.read(capacity);
		ar.read(size);
		if ( capacity != N || size > N ) YAS_THROW_BAD_ARRAY_SIZE();
		vector.resize(size);
		if ( std::is_fundamental<T>::value && sizeof(T) == 1 ) {
			ar.read(&vector[0], size);
		} else {
			for ( auto &it: vector ) {
				ar & it;
			}
		}
		return ar;
	}
};

/***************************************************************************/

} // namespace detail
} // namespace yas

#endif // _yas__binary__boost_cont_static_vector_serializer_hpp
