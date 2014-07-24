.class public Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
.super Ljava/lang/Object;
.source "FirewallPolicyCache.java"


# instance fields
.field public mAllowQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mContainerId:I

.field public mDenyQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mIsUrlBlacklistUpdated:Z

.field public mIsUrlFilterReportUpdated:Z

.field public mIsUrlFilterStateUpdated:Z

.field public mRerouteQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mUrlBlacklistAllAdmin:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mUrlFilterReportState:Z

.field public mUrlFilterStateCache:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    iput-boolean v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlBlacklistUpdated:Z

    iput-boolean v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlFilterStateCache:Z

    iput-boolean v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlFilterStateUpdated:Z

    iput-boolean v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlFilterReportState:Z

    iput-boolean v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlFilterReportUpdated:Z

    iput p1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mContainerId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mAllowQueue:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mDenyQueue:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mRerouteQueue:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-boolean v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlBlacklistUpdated:Z

    iput-boolean v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlFilterStateUpdated:Z

    iput-boolean v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlFilterReportUpdated:Z

    return-void
.end method
