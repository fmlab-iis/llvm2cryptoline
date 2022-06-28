/*
 * Utils.h
 *
 *  Created on: 2020年7月23日
 *      Author: jiaxiang
 */

#ifndef SRC_UTILS_H_
#define SRC_UTILS_H_

#include "llvm/Support/raw_ostream.h"

class Utils {

public:
    template <typename Set, typename Key = typename Set::value_type>
    static inline Set set_difference(const Set& lhs, const Set& rhs);

    static std::string replaceChar(std::string str, char target, char c);

};



#endif /* SRC_UTILS_H_ */
