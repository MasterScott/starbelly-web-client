import 'dart:convert';
import 'dart:typed_data';

import 'package:convert/convert.dart' as convert;

import 'package:starbelly/protobuf/protobuf.dart' as pb;

/// A crawl policy.
class Policy {
    String policyId;
    String name;
    DateTime createdAt;
    DateTime updatedAt;

    PolicyLimits limits;
    List<PolicyMimeTypeRule> mimeTypeRules;
    List<PolicyProxyRule> proxyRules;
    PolicyRobotsTxt robotsTxt;
    List<PolicyUrlRule> urlRules;
    List<PolicyUserAgent> userAgents;

    /// Create an empty, default policy.
    Policy() {
        this.name = 'New Policy';
        this.createdAt = new DateTime.now();
        this.updatedAt = new DateTime.now();
        this.limits = new PolicyLimits();
        this.mimeTypeRules = [new PolicyMimeTypeRule()];
        this.proxyRules = [];
        this.robotsTxt = new PolicyRobotsTxt();
        this.urlRules = [new PolicyUrlRule()];
        this.userAgents = [new PolicyUserAgent()];
    }

    /// Instantiate a policy from a protobuf message.
    Policy.fromPb(pb.Policy pbPolicy) {
        // These fields should always be present.
        this.policyId = convert.hex.encode(pbPolicy.policyId);
        this.name = pbPolicy.name;
        this.createdAt = DateTime.parse(pbPolicy.createdAt).toLocal();
        this.updatedAt = DateTime.parse(pbPolicy.updatedAt).toLocal();

        // These fields are only present when getting policy details.
        if (pbPolicy.hasLimits()) {
            this.limits = new PolicyLimits.fromPb(pbPolicy.limits);
        }
        this.mimeTypeRules = new List<PolicyMimeTypeRule>.generate(
            pbPolicy.mimeTypeRules.length,
            (i) => new PolicyMimeTypeRule.fromPb(pbPolicy.mimeTypeRules[i])
        );
        this.proxyRules = new List<PolicyProxyRule>.generate(
            pbPolicy.proxyRules.length,
            (i) => new PolicyProxyRule.fromPb(pbPolicy.proxyRules[i])
        );
        if (pbPolicy.hasRobotsTxt()) {
            this.robotsTxt = new PolicyRobotsTxt.fromPb(pbPolicy.robotsTxt);
        }
        this.urlRules = new List<PolicyUrlRule>.generate(
            pbPolicy.urlRules.length,
            (i) => new PolicyUrlRule.fromPb(pbPolicy.urlRules[i])
        );
        this.userAgents = new List<PolicyUserAgent>.generate(
            pbPolicy.userAgents.length,
            (i) => new PolicyUserAgent.fromPb(pbPolicy.userAgents[i])
        );
    }

    /// Convert to protobuf object.
    pb.Policy toPb() {
        var pbPolicy = new pb.Policy();
        if (this.policyId != null) {
            pbPolicy.policyId = convert.hex.decode(this.policyId);
        }
        pbPolicy.name = this.name;
        pbPolicy.limits = this.limits.toPb();
        for (var mimeTypeRule in this.mimeTypeRules) {
            pbPolicy.mimeTypeRules.add(mimeTypeRule.toPb());
        }
        for (var proxyRule in this.proxyRules) {
            pbPolicy.proxyRules.add(proxyRule.toPb());
        }
        pbPolicy.robotsTxt = this.robotsTxt.toPb();
        for (var urlRule in this.urlRules) {
            pbPolicy.urlRules.add(urlRule.toPb());
        }
        for (var userAgent in this.userAgents) {
            pbPolicy.userAgents.add(userAgent.toPb());
        }
        return pbPolicy;
    }
}

/// Limits on how long or far a crawl runs.
class PolicyLimits {
    String maxCost;
    String maxDuration;
    String maxItems;

    /// Create a default object.
    PolicyLimits() {
        this.maxCost = '10';
        this.maxDuration = '';
        this.maxItems = '';
    }

    /// Create from a protobuf message.
    PolicyLimits.fromPb(pb.PolicyLimits pbLimits) {
        this.maxCost = pbLimits.hasMaxCost() ?
            pbLimits.maxCost.toString() : '';
        this.maxDuration = pbLimits.hasMaxDuration() ?
            pbLimits.maxDuration.toString() : '';
        this.maxItems = pbLimits.hasMaxItems() ?
            pbLimits.maxItems.toString() : '';
    }

    /// Convert to protobuf message.
    pb.PolicyLimits toPb() {
        var pbLimits = new pb.PolicyLimits();
        if (this.maxCost.isNotEmpty) {
            pbLimits.maxCost = double.parse(this.maxCost);
        }
        if (this.maxDuration.isNotEmpty) {
            pbLimits.maxDuration = double.parse(this.maxDuration);
        }
        if (this.maxItems.isNotEmpty) {
            pbLimits.maxItems = int.parse(this.maxItems, radix:10);
        }
        return pbLimits;
    }
}

