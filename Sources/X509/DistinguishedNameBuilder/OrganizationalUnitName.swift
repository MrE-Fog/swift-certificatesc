//===----------------------------------------------------------------------===//
//
// This source file is part of the SwiftCertificate open source project
//
// Copyright (c) 2022 Apple Inc. and the SwiftCertificate project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.md for the list of SwiftCertificate project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

/// Set the Organizational Unit Name (OU) of a ``DistinguishedName``.
///
/// This type is used in ``DistinguishedNameBuilder`` contexts.
public struct OrganizationalUnitName: RelativeDistinguishedNameConvertible {
    /// The value of the organizational unit name field.
    public var name: String

    /// Construct a new organizational unit name
    ///
    /// - Parameter name: The value of the organizational unit name
    @inlinable
    public init(_ name: String) {
        self.name = name
    }

    @inlinable
    public func makeRDN() throws -> RelativeDistinguishedName {
        return try RelativeDistinguishedName([
            try .init(type: .RDNAttributeType.organizationalUnitName, utf8String: name)
        ])
    }
}
