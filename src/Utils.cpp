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


std::string Utils::replaceChar(std::string str, char target, char c) {
  for (int i = 0; i < str.length(); i++) {
    if (str[i] == target)
      str[i] = c;
  }
  return str;
}


