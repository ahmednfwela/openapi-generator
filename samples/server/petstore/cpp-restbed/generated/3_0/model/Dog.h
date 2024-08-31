/**
 * OpenAPI Petstore
 * This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
 *
 * The version of the OpenAPI document: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 7.9.0-SNAPSHOT.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * Dog.h
 *
 * 
 */

#ifndef Dog_H_
#define Dog_H_



#include <string>
#include "Animal.h"
#include <memory>
#include <vector>
#include <boost/property_tree/ptree.hpp>
#include "Animal.h"
#include "helpers.h"

namespace org {
namespace openapitools {
namespace server {
namespace model {

/// <summary>
/// 
/// </summary>
class  Dog : public Animal
{
public:
    Dog() = default;
    explicit Dog(boost::property_tree::ptree const& pt);
    virtual ~Dog() = default;

    Dog(const Dog& other) = default; // copy constructor
    Dog(Dog&& other) noexcept = default; // move constructor

    Dog& operator=(const Dog& other) = default; // copy assignment
    Dog& operator=(Dog&& other) noexcept = default; // move assignment

    std::string toJsonString(bool prettyJson = false) const;
    void fromJsonString(std::string const& jsonString);
    boost::property_tree::ptree toPropertyTree() const;
    void fromPropertyTree(boost::property_tree::ptree const& pt);


    /////////////////////////////////////////////
    /// Dog members

    /// <summary>
    /// 
    /// </summary>
    std::string getClassName() const;
    void setClassName(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::string getColor() const;
    void setColor(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::string getBreed() const;
    void setBreed(std::string value);

protected:
    std::string m_ClassName = "";
    std::string m_Color = "red";
    std::string m_Breed = "";
};

std::vector<Dog> createDogVectorFromJsonString(const std::string& json);

template<>
inline boost::property_tree::ptree toPt<Dog>(const Dog& val) {
    return val.toPropertyTree();
}

template<>
inline Dog fromPt<Dog>(const boost::property_tree::ptree& pt) {
    Dog ret;
    ret.fromPropertyTree(pt);
    return ret;
}

}
}
}
}

#endif /* Dog_H_ */
