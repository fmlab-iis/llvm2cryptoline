/*
 * Utils.h
 *
 *  Created on: 2020年7月23日
 *      Author: jiaxiang
 */

#ifndef SRC_UTILS_H_
#define SRC_UTILS_H_

class Utils {

    template <typename Set, typename Key = typename Set::value_type>
    static inline Set set_difference(const Set& lhs, const Set& rhs);

};



#endif /* SRC_UTILS_H_ */
