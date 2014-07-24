.class public Lcom/android/server/enterprise/firewall/FirewallRule;
.super Ljava/lang/Object;
.source "FirewallRule.java"


# static fields
.field public static final APPEND:I = 0x1

.field public static final BOTH_DIRECTION:Ljava/lang/String; = "both"

.field public static final BOTH_INTERFACES:Ljava/lang/String; = "both"

.field public static final BOTH_PORT_LOCATION:Ljava/lang/String; = "both"

.field public static final BOTH_PROTOCOL:Ljava/lang/String; = "both"

.field public static final DATA_INTERFACE:Ljava/lang/String; = "data"

.field public static final DELETE:I = 0x2

.field public static final FILTER_TABLE:Ljava/lang/String; = "filter"

.field public static final INSERT:I = 0x3

.field public static final IN_DIRECTION:Ljava/lang/String; = "in"

.field public static final LOCAL_PORT_LOCATION:Ljava/lang/String; = "local"

.field public static final MANGLE_TABLE:Ljava/lang/String; = "mangle"

.field public static final NAT_TABLE:Ljava/lang/String; = "nat"

.field public static final NO_TYPE_SET:I = -0x1

.field public static final NO_UID_SET:I = -0x1

.field public static final OUT_DIRECTION:Ljava/lang/String; = "out"

.field public static final RAW_TABLE:Ljava/lang/String; = "raw"

.field public static final REMOTE_PORT_LOCATION:Ljava/lang/String; = "remote"

.field private static final TAG:Ljava/lang/String; = "FirewallPolicy"

.field public static final TCP_PROTOCOL:Ljava/lang/String; = "tcp"

.field public static final UDP_PROTOCOL:Ljava/lang/String; = "udp"

.field public static final WIFI_INTERFACE:Ljava/lang/String; = "wifi"


# instance fields
.field private mChain:Ljava/lang/String;

.field private mDirection:Ljava/lang/String;

.field private mIprange:Ljava/lang/String;

.field private mNetworkInterface:Ljava/lang/String;

.field private mPort:Ljava/lang/String;

.field private mPortLocation:Ljava/lang/String;

.field private mProtocol:Ljava/lang/String;

.field private mRuleAction:Lcom/android/server/enterprise/firewall/FirewallRuleAction;

.field private mRuleType:I

.field private mTable:Ljava/lang/String;

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mRuleType:I

    iput v1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mUid:I

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallRule;->setDirection(Ljava/lang/String;)Z

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallRule;->setHostnameOrIp(Ljava/lang/String;)Z

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallRule;->setPort(Ljava/lang/String;)Z

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallRule;->setProtocol(Ljava/lang/String;)Z

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallRule;->setPortLocation(Ljava/lang/String;)Z

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallRule;->setNetworkInterface(Ljava/lang/String;)Z

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallRule;->setRuleType(I)Z

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallRule;->setUid(I)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallRule;->setRuleAction(Lcom/android/server/enterprise/firewall/FirewallRuleAction;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/enterprise/firewall/FirewallRuleAction;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mRuleType:I

    iput v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mUid:I

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->setTable(Ljava/lang/String;)Z

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/firewall/FirewallRule;->setChain(Ljava/lang/String;)Z

    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/firewall/FirewallRule;->setDirection(Ljava/lang/String;)Z

    invoke-virtual {p0, p4}, Lcom/android/server/enterprise/firewall/FirewallRule;->setHostnameOrIp(Ljava/lang/String;)Z

    invoke-virtual {p0, p5}, Lcom/android/server/enterprise/firewall/FirewallRule;->setPort(Ljava/lang/String;)Z

    invoke-virtual {p0, p6}, Lcom/android/server/enterprise/firewall/FirewallRule;->setProtocol(Ljava/lang/String;)Z

    invoke-virtual {p0, p7}, Lcom/android/server/enterprise/firewall/FirewallRule;->setPortLocation(Ljava/lang/String;)Z

    invoke-virtual {p0, p8}, Lcom/android/server/enterprise/firewall/FirewallRule;->setNetworkInterface(Ljava/lang/String;)Z

    invoke-virtual {p0, p9}, Lcom/android/server/enterprise/firewall/FirewallRule;->setRuleType(I)Z

    invoke-virtual {p0, p10}, Lcom/android/server/enterprise/firewall/FirewallRule;->setUid(I)Z

    invoke-virtual {p0, p11}, Lcom/android/server/enterprise/firewall/FirewallRule;->setRuleAction(Lcom/android/server/enterprise/firewall/FirewallRuleAction;)Z

    return-void
.end method


# virtual methods
.method public getChain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mChain:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mDirection:Ljava/lang/String;

    return-object v0
.end method

.method public getHostnameOrIp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mIprange:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkInterface()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mNetworkInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mPort:Ljava/lang/String;

    return-object v0
.end method

.method public getPortLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mPortLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleAction()Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mRuleAction:Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    return-object v0
.end method

.method public getRuleType()I
    .locals 1

    iget v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mRuleType:I

    return v0
.end method

.method public getTable()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mTable:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mUid:I

    return v0
.end method

.method public setChain(Ljava/lang/String;)Z
    .locals 1

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mChain:Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method

.method public setDirection(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "both"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "in"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "out"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mDirection:Ljava/lang/String;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHostnameOrIp(Ljava/lang/String;)Z
    .locals 1

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mIprange:Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method

.method public setNetworkInterface(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "both"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "wifi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mNetworkInterface:Ljava/lang/String;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPort(Ljava/lang/String;)Z
    .locals 1

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mPort:Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method

.method public setPortLocation(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "both"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "remote"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "local"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mPortLocation:Ljava/lang/String;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setProtocol(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "both"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "tcp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "udp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mProtocol:Ljava/lang/String;

    const-string v0, "FirewallPolicy"

    const-string/jumbo v1, "setProtocol before true"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-string v0, "FirewallPolicy"

    const-string/jumbo v1, "setProtocol before false"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRuleAction(Lcom/android/server/enterprise/firewall/FirewallRuleAction;)Z
    .locals 1

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mRuleAction:Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    const/4 v0, 0x1

    return v0
.end method

.method public setRuleType(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mRuleType:I

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTable(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "filter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nat"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "raw"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mangle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mTable:Ljava/lang/String;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUid(I)Z
    .locals 1

    iput p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mUid:I

    const/4 v0, 0x1

    return v0
.end method
