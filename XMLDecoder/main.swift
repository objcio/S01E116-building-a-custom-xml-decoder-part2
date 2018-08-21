import Foundation

extension DateFormatter {
    fileprivate static let isoDate: DateFormatter = {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss'Z'"
        return formatter
    }()
}

let subXml = """
<?xml version="1.0" encoding="UTF-8"?>
<subscriptions type="array">
  <subscription href="https://domain.recurly.com/v2/subscriptions/46c6159c8780403c304b5b40f7b4cc7f">
    <account href="https://domain.recurly.com/v2/accounts/06a5313b-7972-48a9-a0a9-3d7d741afe44"/>
    <invoice href="https://domain.recurly.com/v2/invoices/2913"/>
    <plan href="https://domain.recurly.com/v2/plans/yearly-test">
      <plan_code>yearly-test</plan_code>
      <name>Yearly Test</name>
    </plan>
    <revenue_schedule_type>evenly</revenue_schedule_type>
    <uuid>46c6159c8780403c304b5b40f7b4cc7f</uuid>
    <state>active</state>
    <unit_amount_in_cents type="integer">9000</unit_amount_in_cents>
    <currency>USD</currency>
    <quantity type="integer">1</quantity>
    <activated_at type="datetime">2018-08-20T12:23:35Z</activated_at>
    <canceled_at nil="nil"></canceled_at>
    <expires_at nil="nil"></expires_at>
    <updated_at type="datetime">2018-08-20T12:23:36Z</updated_at>
    <total_billing_cycles nil="nil"></total_billing_cycles>
    <remaining_billing_cycles nil="nil"></remaining_billing_cycles>
    <current_period_started_at type="datetime">2018-08-20T12:23:35Z</current_period_started_at>
    <current_period_ends_at type="datetime">2019-08-20T12:23:35Z</current_period_ends_at>
    <trial_started_at nil="nil"></trial_started_at>
    <trial_ends_at nil="nil"></trial_ends_at>
    <terms_and_conditions></terms_and_conditions>
    <customer_notes></customer_notes>
    <started_with_gift type="boolean">false</started_with_gift>
    <converted_at nil="nil"></converted_at>
    <imported_trial type="boolean">false</imported_trial>
    <paused_at nil="nil"></paused_at>
    <remaining_pause_cycles nil="nil"></remaining_pause_cycles>
    <no_billing_info_reason></no_billing_info_reason>
    <tax_in_cents type="integer">1710</tax_in_cents>
    <tax_type>vat</tax_type>
    <tax_region>DE</tax_region>
    <tax_rate type="float">0.19</tax_rate>
    <po_number></po_number>
    <net_terms type="integer">0</net_terms>
    <collection_method>automatic</collection_method>
    <subscription_add_ons type="array">
    </subscription_add_ons>
    <a name="cancel" href="https://domain.recurly.com/v2/subscriptions/46c6159c8780403c304b5b40f7b4cc7f/cancel" method="put"/>
    <a name="terminate" href="https://domain.recurly.com/v2/subscriptions/46c6159c8780403c304b5b40f7b4cc7f/terminate" method="put"/>
    <a name="postpone" href="https://domain.recurly.com/v2/subscriptions/46c6159c8780403c304b5b40f7b4cc7f/postpone" method="put"/>
    <a name="notes" href="https://domain.recurly.com/v2/subscriptions/46c6159c8780403c304b5b40f7b4cc7f/notes" method="put"/>
  </subscription>
  <subscription href="https://domain.recurly.com/v2/subscriptions/3a6866d2362f3a3ae47d404c5f98c674">
    <account href="https://domain.recurly.com/v2/accounts/06a5313b-7972-48a9-a0a9-3d7d741afe44"/>
    <plan href="https://domain.recurly.com/v2/plans/monthly-test">
      <plan_code>monthly-test</plan_code>
      <name>Test Monthly</name>
    </plan>
    <revenue_schedule_type>evenly</revenue_schedule_type>
    <uuid>3a6866d2362f3a3ae47d404c5f98c674</uuid>
    <state>expired</state>
    <unit_amount_in_cents type="integer">900</unit_amount_in_cents>
    <currency>USD</currency>
    <quantity type="integer">1</quantity>
    <activated_at type="datetime">2016-12-13T19:14:32Z</activated_at>
    <canceled_at type="datetime">2018-08-20T12:23:13Z</canceled_at>
    <expires_at type="datetime">2018-08-20T12:23:13Z</expires_at>
    <updated_at type="datetime">2018-08-20T12:23:13Z</updated_at>
    <total_billing_cycles nil="nil"></total_billing_cycles>
    <remaining_billing_cycles nil="nil"></remaining_billing_cycles>
    <current_period_started_at type="datetime">2018-08-13T19:14:32Z</current_period_started_at>
    <current_period_ends_at type="datetime">2018-09-13T19:14:32Z</current_period_ends_at>
    <trial_started_at nil="nil"></trial_started_at>
    <trial_ends_at nil="nil"></trial_ends_at>
    <terms_and_conditions nil="nil"></terms_and_conditions>
    <customer_notes nil="nil"></customer_notes>
    <started_with_gift type="boolean">false</started_with_gift>
    <converted_at nil="nil"></converted_at>
    <imported_trial type="boolean">false</imported_trial>
    <paused_at nil="nil"></paused_at>
    <remaining_pause_cycles nil="nil"></remaining_pause_cycles>
    <no_billing_info_reason></no_billing_info_reason>
    <tax_in_cents type="integer">171</tax_in_cents>
    <tax_type>vat</tax_type>
    <tax_region>DE</tax_region>
    <tax_rate type="float">0.19</tax_rate>
    <po_number nil="nil"></po_number>
    <net_terms type="integer">0</net_terms>
    <collection_method>automatic</collection_method>
    <subscription_add_ons type="array">
    </subscription_add_ons>
  </subscription>
</subscriptions>
"""