/// A rule about whether to save or discard certain mime types.
class PolicyMimeTypeRule {
    String pattern;
    pb.PatternMatch match;
    bool save;

    /// Create a default object.
    PolicyMimeTypeRule() {
        this.pattern = '';
        this.match = pb.PatternMatch.MATCHES;
        this.save = true;
    }

    /// Create from a protobuf message.
    PolicyMimeTypeRule.fromPb(pb.PolicyMimeTypeRule pbRule) {
        // Required:
        this.save = pbRule.save;

        // Optional:
        this.pattern = pbRule.hasPattern() ? pbRule.pattern : '';
        if (pbRule.hasMatch()) {
            this.match = pbRule.match;
        }
    }

    /// Convert to protobuf message.
    pb.PolicyMimeTypeRule toPb() {
        var pbRule = new pb.PolicyMimeTypeRule();
        pbRule.save = this.save;
        if (this.pattern.isNotEmpty) {
            pbRule.pattern = this.pattern;
        }
        if (this.match != null) {
            pbRule.match = this.match;
        }
        return pbRule;
    }
}

/// A rule about when and how to proxy requests.
class PolicyProxyRule {
    String pattern;
    pb.PatternMatch match;
    String proxyUrl;

    /// Create a default object.
    PolicyProxyRule() {
        this.pattern = '';
        this.match = pb.PatternMatch.MATCHES;
        this.proxyUrl = '';
    }

    /// Create from a protobuf message.
    PolicyProxyRule.fromPb(pb.PolicyProxyRule pbRule) {
        // Required:
        this.proxyUrl = pbRule.proxyUrl;

        // Optional:
        this.pattern = pbRule.hasPattern() ? pbRule.pattern : '';
        if (pbRule.hasMatch()) {
            this.match = pbRule.match;
        }
    }

    /// Convert to protobuf message.
    pb.PolicyProxyRule toPb() {
        var pbRule = new pb.PolicyProxyRule();
        if (this.pattern.isNotEmpty) {
            pbRule.pattern = this.pattern;
        }
        if (this.match != null) {
            pbRule.match = this.match;
        }
        if (this.proxyUrl.isNotEmpty) {
            pbRule.proxyUrl = this.proxyUrl;
        }
        return pbRule;
    }
}

/// Specifies handling of robots.txt.
class PolicyRobotsTxt {
    pb.PolicyRobotsTxt_Usage usage;

    /// Create a default object.
    PolicyRobotsTxt() {
        this.usage = pb.PolicyRobotsTxt_Usage.OBEY;
    }

    /// Create from a protobuf message.
    PolicyRobotsTxt.fromPb(pb.PolicyMimeTypeRule pbRobots) {
        this.usage = pbRobots.usage;
    }

    /// Convert to protobuf message.
    pb.PolicyRobotsTxt toPb() {
        var pbRobots = new pb.PolicyRobotsTxt()
            ..usage = this.usage;
        return pbRobots;
    }
}

/// A rule to adjust a URL's cost.
class PolicyUrlRule {
    String pattern;
    pb.PatternMatch match;
    pb.PolicyUrlRule_Action action;
    String amount;

    /// Create a default object.
    PolicyUrlRule() {
        this.pattern = '';
        this.match = pb.PatternMatch.MATCHES;
        this.action = pb.PolicyUrlRule_Action.ADD;
        this.amount = '1';
    }

    /// Create from a protobuf message.
    PolicyUrlRule.fromPb(pb.PolicyUrlRule pbRule) {
        // Required:
        this.action = pbRule.action;
        this.amount = pbRule.amount.toString();

        // Optional:
        this.pattern = pbRule.hasPattern() ? pbRule.pattern : '';
        if (pbRule.hasMatch()) {
            this.match = pbRule.match;
        }
    }

    /// Convert to protobuf message.
    pb.PolicyUrlRule toPb() {
        var pbRule = new pb.PolicyUrlRule()
            ..action = this.action;
        if (this.pattern.isNotEmpty) {
            pbRule.pattern = this.pattern;
        }
        if (this.match != null) {
            pbRule.match = this.match;
        }
        if (amount.isNotEmpty) {
            pbRule.amount = double.parse(this.amount);
        }
        return pbRule;
    }
}

/// A rule to adjust a URL's cost.
class PolicyUserAgent {
    String name;

    /// Create a default user agent.
    PolicyUserAgent() {
        this.name = 'Starbelly/{VERSION}'
            ' (+https://gitlab.com/hyperion-gray/starbelly)';
    }

    /// Create a blank user agent.
    PolicyUserAgent.blank() {
        this.name = '';
    }

    /// Create from a protobuf message.
    PolicyUserAgent.fromPb(pb.PolicyUserAgent pbUserAgent) {
        this.name = pbUserAgent.name;
    }

    /// Convert to protobuf message.
    pb.PolicyUserAgent toPb() {
        var pbUserAgent = new pb.PolicyUserAgent()
            ..name = this.name;
        return pbUserAgent;
    }
}
