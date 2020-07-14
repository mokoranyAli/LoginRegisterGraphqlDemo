// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public struct RegisterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - name
  ///   - email
  ///   - password
  ///   - mobile
  public init(name: String, email: String, password: String, mobile: String) {
    graphQLMap = ["name": name, "email": email, "password": password, "mobile": mobile]
  }

  public var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var email: String {
    get {
      return graphQLMap["email"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "email")
    }
  }

  public var password: String {
    get {
      return graphQLMap["password"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "password")
    }
  }

  public var mobile: String {
    get {
      return graphQLMap["mobile"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mobile")
    }
  }
}

public struct LoginInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - email
  ///   - password
  public init(email: String, password: String) {
    graphQLMap = ["email": email, "password": password]
  }

  public var email: String {
    get {
      return graphQLMap["email"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "email")
    }
  }

  public var password: String {
    get {
      return graphQLMap["password"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "password")
    }
  }
}

public final class RegisterMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation register($registerInput: RegisterInput!) {
      register(input: $registerInput)
    }
    """

  public let operationName: String = "register"

  public var registerInput: RegisterInput

  public init(registerInput: RegisterInput) {
    self.registerInput = registerInput
  }

  public var variables: GraphQLMap? {
    return ["registerInput": registerInput]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("register", arguments: ["input": GraphQLVariable("registerInput")], type: .scalar(Bool.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(register: Bool? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "register": register])
    }

    public var register: Bool? {
      get {
        return resultMap["register"] as? Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "register")
      }
    }
  }
}

public final class LoginMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation login($loginInput: LoginInput!) {
      login(input: $loginInput) {
        __typename
        access_token
        expires_in
        refresh_token
        access_token
      }
    }
    """

  public let operationName: String = "login"

  public var loginInput: LoginInput

  public init(loginInput: LoginInput) {
    self.loginInput = loginInput
  }

  public var variables: GraphQLMap? {
    return ["loginInput": loginInput]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("login", arguments: ["input": GraphQLVariable("loginInput")], type: .nonNull(.object(Login.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(login: Login) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "login": login.resultMap])
    }

    public var login: Login {
      get {
        return Login(unsafeResultMap: resultMap["login"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "login")
      }
    }

    public struct Login: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["AuthPayload"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("access_token", type: .nonNull(.scalar(String.self))),
          GraphQLField("expires_in", type: .nonNull(.scalar(Int.self))),
          GraphQLField("refresh_token", type: .nonNull(.scalar(String.self))),
          GraphQLField("access_token", type: .nonNull(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(accessToken: String, expiresIn: Int, refreshToken: String) {
        self.init(unsafeResultMap: ["__typename": "AuthPayload", "access_token": accessToken, "expires_in": expiresIn, "refresh_token": refreshToken])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var accessToken: String {
        get {
          return resultMap["access_token"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "access_token")
        }
      }

      public var expiresIn: Int {
        get {
          return resultMap["expires_in"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "expires_in")
        }
      }

      public var refreshToken: String {
        get {
          return resultMap["refresh_token"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "refresh_token")
        }
      }
    }
  }
}