let xml = """
<?xml version="1.0" encoding="UTF-8"?>
<account href="https://domain.recurly.com/v2/accounts/06a5313b-7972-48a9-a0a9-3d7d741afe44">
  <adjustments href="https://domain.recurly.com/v2/accounts/06a5313b-7972-48a9-a0a9-3d7d741afe44/adjustments"/>
  <account_balance href="https://domain.recurly.com/v2/accounts/06a5313b-7972-48a9-a0a9-3d7d741afe44/balance"/>
  <billing_info href="https://domain.recurly.com/v2/accounts/06a5313b-7972-48a9-a0a9-3d7d741afe44/billing_info"/>
  <invoices href="https://domain.recurly.com/v2/accounts/06a5313b-7972-48a9-a0a9-3d7d741afe44/invoices"/>
  <shipping_addresses href="https://domain.recurly.com/v2/accounts/06a5313b-7972-48a9-a0a9-3d7d741afe44/shipping_addresses"/>
  <subscriptions href="https://domain.recurly.com/v2/accounts/06a5313b-7972-48a9-a0a9-3d7d741afe44/subscriptions"/>
  <transactions href="https://domain.recurly.com/v2/accounts/06a5313b-7972-48a9-a0a9-3d7d741afe44/transactions"/>
  <account_code>06a5313b-7972-48a9-a0a9-3d7d741afe44</account_code>
  <state>active</state>
  <username nil="nil"></username>
  <email>mail@floriankugler.com</email>
  <cc_emails nil="nil"></cc_emails>
  <first_name>Florian</first_name>
  <last_name>Kugler</last_name>
  <company_name nil="nil"></company_name>
  <vat_number nil="nil"></vat_number>
  <preferred_locale nil="nil"></preferred_locale>
  <tax_exempt type="boolean">false</tax_exempt>
  <address>
    <address1 nil="nil"></address1>
    <address2 nil="nil"></address2>
    <city nil="nil"></city>
    <state nil="nil"></state>
    <zip nil="nil"></zip>
    <country nil="nil"></country>
    <phone nil="nil"></phone>
  </address>
  <accept_language nil="nil"></accept_language>
  <hosted_login_token>dd73cd5be174906d6d5cb7ec01e2581c</hosted_login_token>
  <created_at type="datetime">2016-12-13T19:14:32Z</created_at>
  <updated_at type="datetime">2018-08-13T19:14:32Z</updated_at>
  <closed_at nil="nil"></closed_at>
  <has_live_subscription type="boolean">true</has_live_subscription>
  <has_active_subscription type="boolean">true</has_active_subscription>
  <has_future_subscription type="boolean">false</has_future_subscription>
  <has_canceled_subscription type="boolean">false</has_canceled_subscription>
  <has_past_due_invoice type="boolean">false</has_past_due_invoice>
  <has_paused_subscription type="boolean">false</has_paused_subscription>
</account>
"""

extension XMLElement {
    func child(for key: CodingKey) -> XMLElement? {
        return (children ?? []).first(where: { $0.name == key.stringValue }).flatMap({ $0 as? XMLElement })
    }
}

final class RecurlyXMLDecoder: Decoder {
    var codingPath: [CodingKey] = []
    var userInfo: [CodingUserInfoKey : Any] = [:]
    let element: XMLElement
    init(_ element: XMLElement) {
        self.element = element
    }
    
    func container<Key>(keyedBy type: Key.Type) throws -> KeyedDecodingContainer<Key> where Key : CodingKey {
        return KeyedDecodingContainer(KDC(element))
    }
    
