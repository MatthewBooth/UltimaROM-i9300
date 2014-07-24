.class public Lcom/android/server/enterprise/firewall/FirewallPolicy;
.super Landroid/app/enterprise/IFirewallPolicy$Stub;
.source "FirewallPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;,
        Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;
    }
.end annotation


# static fields
.field private static final ALLOW_TYPE:Ljava/lang/String; = "allow"

.field private static final DENY_TYPE:Ljava/lang/String; = "deny"

.field private static final FIREWALL_POLICY_SERVICE:Ljava/lang/String; = "FirewallPolicy"

.field private static final HTTP_PROXY_TYPE:Ljava/lang/String; = "proxy"

.field private static final INTERFACE_TYPES:[Ljava/lang/String; = null

.field private static final IPTABLES:Ljava/lang/String; = "/system/bin/iptables"

.field private static final LOCATION:I = 0x4

.field private static final MARKET_ALL_NETWORKS:I = 0x0

.field private static final MARKET_IPTABLES_CHAIN:Ljava/lang/String; = "samsung_market_policy"

.field private static final MARKET_PACKAGE_NAMES:[Ljava/lang/String; = null

.field private static final MARKET_WIFI_ONLY:I = 0x1

.field static final NUM_OF_CONTAINER:I = 0x2

.field public static final REDIRECT_EXCEPTION_CHAIN:Ljava/lang/String; = "samsung_exceptions"

.field private static final REDIRECT_EXCEPTION_TYPE:Ljava/lang/String; = "redirect_exception"

.field private static final REROUTE_TYPE:Ljava/lang/String; = "reroute"

.field private static final TAG:Ljava/lang/String; = "FirewallPolicy"

.field public static final iptablesChains:[Ljava/lang/String;

.field private static isIptChainsCreated:Z


# instance fields
.field private final ACTION_USER_ADDED:Ljava/lang/String;

.field private isMarketChainCreated:Z

.field private mBootReceiver:Landroid/content/BroadcastReceiver;

.field private mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

.field private mCon:Landroid/net/IConnectivityManager;

.field private mConnectionReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mIsOnline:Z

.field private mLooperThread:Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;

.field private mNetd:Landroid/os/INetworkManagementService;

.field private mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

.field private mUserCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/android/server/enterprise/firewall/FirewallPolicyCache;",
            ">;"
        }
    .end annotation
.end field

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "samsung_reroute"

    aput-object v1, v0, v3

    const-string v1, "samsung_allow"

    aput-object v1, v0, v4

    const-string v1, "samsung_deny"

    aput-object v1, v0, v5

    const-string v1, "samsung_proxy"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "samsung_log"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.android.vending"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->MARKET_PACKAGE_NAMES:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "wifi"

    aput-object v1, v0, v3

    const-string v1, "data"

    aput-object v1, v0, v4

    const-string v1, "*"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->INTERFACE_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Landroid/app/enterprise/IFirewallPolicy$Stub;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsOnline:Z

    const-string v2, "android.intent.action.USER_ADDED"

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->ACTION_USER_ADDED:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUserCache:Ljava/util/HashMap;

    new-instance v2, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;-><init>(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/enterprise/firewall/FirewallPolicy$2;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy$2;-><init>(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    new-instance v2, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;-><init>(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mLooperThread:Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mLooperThread:Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;

    invoke-virtual {v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;->start()V

    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v2, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-direct {v2}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/firewall/FirewallPolicy;Ljava/lang/Process;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getCommandResult(Ljava/lang/Process;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/firewall/FirewallPolicy;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->checkIptablesCommandResult(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->handleConnectivityAction()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAllUsers()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/firewall/FirewallPolicy;II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getFirewallPolicyCache(II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/firewall/FirewallPolicy;Lcom/android/server/enterprise/firewall/FirewallPolicyCache;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->addPendingCommand(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshProxyRules()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/firewall/FirewallPolicy;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/firewall/FirewallPolicy;Landroid/app/enterprise/ContextInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyNetworkForMarket(Landroid/app/enterprise/ContextInfo;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Landroid/os/INetworkManagementService;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Landroid/net/IConnectivityManager;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getConnectivityManagerService()Landroid/net/IConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method private addPendingCommand(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;Ljava/lang/String;I)V
    .locals 2

    packed-switch p3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "FirewallPolicy"

    const-string v1, "allow command enqueued"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mAllowQueue:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mAllowQueue:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_1
    const-string v0, "FirewallPolicy"

    const-string v1, "deny command enqueued"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mDenyQueue:Ljava/util/List;

    monitor-enter v1

    :try_start_1
    iget-object v0, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mDenyQueue:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :pswitch_2
    const-string v0, "FirewallPolicy"

    const-string v1, "reroute command enqueued"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mRerouteQueue:Ljava/util/List;

    monitor-enter v1

    :try_start_2
    iget-object v0, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mRerouteQueue:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private addRulesToDb(ILjava/util/ArrayList;ILjava/lang/String;ZLjava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const/4 v5, 0x0

    const-string v4, "FirewallPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addRulesToDb enter containerId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " enabled:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v1, -0x1

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3, p4, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->checkDuplicateRule(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "adminUid"

    invoke-static {p3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "rules"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_2

    const-string v4, "enabled"

    const-string/jumbo v6, "true"

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string/jumbo v4, "type"

    invoke-virtual {v0, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "timestamp"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "FirewallTable"

    invoke-virtual {v4, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    :goto_2
    return v4

    :cond_2
    const-string v4, "enabled"

    const-string v6, "false"

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    goto :goto_2
.end method

.method private applyBasicRules(IILjava/util/List;II)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "FirewallPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyBasicRules() containerId:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " uid:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " type:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " jumpAction:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    const-string v3, ";"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v3, v0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    move-object/from16 v0, v16

    array-length v3, v0

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    move-object/from16 v0, v16

    array-length v3, v0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    const-string v3, "FirewallPolicy"

    const-string v4, "applyBasicRules() parameters not mathced"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_1
    return v3

    :cond_0
    const/4 v3, 0x0

    aget-object v3, v16, v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "host"

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "port"

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "portLocation"

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    aget-object v3, v12, v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    aget-object v3, v12, v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    aget-object v3, v16, v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v16

    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const-string/jumbo v3, "type"

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "default"

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createJSON(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v15

    :goto_2
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object/from16 v0, v16

    array-length v3, v0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    const-string v3, "networkInterface"

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v3, "type"

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    aget-object v3, v16, v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "app"

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createJSON(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v15

    goto :goto_2

    :cond_2
    const-string v3, "packageName"

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "networkInterface"

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v3, "type"

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    aget-object v3, v16, v3

    move/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x3

    aget-object v3, v16, v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "app"

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createJSON(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v15

    goto :goto_2

    :cond_3
    const-string v7, ""

    const/4 v3, 0x1

    move/from16 v0, p5

    if-ne v0, v3, :cond_4

    const-string v7, "allow"

    :goto_3
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules(II)I

    move-result v13

    move/from16 v0, p2

    if-ne v13, v0, :cond_6

    const/4 v8, 0x1

    :goto_4
    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_8

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v6, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->addRulesToDb(ILjava/util/ArrayList;ILjava/lang/String;ZLjava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v9}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeDuplicatesFromList(Ljava/util/List;Ljava/util/List;)V

    if-eqz v8, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshRules()Z

    move-result v3

    goto/16 :goto_1

    :cond_4
    const/4 v3, 0x2

    move/from16 v0, p5

    if-ne v0, v3, :cond_5

    const-string v7, "deny"

    goto :goto_3

    :cond_5
    const-string v3, "FirewallPolicy"

    const-string v4, "applyBasicRules() jumpAction not mathced"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_6
    const/4 v8, 0x0

    goto :goto_4

    :cond_7
    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_8
    const/4 v3, 0x2

    move/from16 v0, p4

    if-ne v0, v3, :cond_a

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v5, v2, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRulesFromDb(ILjava/util/ArrayList;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    if-eqz v8, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshRules()Z

    move-result v3

    goto/16 :goto_1

    :cond_9
    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method private applyBasicRulesToIptables(ILjava/util/List;III)Z
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;III)Z"
        }
    .end annotation

    const-string v5, "FirewallPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyBasicRulesToIptables... adminUid>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " containerId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " jumpAction:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v16, 0x0

    const-string v12, ""

    const-string v26, ""

    const-string v8, ""

    const-string v9, ""

    const-string v11, ""

    const/4 v5, 0x1

    move/from16 v0, p3

    if-eq v0, v5, :cond_0

    const/4 v5, 0x2

    move/from16 v0, p3

    if-eq v0, v5, :cond_0

    const-string v5, "FirewallPolicy"

    const-string v6, "applyBasicRulesToIptables... type not mached"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_0
    sget-boolean v5, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isIptChainsCreated:Z

    if-nez v5, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createIptablesChains(I)V

    :cond_1
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    const/16 v25, 0x0

    const/4 v5, 0x1

    move/from16 v0, p4

    if-eq v0, v5, :cond_2

    const/4 v5, 0x2

    move/from16 v0, p4

    if-eq v0, v5, :cond_2

    const-string v5, "FirewallPolicy"

    const-string v6, "applyBasicRulesToIptables... jumpAction not mached"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    if-eqz v19, :cond_4

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    :cond_4
    const-string v5, ";"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    array-length v5, v0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_5

    move-object/from16 v0, v27

    array-length v5, v0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_5

    move-object/from16 v0, v27

    array-length v5, v0

    const/4 v6, 0x4

    if-eq v5, v6, :cond_5

    const/4 v5, 0x0

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    aget-object v5, v27, v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    const/4 v5, 0x0

    aget-object v8, v17, v5

    const/4 v5, 0x1

    aget-object v9, v17, v5

    const/4 v5, 0x1

    aget-object v11, v27, v5

    const/4 v5, 0x0

    aget-object v5, v17, v5

    const-string v6, "(.*[a-zA-Z]+.*)"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/16 v25, 0x1

    :goto_1
    move-object/from16 v0, v27

    array-length v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_d

    const/4 v5, 0x2

    aget-object v5, v27, v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const/4 v5, 0x2

    aget-object v12, v27, v5

    :cond_6
    :goto_2
    const-string v5, "*"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v8, ""

    :cond_7
    const-string v5, "*"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v9, ""

    :cond_8
    const-string v5, "-"

    const-string v6, ":"

    invoke-virtual {v9, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "*"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v11, "both"

    :cond_9
    if-eqz v26, :cond_a

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v26

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUids(ILjava/lang/String;I)[I

    move-result-object v16

    :cond_a
    if-eqz v16, :cond_3

    const/16 v21, 0x0

    :goto_3
    move-object/from16 v0, v16

    array-length v5, v0

    move/from16 v0, v21

    if-ge v0, v5, :cond_3

    new-instance v15, Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    invoke-direct {v15}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;-><init>()V

    move/from16 v0, p4

    invoke-virtual {v15, v0}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setAction(I)Z

    new-instance v4, Lcom/android/server/enterprise/firewall/FirewallRule;

    const-string v5, "filter"

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getChain(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "both"

    const-string v10, ""

    aget v14, v16, v21

    move/from16 v13, p3

    invoke-direct/range {v4 .. v15}, Lcom/android/server/enterprise/firewall/FirewallRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/enterprise/firewall/FirewallRuleAction;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-virtual {v5, v4}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->createIptCommands(Lcom/android/server/enterprise/firewall/FirewallRule;)Ljava/util/List;

    move-result-object v19

    if-eqz v19, :cond_11

    if-eqz v25, :cond_10

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    const/16 v25, 0x0

    goto/16 :goto_1

    :cond_c
    const-string v12, ""

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, v27

    array-length v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_6

    const/4 v5, 0x2

    aget-object v5, v27, v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    const/4 v5, 0x2

    aget-object v5, v27, v5

    move/from16 v0, p1

    invoke-static {v0, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v26

    :goto_5
    const/4 v5, 0x3

    aget-object v5, v27, v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const/4 v5, 0x3

    aget-object v12, v27, v5

    goto/16 :goto_2

    :cond_e
    const-string v26, ""

    goto :goto_5

    :cond_f
    const-string v12, ""

    goto/16 :goto_2

    :cond_10
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_6
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_11
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_3

    :cond_12
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_13

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;)Ljava/util/List;

    :cond_13
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_14

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;ZI)Ljava/util/List;

    :cond_14
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method private declared-synchronized applyDnsPerAppRule(II)V
    .locals 17

    monitor-enter p0

    :try_start_0
    const-string v13, "FirewallPolicy"

    const-string v14, "applyDnsPerAppRule - Begin"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getNetworkManagementService()Landroid/os/INetworkManagementService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v13

    if-eqz v13, :cond_2

    :try_start_1
    invoke-direct/range {p0 .. p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAllPackagesFromDB(II)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v12, 0x0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v8, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getDnsFromPackage(ILjava/lang/String;I)Ljava/util/List;

    move-result-object v7

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v8, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUidForUser(Ljava/lang/String;I)I

    move-result v12

    const-string v13, "FirewallPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "applyDnsPerAppRule - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " userId "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    if-ge v5, v13, :cond_1

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateIp(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mNetd:Landroid/os/INetworkManagementService;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/String;

    invoke-interface {v3, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-interface {v14, v15, v13, v0}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mNetd:Landroid/os/INetworkManagementService;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14, v12, v12}, Landroid/os/INetworkManagementService;->setDnsInterfaceForUidRange(Ljava/lang/String;II)V

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v13, "FirewallPolicy"

    const-string v14, "applyDnsPerAppRule - Rule Applied"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    :try_start_2
    const-string v13, "FirewallPolicy"

    const-string v14, "applyDnsPerAppRule Exception"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13
.end method

.method private applyMarketIptablesRules(ILjava/lang/String;I)V
    .locals 17

    const-string v3, "FirewallPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyMarketIptablesRules , packageName->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " adminUid->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUids(ILjava/lang/String;I)[I

    move-result-object v14

    if-eqz v14, :cond_1

    const/16 v16, 0x0

    :goto_0
    array-length v3, v14

    move/from16 v0, v16

    if-ge v0, v3, :cond_1

    new-instance v13, Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    invoke-direct {v13}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;-><init>()V

    const/4 v3, 0x6

    invoke-virtual {v13, v3}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setAction(I)Z

    new-instance v2, Lcom/android/server/enterprise/firewall/FirewallRule;

    const-string v3, "filter"

    const-string v4, "samsung_market_policy"

    const-string v5, "out"

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, "data"

    const/4 v11, 0x1

    aget v12, v14, v16

    invoke-direct/range {v2 .. v13}, Lcom/android/server/enterprise/firewall/FirewallRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/enterprise/firewall/FirewallRuleAction;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->createIptCommands(Lcom/android/server/enterprise/firewall/FirewallRule;)Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;)Ljava/util/List;

    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private applyNetworkForMarket(Landroid/app/enterprise/ContextInfo;)V
    .locals 8

    const/4 v7, 0x1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createChainForMarket(I)V

    invoke-virtual {p0, p1, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getNetworkForMarket(Landroid/app/enterprise/ContextInfo;Z)I

    move-result v6

    if-ne v6, v7, :cond_0

    sget-object v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->MARKET_PACKAGE_NAMES:[Ljava/lang/String;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    invoke-direct {p0, v2, v5, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyMarketIptablesRules(ILjava/lang/String;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private applyProxyRules(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 19

    const-string v2, "FirewallPolicy"

    const-string v6, "applyProxyRules..."

    invoke-static {v2, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    move-object/from16 v0, p1

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(II)I

    move-result v17

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move/from16 v0, v17

    if-ne v0, v5, :cond_1

    const/4 v7, 0x1

    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v18, Lorg/json/JSONObject;

    invoke-direct/range {v18 .. v18}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "host"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "port"

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_5

    move-object/from16 v2, p0

    move-object/from16 v6, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->addRulesToDb(ILjava/util/ArrayList;ILjava/lang/String;ZLjava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v7, :cond_3

    move-object/from16 v9, p0

    move v10, v3

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v14, p5

    move v15, v5

    invoke-direct/range {v9 .. v15}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyProxyRulesToIptables(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v2

    goto :goto_1

    :catch_0
    move-exception v16

    const-string v2, "FirewallPolicy"

    const-string v6, "JSONException"

    invoke-static {v2, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    const/4 v2, 0x2

    move/from16 v0, p4

    if-ne v0, v2, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v3, v4, v5, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRulesFromDb(ILjava/util/ArrayList;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v7, :cond_6

    move-object/from16 v9, p0

    move v10, v3

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v14, p5

    move v15, v5

    invoke-direct/range {v9 .. v15}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyProxyRulesToIptables(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v2

    goto :goto_1

    :cond_6
    const/4 v2, 0x1

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    :cond_8
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private applyProxyRulesToIptables(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 17

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x0

    sget-boolean v4, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isIptChainsCreated:Z

    if-nez v4, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createIptablesChains(I)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_2
    const-string v8, ""

    const-string v4, "proxy"

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v8, "80"

    :cond_3
    const-string v4, "*"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p6

    invoke-direct {v0, v1, v4, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUids(ILjava/lang/String;I)[I

    move-result-object v15

    new-instance v14, Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    invoke-direct {v14}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;-><init>()V

    const/4 v4, 0x3

    invoke-virtual {v14, v4}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setAction(I)Z

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setIpAddress(Ljava/lang/String;)Z

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setPort(Ljava/lang/String;)Z

    new-instance v3, Lcom/android/server/enterprise/firewall/FirewallRule;

    const-string v4, "nat"

    const/4 v5, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getChain(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "out"

    const-string v7, ""

    const-string/jumbo v9, "tcp"

    const-string v10, "remote"

    const-string v11, ""

    const/4 v12, 0x0

    aget v13, v15, v12

    move/from16 v12, p4

    invoke-direct/range {v3 .. v14}, Lcom/android/server/enterprise/firewall/FirewallRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/enterprise/firewall/FirewallRuleAction;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->createIptCommands(Lcom/android/server/enterprise/firewall/FirewallRule;)Ljava/util/List;

    move-result-object v16

    if-eqz v16, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    :cond_4
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private applyRedirectExceptionRules(IILjava/util/List;I)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    const-string v1, "FirewallPolicy"

    const-string v2, "applyRedirectExceptionRules..."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v13, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v1, v12

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "host"

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "port"

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    aget-object v1, v12, v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    aget-object v1, v12, v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v8, v9}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createJSON(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules(II)I

    move-result v10

    move/from16 v0, p2

    if-ne v10, v0, :cond_2

    const/4 v6, 0x1

    :goto_2
    const/4 v1, 0x1

    move/from16 v0, p4

    if-ne v0, v1, :cond_4

    const-string v5, "redirect_exception"

    move-object v1, p0

    move v2, p1

    move/from16 v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->addRulesToDb(ILjava/util/ArrayList;ILjava/lang/String;ZLjava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeDuplicatesFromList(Ljava/util/List;Ljava/util/List;)V

    if-eqz v6, :cond_3

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshRules()Z

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x2

    move/from16 v0, p4

    if-ne v0, v1, :cond_6

    const-string v1, "redirect_exception"

    move/from16 v0, p2

    invoke-direct {p0, p1, v3, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRulesFromDb(ILjava/util/ArrayList;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v6, :cond_5

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshRules()Z

    move-result v1

    goto :goto_1

    :cond_5
    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private applyRedirectExceptionRulesToIptables(ILjava/util/List;II)Z
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    const-string v3, "FirewallPolicy"

    const-string v4, "applyRedirectExceptionRulesToIptables..."

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isIptChainsCreated:Z

    if-nez v3, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createIptablesChains(I)V

    :cond_0
    const-string v8, "both"

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const-string v3, ":"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    const/4 v3, 0x0

    aget-object v3, v18, v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v18, v3

    :cond_2
    const/4 v3, 0x1

    aget-object v3, v18, v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v18, v3

    const-string v8, ""

    :cond_3
    new-instance v13, Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    invoke-direct {v13}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setAction(I)Z

    new-instance v2, Lcom/android/server/enterprise/firewall/FirewallRule;

    const-string v3, "nat"

    const-string v4, "samsung_exceptions"

    const-string v5, "out"

    const/4 v6, 0x0

    aget-object v6, v18, v6

    const/4 v7, 0x1

    aget-object v7, v18, v7

    const-string v9, "remote"

    const-string v10, ""

    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    move/from16 v11, p3

    invoke-direct/range {v2 .. v13}, Lcom/android/server/enterprise/firewall/FirewallRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/enterprise/firewall/FirewallRuleAction;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->createIptCommands(Lcom/android/server/enterprise/firewall/FirewallRule;)Ljava/util/List;

    move-result-object v20

    if-eqz v20, :cond_1

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string v3, "FirewallPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;)Ljava/util/List;

    :cond_5
    const/4 v3, 0x1

    return v3
.end method

.method private applyRerouteRules(IILjava/util/List;I)Z
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    const-string v3, ";"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v3, v12

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    array-length v3, v12

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    const/4 v3, 0x0

    :goto_1
    return v3

    :cond_0
    const/4 v3, 0x0

    aget-object v3, v12, v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    const/4 v3, 0x1

    aget-object v3, v12, v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "originHost"

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "originPort"

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "destHost"

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "destPort"

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    aget-object v3, v17, v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    aget-object v3, v17, v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    aget-object v3, v13, v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    aget-object v3, v13, v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    array-length v3, v12

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const-string/jumbo v3, "type"

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "default"

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createJSON(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v16

    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v3, "packageName"

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "networkInterface"

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v3, "type"

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    aget-object v3, v12, v3

    move/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x3

    aget-object v3, v12, v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "app"

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createJSON(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v16

    goto :goto_2

    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules(II)I

    move-result v14

    move/from16 v0, p2

    if-ne v14, v0, :cond_4

    const/4 v8, 0x1

    :goto_3
    const/4 v3, 0x1

    move/from16 v0, p4

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    move/from16 v0, p4

    if-ne v0, v3, :cond_7

    :cond_3
    const-string v7, "reroute"

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v6, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->addRulesToDb(ILjava/util/ArrayList;ILjava/lang/String;ZLjava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v9}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeDuplicatesFromList(Ljava/util/List;Ljava/util/List;)V

    if-eqz v8, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshRules()Z

    move-result v3

    goto/16 :goto_1

    :cond_4
    const/4 v8, 0x0

    goto :goto_3

    :cond_5
    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_7
    const/4 v3, 0x2

    move/from16 v0, p4

    if-ne v0, v3, :cond_a

    const-string v3, "reroute"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRulesFromDb(ILjava/util/ArrayList;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    if-eqz v8, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshRules()Z

    move-result v3

    goto/16 :goto_1

    :cond_8
    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method private applyRerouteRulesToIptables(ILjava/util/List;II)Z
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    const/16 v26, 0x0

    const-string v28, ""

    const-string v12, ""

    const/16 v16, 0x0

    sget-boolean v5, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isIptChainsCreated:Z

    if-nez v5, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createIptablesChains(I)V

    :cond_0
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    if-eqz v19, :cond_2

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    :cond_2
    const-string v5, ";"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    const/4 v5, 0x0

    aget-object v5, v17, v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    const/4 v5, 0x1

    aget-object v5, v17, v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    array-length v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    const/4 v5, 0x2

    aget-object v5, v17, v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x2

    aget-object v5, v17, v5

    move/from16 v0, p1

    invoke-static {v0, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    :cond_3
    const/4 v5, 0x3

    aget-object v5, v17, v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x3

    aget-object v12, v17, v5

    :cond_4
    const/4 v5, 0x0

    aget-object v5, v27, v5

    const-string v6, "(.*[a-zA-Z]+.*)"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v26, 0x1

    :goto_0
    const/4 v5, 0x0

    aget-object v5, v27, v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v26, 0x0

    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v27, v5

    :cond_5
    const/4 v5, 0x1

    aget-object v5, v27, v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    const-string v6, ""

    aput-object v6, v27, v5

    :goto_1
    const/4 v5, 0x1

    aget-object v5, v20, v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    const-string v6, ""

    aput-object v6, v20, v5

    :cond_6
    if-eqz v28, :cond_7

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v28

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUids(ILjava/lang/String;I)[I

    move-result-object v16

    :cond_7
    if-eqz v16, :cond_1

    const/16 v22, 0x0

    :goto_2
    move-object/from16 v0, v16

    array-length v5, v0

    move/from16 v0, v22

    if-ge v0, v5, :cond_1

    new-instance v15, Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    invoke-direct {v15}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v15, v5}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setAction(I)Z

    const/4 v5, 0x0

    aget-object v5, v20, v5

    invoke-virtual {v15, v5}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setIpAddress(Ljava/lang/String;)Z

    const/4 v5, 0x1

    aget-object v5, v20, v5

    invoke-virtual {v15, v5}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setPort(Ljava/lang/String;)Z

    new-instance v4, Lcom/android/server/enterprise/firewall/FirewallRule;

    const-string v5, "nat"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getChain(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "out"

    const/4 v8, 0x0

    aget-object v8, v27, v8

    const/4 v9, 0x1

    aget-object v9, v27, v9

    const-string v10, "both"

    const-string v11, "remote"

    aget v14, v16, v22

    move/from16 v13, p3

    invoke-direct/range {v4 .. v15}, Lcom/android/server/enterprise/firewall/FirewallRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/enterprise/firewall/FirewallRuleAction;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-virtual {v5, v4}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->createIptCommands(Lcom/android/server/enterprise/firewall/FirewallRule;)Ljava/util/List;

    move-result-object v19

    if-eqz v19, :cond_b

    if-eqz v26, :cond_a

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_3
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    const/16 v26, 0x0

    goto/16 :goto_0

    :cond_9
    const/4 v5, 0x1

    const/4 v6, 0x1

    aget-object v6, v27, v6

    const-string v7, "-"

    const-string v8, ":"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v27, v5

    goto/16 :goto_1

    :cond_a
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_4
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_2

    :cond_c
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_d

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;)Ljava/util/List;

    :cond_d
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_e

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;ZI)Ljava/util/List;

    :cond_e
    const/4 v5, 0x1

    return v5
.end method

.method private checkDuplicateRule(ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 10

    const/4 v8, 0x1

    const/4 v9, 0x0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-array v3, v8, [Ljava/lang/String;

    const-string v0, "rules"

    aput-object v0, v3, v9

    const-string v0, "rules =? "

    invoke-virtual {v4, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "type =? "

    invoke-virtual {v4, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "FirewallTable"

    const/4 v5, 0x0

    move v2, p1

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;I[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v8

    :goto_0
    return v0

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v9

    goto :goto_0
.end method

.method private checkIptablesCommandResult(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "host/network"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "not found"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkOnline()V
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getConnectivityManagerService()Landroid/net/IConnectivityManager;

    move-result-object v5

    if-eqz v5, :cond_3

    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCon:Landroid/net/IConnectivityManager;

    invoke-interface {v5}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsOnline:Z

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAllUsers()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    const/4 v0, 0x0

    :goto_1
    const/4 v5, 0x2

    if-ge v0, v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getFirewallPolicyCache(II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    move-result-object v5

    invoke-direct {p0, v5, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->executePendingCommands(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsOnline:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    return-void

    :catch_0
    move-exception v1

    const-string v5, "FirewallPolicy"

    const-string v6, "checkOnline exception"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v7, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsOnline:Z

    goto :goto_2

    :cond_3
    iput-boolean v7, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsOnline:Z

    goto :goto_2
.end method

.method private cleanChain(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method private cleanInDb(IILjava/lang/String;)Z
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "adminUid"

    invoke-static {p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "FirewallTable"

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v1, v2, p1, v0, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFieldsAsUser(Ljava/lang/String;ILjava/util/HashMap;I)I

    const/4 v1, 0x1

    return v1
.end method

.method private clearDnsPerApp(II)Z
    .locals 7

    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getPackagesFromDB(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, p1, v2, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeDNSForApp(ILjava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    or-int/2addr v4, v5

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "FirewallPolicy"

    const-string v6, "Exception clearDnsPerApp"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v4
.end method

.method private clearPendingCommands(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;)V
    .locals 2

    iget-object v1, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mAllowQueue:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mAllowQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mDenyQueue:Ljava/util/List;

    monitor-enter v1

    :try_start_1
    iget-object v0, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mDenyQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v1, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mRerouteQueue:Ljava/util/List;

    monitor-enter v1

    :try_start_2
    iget-object v0, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mRerouteQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method private createChainForMarket(I)V
    .locals 3

    iget-boolean v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isMarketChainCreated:Z

    if-nez v1, :cond_0

    const-string v1, "samsung_market_policy-output"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIptablesChain(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "/system/bin/iptables -I OUTPUT 1 -j samsung_market_policy-output"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;)Ljava/util/List;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isMarketChainCreated:Z

    :cond_0
    return-void
.end method

.method private createContextForSpecifiedUser(Ljava/lang/String;II)Landroid/content/Context;
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, p1, p2, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v4, "FirewallPolicy"

    const-string v5, "Couldn\'t create user context"

    invoke-static {v4, v5, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private createIptablesChains(I)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIptablesChain(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIptablesChain(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIptablesChain(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIptablesChain(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    sget-object v1, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v1, v1, v6

    const-string v2, "nat"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIptablesChain(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    sget-object v1, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v1, v1, v7

    const-string v2, "nat"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIptablesChain(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "samsung_exceptions-output"

    const-string v2, "nat"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIptablesChain(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/iptables -A INPUT -j "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/iptables -A INPUT -j "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/iptables -A OUTPUT -j "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/iptables -A OUTPUT -j "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "/system/bin/iptables -t nat -A OUTPUT -j samsung_exceptions-output"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/iptables -t nat -A OUTPUT -j "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/iptables -t nat -A OUTPUT -j "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;)Ljava/util/List;

    sput-boolean v3, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isIptChainsCreated:Z

    return-void
.end method

.method private createJSON(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-eq v6, v7, :cond_1

    move-object v2, v5

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    :goto_1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_2

    const-string v6, ""

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v6, "FirewallPolicy"

    const-string v7, "JSONException..."

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    goto :goto_0
.end method

.method private createSingleIptablesChain(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -N "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -N "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private disableProxyOnIptables(Landroid/app/enterprise/ContextInfo;)Z
    .locals 14

    const/4 v13, 0x1

    const/4 v3, 0x0

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v0, "FirewallPolicy"

    const-string v2, "disableProxyOnIptables"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    if-ne v9, v6, :cond_0

    const-string v0, "proxy"

    invoke-direct {p0, v1, v9, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getUidFromRule(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, ":"

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v2, v8, v3

    aget-object v3, v8, v13

    const/4 v4, 0x2

    const-string v5, "proxy"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyProxyRulesToIptables(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z

    :cond_0
    return v13
.end method

.method private disableRulesOnIptables(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v2, "FirewallPolicy"

    const-string v3, "disableRulesOnIptables"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    if-ne p2, v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-input"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-output"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-input"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-output"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "nat"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    const-string v2, "samsung_exceptions-output"

    const-string v3, "nat"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    const-string v2, "/system/bin/iptables -P INPUT ACCEPT"

    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    const-string v2, "/system/bin/iptables -P OUTPUT ACCEPT"

    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    :cond_0
    return v5
.end method

.method private enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_FIREWALL"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    return-object p1
.end method

.method private enforceOwnerOnlyAndFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_FIREWALL"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized executePendingCommands(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;I)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v1, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mAllowQueue:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mAllowQueue:Ljava/util/List;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mAllowQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;ZIZ)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :cond_0
    iget-object v1, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mDenyQueue:Ljava/util/List;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    new-instance v8, Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mDenyQueue:Ljava/util/List;

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iget-object v0, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mDenyQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;ZIZ)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :catchall_2
    move-exception v0

    :goto_2
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0

    :cond_1
    iget-object v1, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mRerouteQueue:Ljava/util/List;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mRerouteQueue:Ljava/util/List;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    iget-object v0, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mRerouteQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;ZIZ)Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v7, v8

    :goto_4
    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_4
    move-exception v0

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object v7, v8

    goto :goto_2
.end method

.method private getAllAdminsNetworkForMarketEnabled(II)I
    .locals 12

    const/4 v2, 0x1

    const-string v0, "FirewallPolicy"

    const-string v1, "getAllAdminsNetworkForMarketEnabled ..."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v11, -0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "adminUid"

    aput-object v1, v3, v0

    const-string v0, "MarketNetworkType=?"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "RESTRICTION"

    const/4 v5, 0x0

    move v2, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;I[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "adminUid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    new-instance v9, Ljava/lang/Long;

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    return v11
.end method

.method private getAllPackagesFromDB(II)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "packageName"

    aput-object v6, v4, v5

    iget-object v5, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "DNSPerApp"

    invoke-virtual {v5, p1, v6, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(ILjava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v3, 0x0

    :cond_0
    return-object v3

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v5, "packageName"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getAllRules(II)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "allow"

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";allow"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v4, "deny"

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";deny"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v4, "reroute"

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";reroute"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const-string v4, "redirect_exception"

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";redirect_exceptions"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    return-object v1
.end method

.method private getAllUsers()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v7, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v6

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5
.end method

.method private getAppUid(Ljava/lang/String;)I
    .locals 7

    const/4 v1, -0x1

    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v1

    :goto_0
    return v4

    :catch_0
    move-exception v2

    const-string v4, "FirewallPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package Name not found error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    goto :goto_0
.end method

.method private getAppUidForUser(Ljava/lang/String;I)I
    .locals 8

    const/4 v6, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v5, "android"

    invoke-direct {p0, v5, v6, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createContextForSpecifiedUser(Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v3

    const-string v5, "FirewallPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package Name not found error = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getAppUids(I)[I
    .locals 10

    const/4 v9, -0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerizedPackages(I)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    array-length v8, v6

    if-lez v8, :cond_4

    array-length v8, v6

    new-array v7, v8, [I

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v8, v6

    if-ge v2, v8, :cond_3

    aget-object v8, v6, v2

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUid(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v9, :cond_1

    add-int/lit8 v5, v3, -0x1

    :goto_1
    if-ltz v5, :cond_0

    aget v8, v7, v5

    if-ne v8, v0, :cond_2

    const/4 v0, -0x1

    :cond_0
    if-eq v0, v9, :cond_1

    add-int/lit8 v4, v3, 0x1

    aput v0, v7, v3

    move v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_3
    if-lez v3, :cond_4

    new-array v1, v3, [I

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_4

    aget v8, v7, v2

    aput v8, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-object v1
.end method

.method private getAppUids(ILjava/lang/String;I)[I
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    if-lez p1, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUids(I)[I

    move-result-object v1

    :cond_0
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :cond_1
    const-string v4, "*"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, " "

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    new-array v1, v6, [I

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    aput v4, v1, v5

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUid(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    :cond_4
    new-array v1, v6, [I

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {p0, p2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUidForUser(Ljava/lang/String;I)I

    move-result v4

    aput v4, v1, v5

    goto :goto_0
.end method

.method private getAppUidsForAllUsers(ILjava/lang/String;)[I
    .locals 10

    const/4 v1, 0x0

    if-lez p1, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUids(I)[I

    move-result-object v1

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    iget-object v9, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v9}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-direct {p0, p2, v9}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUidForUser(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v1, v9, [I

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private getChain(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private getCommandResult(Ljava/lang/Process;)Ljava/lang/String;
    .locals 8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_2
    const-string v5, "FirewallPolicy"

    const-string v6, "getCommandResult : "

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_1
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_3
    move-object v1, v2

    goto :goto_2

    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    :goto_5
    throw v5

    :catch_1
    move-exception v0

    const-string v6, "FirewallPolicy"

    const-string v7, "IOException on getCommandResult"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_2
    move-exception v0

    const-string v5, "FirewallPolicy"

    const-string v6, "IOException on getCommandResult"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_3
    move-exception v0

    const-string v5, "FirewallPolicy"

    const-string v6, "IOException on getCommandResult"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catchall_1
    move-exception v5

    move-object v1, v2

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method private getConnectivityManagerService()Landroid/net/IConnectivityManager;
    .locals 2

    const-string v1, "connectivity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCon:Landroid/net/IConnectivityManager;

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCon:Landroid/net/IConnectivityManager;

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCon:Landroid/net/IConnectivityManager;

    return-object v1
.end method

.method public static getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-gtz p0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-static {p0, p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getDnsFromPackage(ILjava/lang/String;I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "FirewallPolicy"

    const-string v1, "getDnsFromPackage - Begin"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "packageName=?"

    invoke-virtual {v3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "packageName"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "dns1"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "dns2"

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DNSPerApp"

    const/4 v4, 0x0

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v6

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-eqz v6, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :try_start_0
    const-string v0, "packageName"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "packageName"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v8, 0x0

    const-string v0, "dns1"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "dns2"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v9

    :catch_0
    move-exception v7

    const-string v0, "FirewallPolicy"

    const-string v1, "package dns empty"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getFirewallPolicyCache(II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    .locals 6

    const/4 v5, 0x2

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUserCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-array v0, v5, [Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_0

    new-instance v3, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    invoke-direct {v3, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;-><init>(I)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUserCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUserCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    aget-object v3, v2, p2

    return-object v3
.end method

.method private getLastUidForProxy(I)I
    .locals 10

    const-string v0, "FirewallPolicy"

    const-string v1, "getLastUidForProxy"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "adminUid"

    aput-object v1, v3, v0

    const-string/jumbo v0, "type =? "

    const-string v1, "proxy"

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "enabled =? "

    const-string/jumbo v1, "true"

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "FirewallTable"

    const/4 v5, 0x0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;I[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "adminUid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    new-instance v8, Ljava/lang/Long;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const-string v0, "FirewallPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastUidForProxy() uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_0
.end method

.method private getLastUidForProxy(II)I
    .locals 11

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "adminUid"

    aput-object v1, v3, v0

    const-string/jumbo v0, "type =? "

    const-string v1, "proxy"

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "enabled =? "

    const-string/jumbo v1, "true"

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "FirewallTable"

    const/4 v5, 0x0

    move v2, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;I[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "adminUid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    new-instance v9, Ljava/lang/Long;

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const-string v0, "FirewallPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastUidForProxy() uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_0
.end method

.method private getLastUidForRules(II)I
    .locals 11

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "adminUid"

    aput-object v1, v3, v0

    const-string/jumbo v0, "type !=? "

    const-string v1, "proxy"

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "enabled =? "

    const-string/jumbo v1, "true"

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "FirewallTable"

    const/4 v5, 0x0

    move v2, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;I[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "adminUid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    new-instance v9, Ljava/lang/Long;

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_0
.end method

.method private getNetworkAppsList(I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstalledApplications(II)Ljava/util/List;

    move-result-object v1

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    const-string v7, "android.permission.INTERNET"

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method private getNetworkManagementService()Landroid/os/INetworkManagementService;
    .locals 2

    const-string v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mNetd:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mNetd:Landroid/os/INetworkManagementService;

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mNetd:Landroid/os/INetworkManagementService;

    return-object v1
.end method

.method public static getPackageName(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    if-gtz p0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getPackagesFromDB(II)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v5, "FirewallPolicy"

    const-string v6, "getPackagesFromDB - Begin"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "packageName"

    aput-object v6, v4, v5

    iget-object v5, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "DNSPerApp"

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v5, p1, v6, v4, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(ILjava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v3, 0x0

    :cond_0
    return-object v3

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v5, "packageName"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v2, "FirewallPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRulesFromDb.. containerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "rules"

    aput-object v3, v5, v2

    const/4 v2, 0x1

    const-string v3, "adminUid"

    aput-object v3, v5, v2

    const-string/jumbo v2, "type =? "

    move-object/from16 v0, p3

    invoke-virtual {v6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "adminUid =? "

    move/from16 v0, p2

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "FirewallTable"

    const/4 v7, 0x0

    move/from16 v4, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;I[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v10

    const/4 v9, 0x0

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    if-eqz v10, :cond_8

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "rules"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v2, "adminUid"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v15, ""

    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "reroute"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "type"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_1

    const-string v2, "default"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "originHost"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "originPort"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "destHost"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "destPort"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    :cond_0
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    :cond_1
    if-eqz v16, :cond_0

    :try_start_1
    const-string v2, "app"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "originHost"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "originPort"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "destHost"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "destPort"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "packageName"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "networkInterface"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_1

    :cond_2
    const-string v2, "allow"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "deny"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    const-string/jumbo v2, "type"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_4

    const-string v2, "default"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "host"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "port"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "portLocation"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_1

    :cond_4
    if-eqz v16, :cond_0

    const-string v2, "app"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "deny"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "host"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "port"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "portLocation"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "packageName"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "networkInterface"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_1

    :cond_5
    const-string v2, "allow"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "host"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "port"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "portLocation"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "networkInterface"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_1

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "host"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "port"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v15

    goto/16 :goto_1

    :catch_0
    move-exception v11

    const-string v2, "FirewallPolicy"

    const-string v3, "JSONException"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_8
    return-object v14
.end method

.method private getUidFromRule(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUrlBlackList(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/4 v10, 0x1

    new-array v0, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "url"

    aput-object v11, v0, v10

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const-string v10, "FirewallPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getUrlBlackList - uid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_4

    iget-object v10, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "WebFilterTable"

    invoke-virtual {v10, v11, v7, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v10, "FirewallPolicy"

    const-string v11, "getUrlBlackList - Cursor is null"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_2
    :try_start_0
    const-string/jumbo v10, "url"

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-nez v10, :cond_2

    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v10, "FirewallPolicy"

    const-string v11, "getUrlBlackList - IllegalArgumentException"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v9

    const-string v10, "FirewallPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Getting URLList called by server for user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_1
    iget-object v10, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "WebFilterTable"

    invoke-virtual {v10, v1, v11, v0, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(ILjava/lang/String;[Ljava/lang/String;I)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    if-nez v4, :cond_5

    const-string v10, "FirewallPolicy"

    const-string v11, "getUrlBlackList - cv is null"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    goto :goto_0

    :catch_1
    move-exception v5

    const-string v10, "FirewallPolicy"

    const-string v11, "Policy Disable"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string/jumbo v10, "url"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getUrlFilterState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 13

    const/4 v10, 0x1

    new-array v0, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p2, v0, v10

    const/4 v6, 0x0

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v10, "FirewallPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getUrlFilterState - uid:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " containerId:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " column:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v8, :cond_3

    const/16 v10, 0x3e8

    if-eq v8, v10, :cond_3

    iget-object v10, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "WebFilterSettingsTable"

    invoke-virtual {v10, v11, v8, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v6, 0x1

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    const-string v10, "FirewallPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getUrlFilterState - ret: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_2
    const-string v10, "FirewallPolicy"

    const-string v11, "Cursor is NULL"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v9

    const-string v10, "FirewallPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getUrlFilterState - userId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v11, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v12, "WebFilterSettingsTable"

    invoke-virtual {v10, v11, v12, v0, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(ILjava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    invoke-virtual {v3, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    const-string/jumbo v10, "true"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v6, 0x1

    goto :goto_0
.end method

.method private handleConnectivityAction()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->checkOnline()V

    return-void
.end method

.method private refreshFirewallCache(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;II)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUserCache:Ljava/util/HashMap;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUserCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUserCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUserCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    aput-object p1, v0, p3

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUserCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private refreshProxyRules()Z
    .locals 8

    const/4 v7, 0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAllUsers()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v4, 0x0

    sget-object v5, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    const-string v6, "nat"

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ge v0, v4, :cond_2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v0, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(II)I

    move-result v1

    const/4 v4, -0x1

    if-eq v4, v1, :cond_0

    invoke-virtual {p0, v0, v7, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableProxyWithUid(IZI)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v7
.end method

.method private refreshRules()Z
    .locals 14

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-input"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-output"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-input"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-output"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "nat"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v2, "samsung_exceptions-output"

    const-string v3, "nat"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "FirewallPolicy"

    const-string v2, "--- Refresh Rules ----"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAllUsers()Ljava/util/ArrayList;

    move-result-object v12

    const/4 v1, 0x0

    :goto_0
    const/4 v0, 0x2

    if-ge v1, v0, :cond_6

    const/4 v13, 0x0

    :goto_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_5

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules(II)I

    move-result v8

    const/4 v0, -0x1

    if-eq v0, v8, :cond_4

    const-string v0, "allow"

    invoke-direct {p0, v1, v8, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v5, 0x0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getUidFromRule(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v5

    :cond_0
    invoke-direct {p0, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyBasicRulesToIptables(ILjava/util/List;III)Z

    const-string v0, "deny"

    invoke-direct {p0, v1, v8, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v5, 0x0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getUidFromRule(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v5

    :cond_1
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyBasicRulesToIptables(ILjava/util/List;III)Z

    const-string v0, "reroute"

    invoke-direct {p0, v1, v8, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v5, 0x0

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getUidFromRule(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v5

    :cond_2
    invoke-direct {p0, v10}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRerouteRulesToIptables(ILjava/util/List;II)Z

    const-string v0, "redirect_exception"

    invoke-direct {p0, v1, v8, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v5, 0x0

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getUidFromRule(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v5

    :cond_3
    invoke-direct {p0, v9}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRedirectExceptionRulesToIptables(ILjava/util/List;II)Z

    :cond_4
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyDnsPerAppRule(II)V

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method private removeDNSForApp(ILjava/lang/String;I)Z
    .locals 12

    const/4 v9, 0x0

    const-string v10, "FirewallPolicy"

    const-string v11, "removeDNSForApp - Begin"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUids(ILjava/lang/String;I)[I

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v9

    :cond_0
    aget v1, v0, v9

    if-gez v1, :cond_1

    const-string v10, "FirewallPolicy"

    const-string v11, "Package name not found in the container"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v9

    if-eqz v9, :cond_2

    move v8, v1

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    :try_start_0
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "packageName"

    iget-object v9, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "DNSPerApp"

    invoke-virtual {v9, v10, p3, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    iget-object v9, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v9, v8, v8}, Landroid/os/INetworkManagementService;->clearDnsInterfaceForUidRange(II)V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    :cond_2
    :goto_1
    move v9, v4

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v9, "FirewallPolicy"

    const-string v10, "removeDNSForApp exception"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_1
.end method

.method private removeDuplicatesFromList(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v3, v2, v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    sub-int v3, v2, v0

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeRuleUid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private removeRuleUid(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private removeRulesFromDb(ILjava/util/ArrayList;ILjava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;I",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v4, 0x1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v5, "adminUid"

    invoke-static {p3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "rules"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "type"

    invoke-virtual {v0, v5, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "FirewallTable"

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v5, v6, p1, v0, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFieldsAsUser(Ljava/lang/String;ILjava/util/HashMap;I)I

    move-result v2

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    :cond_0
    if-ne v2, v4, :cond_1

    :goto_1
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private rollbackEnabled(I)V
    .locals 3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules(II)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, v1, p1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableRules(Landroid/app/enterprise/ContextInfo;Z)Z

    :cond_0
    return-void
.end method

.method private rollbackProxyEnabled(I)V
    .locals 3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(II)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, v1, p1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableProxy(Landroid/app/enterprise/ContextInfo;Z)Z

    :cond_0
    return-void
.end method

.method private runIptablesCommands(ILjava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private runIptablesCommands(ILjava/util/List;ZI)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZI)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private runSingleIptablesCommand(ILjava/lang/String;ZI)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;ZIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private runSingleIptablesCommand(ILjava/lang/String;ZIZ)Ljava/lang/String;
    .locals 13

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v12, " "

    invoke-virtual {p2, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v9, ""

    move-object v1, v4

    array-length v7, v1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v3, v1, v6

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    iget-boolean v12, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsOnline:Z

    if-eqz v12, :cond_3

    :cond_1
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v12, "command"

    invoke-virtual {v2, v12, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v12, "type"

    move/from16 v0, p4

    invoke-virtual {v2, v12, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v12, "containerid"

    invoke-virtual {v2, v12, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v8, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v12, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mLooperThread:Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;

    iget-object v12, v12, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;->mHandler:Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;

    invoke-virtual {v12, v8}, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-object v9

    :cond_3
    if-nez p5, :cond_2

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAllUsers()Ljava/util/ArrayList;

    move-result-object v10

    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_2

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {p0, v12, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getFirewallPolicyCache(II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    move-result-object v12

    move/from16 v0, p4

    invoke-direct {p0, v12, p2, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->addPendingCommand(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;Ljava/lang/String;I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1
.end method

.method private runSynchronousIptablesCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 v9, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v10, " "

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v8, ""

    move-object v0, v2

    array-length v6, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v1, v0, v5

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v10, Ljava/lang/ProcessBuilder;

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Process;->waitFor()I

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getCommandResult(Ljava/lang/Process;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    move-object v9, v8

    :goto_1
    return-object v9

    :catch_0
    move-exception v4

    const-string v10, "FirewallPolicy"

    const-string v11, "Synchronous iptables command failed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v4

    const-string v10, "FirewallPolicy"

    const-string v11, "Synchronous iptables command failed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private saveUrlBlackList(IILjava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "WebFilterTable"

    invoke-virtual {v2, v3, p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdmin(Ljava/lang/String;II)Z

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "adminUid"

    invoke-static {p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "url"

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "FirewallPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveUrlBlackList - cv: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "WebFilterTable"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private setBasicRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {p0, v0, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules(II)I

    move-result v1

    const-string v4, "FirewallPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " enabledUid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanRules(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->addRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableRules(Landroid/app/enterprise/ContextInfo;Z)Z

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private setBasicRulesEnableOnDb(IZI)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "allow"

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setEnableOnDb(IZLjava/lang/String;I)Z

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "deny"

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setEnableOnDb(IZLjava/lang/String;I)Z

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "reroute"

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setEnableOnDb(IZLjava/lang/String;I)Z

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "redirect_exception"

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setEnableOnDb(IZLjava/lang/String;I)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private setEnableOnDb(IZLjava/lang/String;I)Z
    .locals 10

    const-string v7, "FirewallPolicy"

    const-string v8, "setEnableOnDb..."

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v7, "adminUid =? "

    invoke-static {p4, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "type =? "

    invoke-virtual {v3, v7, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "enabled"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-string/jumbo v7, "timestamp"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v7, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "FirewallTable"

    invoke-virtual {v7, v8, v0, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I

    move-result v6

    if-lez v6, :cond_0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v7, "enabled"

    const-string v8, "false"

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adminUid IN (SELECT adminUid  from admin where containerId=? AND userID="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "adminUid !=? "

    invoke-static {p4, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "enabled =? "

    const-string/jumbo v8, "true"

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "type =? "

    invoke-virtual {v2, v7, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "FirewallTable"

    invoke-virtual {v7, v8, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I

    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private setProxyRulesEnableOnDb(IZI)Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "proxy"

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setEnableOnDb(IZLjava/lang/String;I)Z

    move-result v1

    and-int/2addr v0, v1

    return v0
.end method

.method private validateHostAndPort(ILjava/lang/String;)Z
    .locals 20

    const-string v13, "([A-Za-z0-9][a-zA-Z0-9\\-\\.\\_\\~\\:\\/\\?\\#\\@\\!\\$\\&\\\'\\(\\)\\*\\+\\,\\;\\=\\[\\]]+)|(^\\*$)"

    const-string v14, "\\b(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)"

    const-string v15, "\\b(?:(?:6553[0-5]|655[0-2][0-9]|65[0-4][0-9]{2}|6[0-4][0-9]{3}|[1-5]?[0-9]{1,4}))|\\*"

    const-string v16, "^(remote|local|\\*)$"

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v10, 0x1

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/16 v17, 0x3a

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    if-lez v8, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_1

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v0, v6

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    const/16 v17, 0x3

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    const/4 v10, 0x0

    :goto_1
    return v10

    :pswitch_1
    move-object v13, v14

    const-string v15, "\\b(?:(?:6553[0-5]|655[0-2][0-9]|65[0-4][0-9]{2}|6[0-4][0-9]{3}|[1-5]?[0-9]{1,4}))"

    goto :goto_0

    :pswitch_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")|\\*"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    goto :goto_1

    :cond_0
    add-int/lit8 v17, v8, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v0, v12

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    const/16 v17, 0x3

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    const/4 v10, 0x0

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    :cond_2
    if-eqz v6, :cond_6

    move-object v4, v6

    array-length v9, v4

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v9, :cond_7

    aget-object v5, v4, v7

    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_5

    const/4 v10, 0x0

    :goto_3
    if-nez v10, :cond_3

    invoke-virtual {v5, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    :cond_3
    if-nez v10, :cond_4

    invoke-virtual {v5, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v5, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    goto :goto_3

    :cond_6
    const/4 v10, 0x0

    :cond_7
    if-eqz v12, :cond_9

    move-object v4, v12

    array-length v9, v4

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v9, :cond_a

    aget-object v11, v4, v7

    if-ltz v8, :cond_8

    if-eqz v10, :cond_8

    invoke-virtual {v11, v15}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_9
    const/4 v10, 0x0

    :cond_a
    const-string v17, "TAG"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " > "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private validateIp(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    sget-object v1, Landroid/util/Patterns;->IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private validateNetworkInterface(Ljava/lang/String;)Z
    .locals 5

    sget-object v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->INTERFACE_TYPES:[Ljava/lang/String;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private validatePackageName(Ljava/lang/String;I)Z
    .locals 4

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getNetworkAppsList(I)Ljava/util/List;

    move-result-object v2

    const-string v3, "*"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private validateParameters(ILjava/util/List;I)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    const/4 v11, 0x3

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    move v2, v6

    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_3

    move v2, v6

    goto :goto_0

    :cond_3
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v2, v6

    goto :goto_0

    :pswitch_1
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v7, v4

    if-ne v7, v9, :cond_4

    aget-object v7, v4, v6

    invoke-direct {p0, p1, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    aget-object v7, v4, v8

    invoke-direct {p0, v11, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    goto :goto_1

    :cond_4
    array-length v7, v4

    if-ne v7, v10, :cond_5

    aget-object v7, v4, v6

    invoke-direct {p0, p1, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    aget-object v7, v4, v8

    invoke-direct {p0, v11, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    aget-object v7, v4, v9

    invoke-direct {p0, v7, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validatePackageName(Ljava/lang/String;I)Z

    move-result v7

    and-int/2addr v2, v7

    aget-object v7, v4, v11

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateNetworkInterface(Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    goto :goto_1

    :cond_5
    move v2, v6

    goto :goto_0

    :cond_6
    move v2, v6

    goto :goto_0

    :pswitch_2
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v7, v0

    if-ne v7, v9, :cond_7

    aget-object v7, v0, v6

    invoke-direct {p0, p1, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    aget-object v7, v0, v8

    invoke-direct {p0, v10, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    goto :goto_1

    :cond_7
    array-length v7, v0

    if-ne v7, v11, :cond_8

    aget-object v7, v0, v6

    invoke-direct {p0, p1, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    aget-object v7, v0, v8

    invoke-direct {p0, v10, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    aget-object v7, v0, v9

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateNetworkInterface(Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    goto/16 :goto_1

    :cond_8
    move v2, v6

    goto/16 :goto_0

    :pswitch_3
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v7, v1

    if-ne v7, v9, :cond_9

    aget-object v7, v1, v6

    invoke-direct {p0, p1, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    aget-object v7, v1, v8

    invoke-direct {p0, v10, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    goto/16 :goto_1

    :cond_9
    array-length v7, v1

    if-ne v7, v10, :cond_a

    aget-object v7, v1, v6

    invoke-direct {p0, p1, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    aget-object v7, v1, v8

    invoke-direct {p0, v10, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    aget-object v7, v1, v9

    invoke-direct {p0, v7, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validatePackageName(Ljava/lang/String;I)Z

    move-result v7

    and-int/2addr v2, v7

    aget-object v7, v1, v11

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateNetworkInterface(Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    goto/16 :goto_1

    :cond_a
    move v2, v6

    goto/16 :goto_0

    :pswitch_4
    invoke-direct {p0, p1, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public addRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    const-string v0, "FirewallPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addRules ruleAction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v0, "FirewallPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addRules - cxtInfo.mContainerId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cxtInfo.mCallerUid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, p3, p2, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateParameters(ILjava/util/List;I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "FirewallPolicy"

    const-string/jumbo v3, "validateParameters failed"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    const-string v10, ""

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v0, ";"

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v0, v7

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    const/4 v0, 0x2

    aget-object v0, v7, v0

    const-string v3, "*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x2

    aget-object v0, v7, v0

    invoke-static {v1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v10, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUids(ILjava/lang/String;I)[I

    move-result-object v6

    if-nez v6, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    aget v8, v6, v0

    goto :goto_1

    :cond_6
    if-gez v8, :cond_7

    const-string v0, "FirewallPolicy"

    const-string v3, "package name not found in the container"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_7
    packed-switch p3, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    goto/16 :goto_0

    :pswitch_1
    const/4 v4, 0x1

    move-object v0, p0

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyBasicRules(IILjava/util/List;II)Z

    move-result v0

    goto/16 :goto_0

    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v1, v2, p2, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRerouteRules(IILjava/util/List;I)Z

    move-result v0

    goto/16 :goto_0

    :pswitch_3
    const/4 v0, 0x1

    invoke-direct {p0, v1, v2, p2, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRedirectExceptionRules(IILjava/util/List;I)Z

    move-result v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized applyRules()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAllUsers()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    const/4 v0, 0x0

    :goto_1
    const/4 v3, 0x2

    if-ge v0, v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getFirewallPolicyCache(II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->clearPendingCommands(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshRules()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    monitor-exit p0

    return v3

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public cleanAllRules(Landroid/app/enterprise/ContextInfo;)Z
    .locals 3

    const-string v1, "FirewallPolicy"

    const-string v2, "cleanAllRules()... "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanBasicRules(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v1

    and-int/2addr v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanBasicRules(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v1

    and-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanBasicRules(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v1

    and-int/2addr v0, v1

    const/4 v1, 0x7

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanBasicRules(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v1

    and-int/2addr v0, v1

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshRules()Z

    return v0
.end method

.method public cleanBasicRules(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 12

    const-string v10, "FirewallPolicy"

    const-string v11, "cleanBasicRules..."

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/4 v10, -0x1

    if-ne v8, v10, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    :cond_0
    const-string v7, ""

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    invoke-direct {p0, v3, v9}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules(II)I

    move-result v4

    invoke-direct {p0, v9, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getFirewallPolicyCache(II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    move-result-object v0

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-direct {p0, v3, v8, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanInDb(IILjava/lang/String;)Z

    if-ne v4, v8, :cond_5

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v3, v1, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    if-ne v4, v8, :cond_1

    iget-object v11, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mAllowQueue:Ljava/util/List;

    monitor-enter v11

    :try_start_0
    iget-object v10, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mAllowQueue:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const-string v7, "allow"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v11, v11, p2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-input"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v11, v11, p2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-output"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    :pswitch_2
    if-ne v4, v8, :cond_2

    iget-object v11, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mDenyQueue:Ljava/util/List;

    monitor-enter v11

    :try_start_2
    iget-object v10, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mDenyQueue:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    const-string v7, "deny"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v11, v11, p2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-input"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v11, v11, p2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-output"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v10, "/system/bin/iptables -P INPUT ACCEPT"

    invoke-direct {p0, v3, v10}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    const-string v10, "/system/bin/iptables -P OUTPUT ACCEPT"

    invoke-direct {p0, v3, v10}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :catchall_1
    move-exception v10

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v10

    :pswitch_3
    if-ne v4, v8, :cond_3

    iget-object v11, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mRerouteQueue:Ljava/util/List;

    monitor-enter v11

    :try_start_4
    iget-object v10, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mRerouteQueue:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_3
    const-string v7, "reroute"

    sget-object v10, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v10, v10, p2

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "nat"

    goto/16 :goto_0

    :catchall_2
    move-exception v10

    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v10

    :pswitch_4
    const-string v7, "redirect_exception"

    const-string v10, "samsung_exceptions-output"

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "nat"

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshRules()Z

    :cond_5
    const/4 v10, 0x1

    return v10

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public cleanProxyRules(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    :cond_0
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-direct {p0, v1, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(II)I

    move-result v2

    const-string v3, ""

    const-string v0, ""

    packed-switch p2, :pswitch_data_0

    const/4 v5, 0x0

    :goto_0
    return v5

    :pswitch_0
    sget-object v5, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v0, v5, v6

    const-string v3, "proxy"

    invoke-direct {p0, v1, v4, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanInDb(IILjava/lang/String;)Z

    if-ne v2, v4, :cond_1

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshProxyRules()Z

    :cond_1
    const/4 v5, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public cleanRules(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanBasicRules(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanProxyRules(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public clearDnsPerApp(Landroid/app/enterprise/ContextInfo;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->clearDnsPerApp(II)Z

    move-result v0

    return v0
.end method

.method public clearGlobalProxyEnable(Landroid/app/enterprise/ContextInfo;)Z
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceOwnerOnlyAndFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isGlobalProxyAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v3, "RESTRICTION"

    const-string v4, "globalProxy"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    move v0, v10

    :goto_0
    return v0

    :catch_0
    move-exception v6

    const-string v0, "FirewallPolicy"

    const-string v1, "clearGlobalProxyEnable.Exception"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v10

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getConnectivityManagerService()Landroid/net/IConnectivityManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v3, "RESTRICTION"

    const-string v4, "globalProxy"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(IILjava/lang/String;Ljava/lang/String;Z)Z

    new-instance v7, Landroid/net/ProxyProperties;

    const-string v0, ""

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v7, v0, v1, v2}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCon:Landroid/net/IConnectivityManager;

    invoke-interface {v0, v7}, Landroid/net/IConnectivityManager;->setGlobalProxy(Landroid/net/ProxyProperties;)V

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v11

    goto :goto_0

    :catch_1
    move-exception v6

    const-string v0, "FirewallPolicy"

    const-string v1, "Clear Global Proxy - Exception"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v0, v10

    goto :goto_0
.end method

.method public enableProxy(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableProxy(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v0

    return v0
.end method

.method public enableProxy(Landroid/app/enterprise/ContextInfo;ZZ)Z
    .locals 17

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    move-object/from16 v0, p1

    iget v15, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v3, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(II)I

    move-result v12

    if-eqz p2, :cond_2

    if-eq v12, v15, :cond_0

    const/4 v2, -0x1

    if-ne v12, v2, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isEnabledProxy(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v3, v1, v15}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setProxyRulesEnableOnDb(IZI)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_9

    const/4 v2, -0x1

    if-ne v12, v2, :cond_4

    if-nez p2, :cond_5

    :cond_4
    if-eq v12, v15, :cond_5

    if-eqz p3, :cond_8

    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v15}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setProxyRulesEnableOnDb(IZI)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "proxy"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getUidFromRule(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    const/4 v2, 0x0

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    const-string v2, ":"

    invoke-virtual {v9, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v2, 0x0

    aget-object v4, v10, v2

    const/4 v2, 0x1

    aget-object v5, v10, v2

    const/4 v6, 0x1

    const-string v7, "proxy"

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyProxyRulesToIptables(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z

    :cond_6
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    goto :goto_0

    :cond_8
    const/4 v2, 0x1

    goto :goto_0

    :cond_9
    const-string v2, "FirewallPolicy"

    const-string v4, " Disabling proxy"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v3, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(II)I

    move-result v11

    const-string v2, "FirewallPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Disabling proxy enabledUid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v15}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setProxyRulesEnableOnDb(IZI)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "FirewallPolicy"

    const-string v4, " setProxyRulesEnableOnDb true "

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v11, v15, :cond_6

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->disableProxyOnIptables(Landroid/app/enterprise/ContextInfo;)Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshProxyRules()Z

    goto :goto_1

    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public enableProxyWithUid(IZI)Z
    .locals 2

    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, p3, p1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableProxy(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v0

    return v0
.end method

.method public enableProxyWithUid(ZI)Z
    .locals 2

    new-instance v0, Landroid/app/enterprise/ContextInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableProxy(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v0

    return v0
.end method

.method public enableRules(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableRules(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized enableRules(Landroid/app/enterprise/ContextInfo;ZZ)Z
    .locals 6

    const/4 v5, -0x1

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {p0, v0, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules(II)I

    move-result v1

    if-eqz p2, :cond_2

    if-eq v1, v2, :cond_0

    if-ne v1, v5, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isEnabledRules(Landroid/app/enterprise/ContextInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    :goto_0
    monitor-exit p0

    return v3

    :cond_2
    :try_start_1
    invoke-direct {p0, v0, p2, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setBasicRulesEnableOnDb(IZI)Z

    move-result v4

    if-eqz v4, :cond_1

    if-ne v1, v5, :cond_3

    if-nez p2, :cond_4

    :cond_3
    if-eq v1, v2, :cond_4

    if-eqz p3, :cond_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRules()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public enableRulesWithUid(IZI)Z
    .locals 2

    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, p3, p1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableRules(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v0

    return v0
.end method

.method public enableRulesWithUid(ZI)Z
    .locals 2

    new-instance v0, Landroid/app/enterprise/ContextInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableRules(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v0

    return v0
.end method

.method public getAllRulesForUid(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAllRules(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDNSPerApp(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-nez p2, :cond_1

    move-object v2, v3

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {p0, v1, p2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getDnsFromPackage(ILjava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    goto :goto_0
.end method

.method public getGlobalProxy(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getConnectivityManagerService()Landroid/net/IConnectivityManager;

    move-result-object v13

    if-eqz v13, :cond_3

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    iget-object v13, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCon:Landroid/net/IConnectivityManager;

    invoke-interface {v13}, Landroid/net/IConnectivityManager;->getGlobalProxy()Landroid/net/ProxyProperties;

    move-result-object v9

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v9, :cond_1

    const/4 v7, 0x0

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    new-instance v10, Ljava/lang/Integer;

    invoke-virtual {v9}, Landroid/net/ProxyProperties;->getPort()I

    move-result v13

    invoke-direct {v10, v13}, Ljava/lang/Integer;-><init>(I)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v13, ","

    invoke-virtual {v2, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    array-length v6, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v3, v0, v5

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    if-nez v4, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v13, "FirewallPolicy"

    const-string v14, "getGlobalProxy.Exception"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public getNetworkForMarket(Landroid/app/enterprise/ContextInfo;Z)I
    .locals 7

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "RESTRICTION"

    const-string v5, "MarketNetworkType"

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getRules(Landroid/app/enterprise/ContextInfo;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v2

    :pswitch_1
    const-string v2, "allow"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :pswitch_2
    const-string v2, "deny"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :pswitch_3
    const-string v2, "reroute"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :pswitch_4
    const-string v2, "proxy"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :pswitch_5
    const-string v2, "redirect_exception"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public getURLFilterEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getURLFilterEnabledForContentProvider(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v0

    return v0
.end method

.method public getURLFilterEnabledForContentProvider(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 4

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    if-eqz p2, :cond_0

    const/4 v3, -0x1

    iput v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getFirewallPolicyCache(II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    move-result-object v0

    iget-boolean v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlFilterStateUpdated:Z

    if-nez v3, :cond_1

    const-string v3, "filtering"

    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getUrlFilterState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlFilterStateCache:Z

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlFilterStateUpdated:Z

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshFirewallCache(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;II)Z

    :cond_1
    iget-boolean v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlFilterStateCache:Z

    return v3
.end method

.method public getURLFilterList(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getURLFilterListForContentProvider(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getURLFilterListForContentProvider(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x1

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    const-string v4, "FirewallPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getURLFilterList => userId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " callerUid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " containerId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " allAdmins "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getFirewallPolicyCache(II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    move-result-object v0

    if-ne p2, v7, :cond_2

    iget-boolean v4, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlBlacklistUpdated:Z

    if-nez v4, :cond_1

    invoke-direct {p0, p1, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getUrlBlackList(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v5, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    monitor-enter v5

    :try_start_0
    const-string v4, "FirewallPolicy"

    const-string v6, "getUrlBlackList - synchronized"

    invoke-static {v4, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    iget-object v4, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlBlacklistUpdated:Z

    monitor-exit v5

    :cond_0
    :goto_0
    return-object v2

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_1
    iget-object v2, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getUrlBlackList(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method public getURLFilterReport(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v10, "FirewallPolicy"

    const-string v11, "getURLFilterReport()"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/4 v10, 0x2

    new-array v0, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "url"

    aput-object v11, v0, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "time"

    aput-object v11, v0, v10

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    const/4 v10, 0x2

    new-array v8, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "containerID"

    aput-object v11, v8, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "userID"

    aput-object v11, v8, v10

    const/4 v10, 0x2

    new-array v9, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    iget-object v10, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "WebFilterLogTable"

    invoke-virtual {v10, v11, v8, v9, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v10, "FirewallPolicy"

    const-string v11, "getURLFilterReport - cvList is null"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    :cond_0
    return-object v6

    :cond_1
    const/4 v2, 0x0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    const-string/jumbo v10, "time"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v10, ":"

    invoke-virtual {v5, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v10, "url"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getURLFilterReportEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 3

    const-string v0, "FirewallPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getURLFilterReportEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getURLFilterReportEnabledForContentProvider(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v0

    return v0
.end method

.method public getURLFilterReportEnabledForContentProvider(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 6

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getFirewallPolicyCache(II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    move-result-object v0

    iget-boolean v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlFilterReportUpdated:Z

    if-nez v3, :cond_0

    const-string v3, "logging"

    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getUrlFilterState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlFilterReportState:Z

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlFilterReportUpdated:Z

    const-string v3, "FirewallCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caache.mUrlFilterReportState=> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlFilterReportState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshFirewallCache(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;II)Z

    :cond_0
    iget-boolean v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlFilterReportState:Z

    return v3
.end method

.method public isEnabledProxy(Landroid/app/enterprise/ContextInfo;)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(II)I

    move-result v0

    const-string v1, "FirewallPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isEnabledProxy cxtInfo.mCallerUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "enabledUid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnabledRules(Landroid/app/enterprise/ContextInfo;)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules(II)I

    move-result v0

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isGlobalProxyAllowed()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "RESTRICTION"

    const-string v4, "globalProxy"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isUrlBlocked(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 23

    move-object/from16 v0, p1

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    move-object/from16 v0, p1

    iget v10, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getURLFilterEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v7

    move-object/from16 v0, p1

    iput v10, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-nez v7, :cond_0

    const-string v20, "FirewallPolicy"

    const-string v21, "isUrlBlocked - Policy disabled"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0x0

    :goto_0
    return v20

    :cond_0
    move-object/from16 v0, p1

    iget v10, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getURLFilterList(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, p1

    iput v10, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v20, "FirewallPolicy"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "urlBlacklist: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v18, :cond_8

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_8

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v20, "*"

    const-string v21, ".*"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    const-string v20, "/"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2

    const/16 v20, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    :cond_2
    const-string v20, "/"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_3

    const/16 v20, 0x0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    :cond_3
    const-string v20, "http://"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_9

    const/16 v20, 0x7

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    :cond_4
    :goto_1
    const-string v20, "https://"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_a

    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    :cond_5
    :goto_2
    :try_start_0
    invoke-static {v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-nez v9, :cond_6

    const-string v20, "/"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_6

    const/16 v20, 0x0

    const/16 v21, 0x2f

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    :cond_6
    :goto_3
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v9, v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getURLFilterReportEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->saveURLBlockedReport(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    :cond_7
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_8
    const-string v20, "FirewallPolicy"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "isUrlBlocked: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v20, v9

    goto/16 :goto_0

    :cond_9
    const-string v20, "https://"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1

    :cond_a
    const-string v20, "http://"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    const/16 v20, 0x7

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_2

    :catch_0
    move-exception v6

    const-string v20, "FirewallPolicy"

    const-string v21, "isUrlBlocked - Regex is not valid"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public isUrlBlocked(Ljava/lang/String;)Z
    .locals 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerId(I)I

    move-result v0

    const-string v3, "FirewallPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " isUrlBlocked "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v1, v2, v0}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-virtual {p0, v1, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isUrlBlocked(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    return v3
.end method

.method public listIptablesRules(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "************ FILTER TABLE ************"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "/system/bin/iptables -t filter -L -n --line-numbers -v"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSynchronousIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "************ NAT TABLE ************"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "/system/bin/iptables -t nat -L -n --line-numbers -v"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSynchronousIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "************ MANGLE TABLE ************"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "/system/bin/iptables -t mangle -L -n --line-numbers -v"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSynchronousIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "************ RAW TABLE ************"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "/system/bin/iptables -t raw -L -n --line-numbers -v"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSynchronousIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public onAdminAdded(I)V
    .locals 0

    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 2

    new-instance v0, Landroid/app/enterprise/ContextInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyNetworkForMarket(Landroid/app/enterprise/ContextInfo;)V

    return-void
.end method

.method public onContainerCreation(II)V
    .locals 3

    const-string v0, "FirewallPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FirewallPolicy.onContainerCreation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onContainerRemoved(II)V
    .locals 3

    const-string v0, "FirewallPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FirewallPolicy.onContainerRemoved("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, p2, p1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyNetworkForMarket(Landroid/app/enterprise/ContextInfo;)V

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, p1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->clearDnsPerApp(II)Z

    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v1, p1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeAdmin(Landroid/app/enterprise/ContextInfo;)Z

    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v1, p1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->clearGlobalProxyEnable(Landroid/app/enterprise/ContextInfo;)Z

    return-void
.end method

.method public onPreContainerRemoval(II)V
    .locals 4

    const-string v1, "FirewallPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FirewallPolicy.onPreContainerRemoval("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, p2, p1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->clearDnsPerApp(II)Z

    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v1, p2, p1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->clearGlobalProxyEnable(Landroid/app/enterprise/ContextInfo;)Z

    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v1, p2, p1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeAdmin(Landroid/app/enterprise/ContextInfo;)Z

    return-void
.end method

.method public removeAdmin(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7

    const/4 v6, 0x0

    const-string v4, "FirewallPolicy"

    const-string v5, "removeAdmin..."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanAllRules(Landroid/app/enterprise/ContextInfo;)Z

    move-result v4

    and-int/2addr v2, v4

    const/4 v4, 0x3

    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanProxyRules(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v4

    and-int/2addr v2, v4

    invoke-direct {p0, v3, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getFirewallPolicyCache(II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    move-result-object v0

    iget-object v4, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    iput-boolean v6, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlBlacklistUpdated:Z

    iput-boolean v6, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlFilterStateUpdated:Z

    iput-boolean v6, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlFilterReportUpdated:Z

    return v2
.end method

.method public removeDNSForApp(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "FirewallPolicy"

    const-string v1, "removeDNSForApp - Begin"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "FirewallPolicy"

    const-string v1, "removeDNSForApp - Begin"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0, p2, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeDNSForApp(ILjava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public removeRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v4, 0x2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {p0, p3, p2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateParameters(ILjava/util/List;I)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v0

    :cond_0
    packed-switch p3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v1, v2, p2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRerouteRules(IILjava/util/List;I)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    move-object v0, p0

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyBasicRules(IILjava/util/List;II)Z

    move-result v0

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v1, v2, p2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRedirectExceptionRules(IILjava/util/List;I)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public saveURLBlockedReport(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V
    .locals 9

    const-string v6, "FirewallPolicy"

    const-string v7, "saveURLBlockedReport"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-eq v2, v6, :cond_0

    const-string v6, "FirewallPolicy"

    const-string/jumbo v7, "will enforce MDM content provider permission"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v6

    const-string v7, "FirewallPolicy"

    const-string v8, "saveURLBlockedReport"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    const-string v6, "FirewallPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveURLBlockedReport > userId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "url"

    invoke-virtual {v1, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "time"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "containerID"

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v6, "userID"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v6, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "WebFilterLogTable"

    invoke-virtual {v6, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "FirewallPolicy"

    const-string v7, "isUrlBlocked - Failed on inserting log"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setDNSPerApp(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 22

    const-string v19, "FirewallPolicy"

    const-string v20, "setDNSPerApp - Begin"

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    move-object/from16 v0, p1

    iget v13, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v14, 0x0

    if-eqz p2, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateIp(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_1

    :cond_0
    const/16 v19, 0x0

    :goto_0
    return v19

    :cond_1
    if-eqz p4, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateIp(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_2

    const/16 v19, 0x0

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v19

    invoke-direct {v0, v13, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUids(ILjava/lang/String;I)[I

    move-result-object v5

    if-nez v5, :cond_3

    const/16 v19, 0x0

    goto :goto_0

    :cond_3
    const/16 v19, 0x0

    aget v6, v5, v19

    if-gez v6, :cond_4

    const-string v19, "FirewallPolicy"

    const-string v20, "Package name not found in the container"

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x0

    goto :goto_0

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v19

    if-eqz v19, :cond_7

    const/16 v17, 0x0

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    move/from16 v17, v6

    :try_start_0
    const-string v19, "FirewallPolicy"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "setDNSPerApp - packageName "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " uid "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const-string v19, "adminUid"

    invoke-static {v3, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v19, "packageName"

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v19, "dns1"

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v19, "dns2"

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v19, "interface"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v19

    invoke-direct {v0, v13, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getDnsFromPackage(ILjava/lang/String;I)Ljava/util/List;

    move-result-object v12

    const/4 v4, 0x0

    if-eqz v12, :cond_5

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_5

    const/4 v4, 0x1

    :cond_5
    if-eqz v4, :cond_8

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v19, "interface"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v19, "packageName"

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v19, "adminUid"

    invoke-static {v3, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v19, v0

    const-string v20, "DNSPerApp"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v18

    if-lez v18, :cond_6

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p3

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p4

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v20, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/String;

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-interface {v0, v11, v1, v2}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v17

    invoke-interface {v0, v1, v2}, Landroid/os/INetworkManagementService;->clearDnsInterfaceForUidRange(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v17

    invoke-interface {v0, v11, v1, v2}, Landroid/os/INetworkManagementService;->setDnsInterfaceForUidRange(Ljava/lang/String;II)V

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v14, 0x1

    :cond_6
    :goto_1
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    :cond_7
    move/from16 v19, v14

    goto/16 :goto_0

    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v19, v0

    const-string v20, "DNSPerApp"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v19

    if-eqz v19, :cond_6

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p3

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p4

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v20, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/String;

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-interface {v0, v11, v1, v2}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v17

    invoke-interface {v0, v11, v1, v2}, Landroid/os/INetworkManagementService;->setDnsInterfaceForUidRange(Ljava/lang/String;II)V

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v14, 0x1

    goto :goto_1

    :catch_0
    move-exception v10

    :try_start_2
    const-string v19, "FirewallPolicy"

    const-string v20, "Exception "

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v14, 0x0

    goto :goto_1

    :catchall_0
    move-exception v19

    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    throw v19
.end method

.method public declared-synchronized setGlobalProxy(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceOwnerOnlyAndFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isGlobalProxyAllowed()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v5, "RESTRICTION"

    const-string v6, "globalProxy"

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    monitor-exit p0

    return v2

    :catch_0
    move-exception v11

    :try_start_2
    const-string v2, "FirewallPolicy"

    const-string v3, "setGlobalProxy.Exception"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ""

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    if-gez p3, :cond_3

    const/16 p3, 0x0

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getConnectivityManagerService()Landroid/net/IConnectivityManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_8

    if-eqz p4, :cond_4

    :try_start_3
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_4

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const-string v12, ""

    :goto_1
    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v12, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, Landroid/net/Proxy;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Landroid/net/ProxyProperties;

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v14, v0, v1, v2}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->clearGlobalProxyEnable(Landroid/app/enterprise/ContextInfo;)Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCon:Landroid/net/IConnectivityManager;

    invoke-interface {v2, v14}, Landroid/net/IConnectivityManager;->setGlobalProxy(Landroid/net/ProxyProperties;)V

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v5, "RESTRICTION"

    const-string v6, "globalProxy"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(IILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_0

    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x1

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-nez v9, :cond_6

    const-string v2, ","

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    :goto_3
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    goto :goto_2

    :cond_6
    const/4 v9, 0x0

    goto :goto_3

    :cond_7
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v12

    goto :goto_1

    :catch_1
    move-exception v11

    :try_start_4
    const-string v2, "FirewallPolicy"

    const-string v3, "setGlobalProxy.Exception"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setNetworkForMarket(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v6, 0x0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "RESTRICTION"

    const-string v4, "MarketNetworkType"

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(IILjava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyNetworkForMarket(Landroid/app/enterprise/ContextInfo;)V

    :cond_1
    int-to-long v3, v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6
.end method

.method public setProxyRules(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    const/4 v2, 0x3

    const/4 v10, 0x0

    const/4 v4, 0x1

    const-string v0, "FirewallPolicy"

    const-string/jumbo v1, "setProxyRules..."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v2, v8, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateParameters(ILjava/util/List;I)Z

    move-result v0

    if-nez v0, :cond_1

    move v4, v10

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v6, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(II)I

    move-result v7

    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanProxyRules(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v5, "proxy"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyProxyRules(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-ne v7, v9, :cond_0

    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableProxy(Landroid/app/enterprise/ContextInfo;Z)Z

    goto :goto_0

    :cond_2
    move v4, v10

    goto :goto_0
.end method

.method public setRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {p0, p3, p2, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateParameters(ILjava/util/List;I)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    packed-switch p3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setBasicRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setURLFilterEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 9

    const-string v6, "FirewallPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setURLFilterEnabled("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "filtering"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "WebFilterSettingsTable"

    invoke-virtual {v6, v4, v1, v7, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_1

    invoke-direct {p0, v5, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getFirewallPolicyCache(II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    move-result-object v0

    iget-object v7, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    monitor-enter v7

    :try_start_0
    iget-object v6, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlFilterStateUpdated:Z

    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlBlacklistUpdated:Z

    invoke-direct {p0, v0, v5, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshFirewallCache(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;II)Z

    if-nez p2, :cond_0

    iget-object v6, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "WebFilterTable"

    invoke-virtual {v6, v8, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdmin(Ljava/lang/String;I)Z

    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v6, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    const-string v7, "FirewallPolicy/getURLFilterEnabled"

    invoke-static {v6, v7, v5}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    return v3

    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public setURLFilterList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-direct {p0, v1, v3, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->saveUrlBlackList(IILjava/util/List;)Z

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    invoke-direct {p0, v4, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getFirewallPolicyCache(II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    move-result-object v0

    iget-object v6, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    monitor-enter v6

    :try_start_0
    iget-object v5, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlBlacklistUpdated:Z

    invoke-direct {p0, v0, v4, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshFirewallCache(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;II)Z

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v5, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    const-string v6, "FirewallPolicy/getURLFilterList"

    invoke-static {v5, v6, v4}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public setURLFilterReportEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 14

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v10

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "logging"

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "WebFilterSettingsTable"

    invoke-virtual {v11, v8, v1, v12, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    const/4 v11, 0x1

    if-ne v3, v11, :cond_0

    const-string v11, "FirewallPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setURLFilterReportEnabled - Added to database, refreshing cache userId= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v10, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getFirewallPolicyCache(II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    move-result-object v0

    const/4 v11, 0x0

    iput-boolean v11, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlFilterReportUpdated:Z

    const/4 v11, 0x0

    iput-boolean v11, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlBlacklistUpdated:Z

    invoke-direct {p0, v0, v10, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshFirewallCache(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;II)Z

    iget-object v11, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    const-string v12, "FirewallPolicy/getURLFilterReportEnabled"

    invoke-static {v11, v12, v10}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    const/4 v11, 0x1

    invoke-virtual {p0, p1, v11}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getURLFilterReportEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v9

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p2, :cond_1

    if-nez v9, :cond_2

    :cond_1
    const-string v11, "FirewallPolicy"

    const-string/jumbo v12, "setURLFilterReportEnabled - Clean url report"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x2

    new-array v4, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "containerID"

    aput-object v12, v4, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "userID"

    aput-object v12, v4, v11

    const/4 v11, 0x2

    new-array v5, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v5, v11

    const/4 v11, 0x1

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v5, v11

    iget-object v11, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "WebFilterLogTable"

    invoke-virtual {v11, v12, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    :cond_2
    const-string v11, "FirewallPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setURLFilterReportEnabled - return = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method
