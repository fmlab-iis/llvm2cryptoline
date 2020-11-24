/*
 * Utils.cpp
 *
 *  Created on: 2020年7月23日
 *      Author: jiaxiang
 */

#include "Utils.h"

template <typename Set, typename Key>
Set Utils::set_difference(const Set& lhs, const Set& rhs) {
    Set rset(lhs);
    for (const Key& key : rhs) {
        rset.erase(key);
    }
    return rset;
}