    struct KDC<Key: CodingKey>: KeyedDecodingContainerProtocol {
        var codingPath: [CodingKey] = []
        var allKeys: [Key] = []
        
        let element: XMLElement
        init(_ element: XMLElement) {
            self.element = element
        }
        
        func contains(_ key: Key) -> Bool {
            return element.child(for: key) != nil
        }

        func child(for key: CodingKey) throws -> XMLElement {
            guard let child = element.child(for: key) else {
                throw DecodingError.keyNotFound(key, DecodingError.Context(codingPath: codingPath, debugDescription: "TODO"))
            }
            return child
        }
        
        func decodeNil(forKey key: Key) throws -> Bool {
            let child = try self.child(for: key)
            return child.attribute(forName: "nil") != nil
        }
        
        func decode(_ type: Bool.Type, forKey key: Key) throws -> Bool {
            fatalError()
        }
        
        func decode(_ type: String.Type, forKey key: Key) throws -> String {
            let child = try self.child(for: key)
            return child.stringValue! // todo verify that it's never nil
        }
        
        func decode(_ type: Double.Type, forKey key: Key) throws -> Double {
            fatalError()
        }
        
        func decode(_ type: Float.Type, forKey key: Key) throws -> Float {
            fatalError()
        }
        
        func decode(_ type: Int.Type, forKey key: Key) throws -> Int {
            fatalError()
        }
        
        func decode(_ type: Int8.Type, forKey key: Key) throws -> Int8 {
            fatalError()
        }
        
        func decode(_ type: Int16.Type, forKey key: Key) throws -> Int16 {
            fatalError()
        }
        
        func decode(_ type: Int32.Type, forKey key: Key) throws -> Int32 {
            fatalError()
        }
        
        func decode(_ type: Int64.Type, forKey key: Key) throws -> Int64 {
            fatalError()
        }
        
        func decode(_ type: UInt.Type, forKey key: Key) throws -> UInt {
            fatalError()
        }
        
        func decode(_ type: UInt8.Type, forKey key: Key) throws -> UInt8 {
            fatalError()
        }
        
        func decode(_ type: UInt16.Type, forKey key: Key) throws -> UInt16 {
            fatalError()
        }
        
        func decode(_ type: UInt32.Type, forKey key: Key) throws -> UInt32 {
            fatalError()
        }
        
        func decode(_ type: UInt64.Type, forKey key: Key) throws -> UInt64 {
            fatalError()
        }
        
        func decode<T>(_ type: T.Type, forKey key: Key) throws -> T where T : Decodable {
            let el = try child(for: key)
            if type == URL.self {
                guard let href = el.attribute(forName: "href")?.stringValue else {
                    throw DecodingError.dataCorruptedError(forKey: key, in: self, debugDescription: "Expected href attribute")
                }
                guard let url = URL(string: href) else {
                    throw DecodingError.dataCorruptedError(forKey: key, in: self, debugDescription: "Malformed url: \(href)")
                }
                return url as! T
            } else if type == Date.self {                
                guard let date = DateFormatter.isoDate.date(from: el.stringValue!) else { // TODO verify assumption
                    throw DecodingError.dataCorruptedError(forKey: key, in: self, debugDescription: "Malformed date: \(el.stringValue)")
                }
                return date as! T
            } else {
                let decoder = RecurlyXMLDecoder(el)
                return try T(from: decoder)
            }
        }
        
        func nestedContainer<NestedKey>(keyedBy type: NestedKey.Type, forKey key: Key) throws -> KeyedDecodingContainer<NestedKey> where NestedKey : CodingKey {
            fatalError()
        }
        
        func nestedUnkeyedContainer(forKey key: Key) throws -> UnkeyedDecodingContainer {
            fatalError()
        }
        
        func superDecoder() throws -> Decoder {
            fatalError()
        }
        
        func superDecoder(forKey key: Key) throws -> Decoder {
            fatalError()
        }
    }
    
    func unkeyedContainer() throws -> UnkeyedDecodingContainer {
        let children = (element.children ?? []).compactMap { $0 as? XMLElement }
        return UDC(children)
    }
    
    struct UDC: UnkeyedDecodingContainer {
        let elements: [XMLElement]
        init(_ elements: [XMLElement]) {
            self.elements = elements
        }
        var codingPath: [CodingKey] = []
        
        var count: Int? {
            return elements.count
        }
        
        var isAtEnd: Bool {
            return currentIndex >= elements.count
        }
        
        var currentIndex: Int = 0
        
        mutating func decodeNil() throws -> Bool {
            fatalError("TODO")
        }
        
        mutating func decode(_ type: Bool.Type) throws -> Bool {
            fatalError("TODO")
        }
        
