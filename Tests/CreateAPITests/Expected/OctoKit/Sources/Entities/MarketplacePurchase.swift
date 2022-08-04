// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import NaiveDate

public struct MarketplacePurchase: Codable {
    public var url: String
    public var type: String
    public var id: Int
    public var login: String
    public var organizationBillingEmail: String?
    public var email: String?
    public var marketplacePendingChange: MarketplacePendingChange?
    public var marketplacePurchase: MarketplacePurchase

    public struct MarketplacePendingChange: Codable {
        public var isInstalled: Bool?
        public var effectiveDate: String?
        public var unitCount: Int?
        public var id: Int?
        /// Marketplace Listing Plan
        public var plan: MarketplaceListingPlan?

        public init(isInstalled: Bool? = nil, effectiveDate: String? = nil, unitCount: Int? = nil, id: Int? = nil, plan: MarketplaceListingPlan? = nil) {
            self.isInstalled = isInstalled
            self.effectiveDate = effectiveDate
            self.unitCount = unitCount
            self.id = id
            self.plan = plan
        }

        private enum CodingKeys: String, CodingKey {
            case isInstalled = "is_installed"
            case effectiveDate = "effective_date"
            case unitCount = "unit_count"
            case id
            case plan
        }
    }

    public struct MarketplacePurchase: Codable {
        public var billingCycle: String?
        public var nextBillingDate: String?
        public var isInstalled: Bool?
        public var unitCount: Int?
        public var isOnFreeTrial: Bool?
        public var freeTrialEndsOn: String?
        public var updatedAt: String?
        /// Marketplace Listing Plan
        public var plan: MarketplaceListingPlan?

        public init(billingCycle: String? = nil, nextBillingDate: String? = nil, isInstalled: Bool? = nil, unitCount: Int? = nil, isOnFreeTrial: Bool? = nil, freeTrialEndsOn: String? = nil, updatedAt: String? = nil, plan: MarketplaceListingPlan? = nil) {
            self.billingCycle = billingCycle
            self.nextBillingDate = nextBillingDate
            self.isInstalled = isInstalled
            self.unitCount = unitCount
            self.isOnFreeTrial = isOnFreeTrial
            self.freeTrialEndsOn = freeTrialEndsOn
            self.updatedAt = updatedAt
            self.plan = plan
        }

        private enum CodingKeys: String, CodingKey {
            case billingCycle = "billing_cycle"
            case nextBillingDate = "next_billing_date"
            case isInstalled = "is_installed"
            case unitCount = "unit_count"
            case isOnFreeTrial = "on_free_trial"
            case freeTrialEndsOn = "free_trial_ends_on"
            case updatedAt = "updated_at"
            case plan
        }
    }

    public init(url: String, type: String, id: Int, login: String, organizationBillingEmail: String? = nil, email: String? = nil, marketplacePendingChange: MarketplacePendingChange? = nil, marketplacePurchase: MarketplacePurchase) {
        self.url = url
        self.type = type
        self.id = id
        self.login = login
        self.organizationBillingEmail = organizationBillingEmail
        self.email = email
        self.marketplacePendingChange = marketplacePendingChange
        self.marketplacePurchase = marketplacePurchase
    }

    private enum CodingKeys: String, CodingKey {
        case url
        case type
        case id
        case login
        case organizationBillingEmail = "organization_billing_email"
        case email
        case marketplacePendingChange = "marketplace_pending_change"
        case marketplacePurchase = "marketplace_purchase"
    }
}
