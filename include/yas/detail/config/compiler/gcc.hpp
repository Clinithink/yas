
// Copyright (c) 2010-2012 niXman (i dot nixman dog gmail dot com)
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

#ifndef _yas__config_gcc_config_hpp__included_
#define _yas__config_gcc_config_hpp__included_

/***************************************************************************/

#if ((__GNUC__ >= 4) && (__GNUC_MINOR__ >= 6) && \
	defined(__GXX_EXPERIMENTAL_CXX0X__)) || __cplusplus == 201103L
#  define YAS_HAS_STD_FORWARD_LIST 1
#  define YAS_HAS_STD_UNORDERED 1
#  define YAS_HAS_STD_ARRAY 1
#  define YAS_HAS_STD_TUPLE 1
#  define YAS_HAS_DECLTYPE 1
#  define YAS_HAS_STATIC_ASSERT 1
#  define YAS_HAS_ENUM_CLASS 1
#	define YAS_SHARED_BUFFER_USE_STD_SHARED_PTR 1
#	define YAS_DECLTYPE(T) decltype(T)
#else
#  define YAS_HAS_DECLTYPE 1
#	define YAS_DECLTYPE(T) __typeof__(T)
#endif

#ifndef YAS_HAS_DECLTYPE
#  error "Please configure!"
#endif

#ifdef YAS_SERIALIZE_BOOST_TYPES
#  define YAS_HAS_BOOST_UNORDERED 1
#  define YAS_HAS_BOOST_ARRAY 1
#  define YAS_HAS_BOOST_TUPLE 1
#  define YAS_HAS_BOOST_FUSION 1
#	define YAS_SHARED_BUFFER_USE_BOOST_SHARED_PTR 1
#endif

/***************************************************************************/

namespace yas {

#if defined(__x86_64__)
#define YAS_PLATFORM_BITS_IS_32() (0)
#define YAS_PLATFORM_BITS_IS_64() (1)

typedef char int8_t;
typedef unsigned char uint8_t;
typedef short int16_t;
typedef unsigned short uint16_t;
typedef int int32_t;
typedef unsigned int uint32_t;
#if defined(__MINGW32__)
typedef long long int64_t;
typedef unsigned long long uint64_t;
#else
typedef long int64_t;
typedef unsigned long uint64_t;
#endif

#else // !__x86_64__ /******************************************************/

#define YAS_PLATFORM_BITS_IS_32() (1)
#define YAS_PLATFORM_BITS_IS_64() (0)

typedef char int8_t;
typedef unsigned char uint8_t;
typedef short int16_t;
typedef unsigned short uint16_t;
typedef int int32_t;
typedef unsigned int uint32_t;
typedef long long int64_t;
typedef unsigned long long uint64_t;

#endif // __x86_64__

} // namespace yas

/***************************************************************************/

#endif // _yas__config_gcc_config_hpp__included_