        mutating func decode(_ type: String.Type) throws -> String {
            fatalError("TODO")
        }
        
        mutating func decode(_ type: Double.Type) throws -> Double {
            fatalError("TODO")
        }
        
        mutating func decode(_ type: Float.Type) throws -> Float {
            fatalError("TODO")
        }
        
        mutating func decode(_ type: Int.Type) throws -> Int {
            fatalError("TODO")
        }
        
        mutating func decode(_ type: Int8.Type) throws -> Int8 {
            fatalError("TODO")
        }
        
        mutating func decode(_ type: Int16.Type) throws -> Int16 {
            fatalError("TODO")
        }
        
        mutating func decode(_ type: Int32.Type) throws -> Int32 {
            fatalError("TODO")
        }
        
        mutating func decode(_ type: Int64.Type) throws -> Int64 {
            fatalError("TODO")
        }
        
        mutating func decode(_ type: UInt.Type) throws -> UInt {
            fatalError("TODO")
        }
        
        mutating func decode(_ type: UInt8.Type) throws -> UInt8 {
            fatalError("TODO")
        }
        
        mutating func decode(_ type: UInt16.Type) throws -> UInt16 {
            fatalError("TODO")
        }
        
        mutating func decode(_ type: UInt32.Type) throws -> UInt32 {
            fatalError("TODO")
        }
        
        mutating func decode(_ type: UInt64.Type) throws -> UInt64 {
            fatalError("TODO")
        }
        
        mutating func decode<T>(_ type: T.Type) throws -> T where T : Decodable {
            let element = elements[currentIndex]
            let decoder = RecurlyXMLDecoder(element)
            currentIndex += 1
            return try T(from: decoder)
        }
        
        mutating func nestedContainer<NestedKey>(keyedBy type: NestedKey.Type) throws -> KeyedDecodingContainer<NestedKey> where NestedKey : CodingKey {
            fatalError("TODO")
        }
        
        mutating func nestedUnkeyedContainer() throws -> UnkeyedDecodingContainer {
            fatalError("TODO")
        }
        
        mutating func superDecoder() throws -> Decoder {
            fatalError("TODO")
        }
        
        
    }
    
    func singleValueContainer() throws -> SingleValueDecodingContainer {
        return SVDC(element)
    }
    
    struct SVDC: SingleValueDecodingContainer {
        var codingPath: [CodingKey] = []
        let element: XMLElement
        
        init(_ element: XMLElement) {
            self.element = element
        }
        
        func decodeNil() -> Bool {
            fatalError()
        }
        
        func decode(_ type: Bool.Type) throws -> Bool {
            fatalError()
        }
        
        func decode(_ type: String.Type) throws -> String {
            return element.stringValue! // todo check "never nil" assumption
        }
        
        func decode(_ type: Double.Type) throws -> Double {
            fatalError()
        }
        
        func decode(_ type: Float.Type) throws -> Float {
            fatalError()
        }
        
        func decode(_ type: Int.Type) throws -> Int {
            fatalError()
        }
        
        func decode(_ type: Int8.Type) throws -> Int8 {
            fatalError()
        }
        
        func decode(_ type: Int16.Type) throws -> Int16 {
            fatalError()
        }
        
        func decode(_ type: Int32.Type) throws -> Int32 {
            fatalError()
        }
        
        func decode(_ type: Int64.Type) throws -> Int64 {
            fatalError()
        }
        
        func decode(_ type: UInt.Type) throws -> UInt {
            fatalError()
        }
        
        func decode(_ type: UInt8.Type) throws -> UInt8 {
            fatalError()
        }
        
        func decode(_ type: UInt16.Type) throws -> UInt16 {
            fatalError()
        }
        
        func decode(_ type: UInt32.Type) throws -> UInt32 {
            fatalError()
        }
        
        func decode(_ type: UInt64.Type) throws -> UInt64 {
            fatalError()
        }
        
        func decode<T>(_ type: T.Type) throws -> T where T : Decodable {
            fatalError()
        }
    }
}

struct Account: Codable {
    enum State: String, Codable {
        case active, canceled
    }
    var state: State
    var email: String
    var company_name: String?
    var subscriptions: URL?
}

struct Subscription: Codable {
    enum State: String, Codable {
        case active, expired
    }
    var state: State
    var currency: String
    var expires_at: Date?
    var current_period_started_at: Date?
}

func decodeXML<T: Codable>(_ str: String) throws -> T {
    let document = try XMLDocument(xmlString: str, options: [])
    let root = document.rootElement()!
    let decoder = RecurlyXMLDecoder(root)
    return try T(from: decoder)
}

let subs: [Subscription] = try decodeXML(subXml)
print(subs)

