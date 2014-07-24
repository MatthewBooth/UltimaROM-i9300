.class public Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;
.super Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy$Stub;
.source "EnterpriseVpnPolicyService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;
    }
.end annotation


# static fields
.field private static final ACTION_VPN_KNOX_SERVICE:Ljava/lang/String; = "com.sec.enterprise.mdm.services.vpn.KNOX_VPN"

.field private static final DBG:Z

.field private static KNOX_VPN:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static final sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mSolutionServiceConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mSolutionsReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->DBG:Z

    const-string v0, "EnterpriseVpnPolicyService"

    sput-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    const-string v0, "knoxvpn"

    sput-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    new-instance v0, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v0}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    sget-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    sget-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy$Stub;-><init>()V

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->mSolutionServiceConnections:Ljava/util/Map;

    new-instance v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$1;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;)V

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->mSolutionsReceiver:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    const-string v2, "[Constructor]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.enterprise.mdm.MDM_VPN_ADD_SOLUTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.enterprise.mdm.MDM_VPN_REMOVE_SOLUTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->mSolutionsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->bindToKnoxVpnService()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;Ljava/lang/String;Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->addVpnSolutionConnection(Ljava/lang/String;Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;Ljava/lang/String;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->removeVpnSolutionConnection(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized addVpnSolutionConnection(Ljava/lang/String;Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding solution "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->mSolutionServiceConnections:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private findUid()I
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private declared-synchronized getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->mSolutionServiceConnections:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;->mSolutionService:Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized removeVpnSolutionConnection(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing solution "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->mSolutionServiceConnections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public activateVpnProfile(Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v0

    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {v3, p1, v0, p2, p3}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->activateVpnProfile(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during communication with solution service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public addAllContainerPackagesToVpn(Ljava/lang/String;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v0

    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {v3, p1, v0, p2, p3}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->addAllContainerPackagesToVpn(Ljava/lang/String;IILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during communication with solution service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public addPackagesToVpn(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v2

    sget-object v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    sget-object v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->addPackagesToVpn(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :cond_0
    :goto_0
    return-object v7

    :catch_0
    move-exception v6

    sget-object v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error during communication with solution service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    const/4 v3, 0x3

    invoke-virtual {v7, v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public bindKnoxVpnInterface(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v0

    const/4 v2, 0x0

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->DBG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EnterpriseVpnPolicyService bindKnoxVpnInterface : solution = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v3, :cond_1

    :try_start_0
    invoke-interface {v3, p1, v0}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->bindKnoxVpnInterface(Ljava/lang/String;I)Z

    move-result v2

    sget-boolean v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->DBG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EnterpriseVpnPolicyService bindKnoxVpnInterface : response = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return v2

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during communication with solution service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bindToKnoxVpnService()V
    .locals 3

    const-string v1, "com.sec.enterprise.mdm.services.vpn.KNOX_VPN"

    new-instance v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;->startConnection()V

    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->addVpnSolutionConnection(Ljava/lang/String;Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;)V

    return-void
.end method

.method public containerPackageListFromVpnDatabase(I)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2, p1}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->containerPackageListFromVpnDatabase(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error during communication with solution service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public createVpnProfile(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v0

    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {v3, p1, v0, p2}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->createVpnProfile(Ljava/lang/String;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during communication with solution service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public getAllPackagesInVpnProfile(Ljava/lang/String;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v0

    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {v3, p1, v0, p2, p3}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->getAllPackagesInVpnProfile(Ljava/lang/String;IILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during communication with solution service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public getAllVpnProfiles(Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v0

    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {v3, p1, v0}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->getAllVpnProfiles(Ljava/lang/String;I)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during communication with solution service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public getCACertificate(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v0

    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {v3, p1, v0, p2}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->getCACertificate(Ljava/lang/String;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during communication with solution service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public getErrorString(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v0

    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {v3, p1, v0, p2}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->getErrorString(Ljava/lang/String;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during communication with solution service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public getState(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v0

    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {v3, p1, v0, p2}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->getState(Ljava/lang/String;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during communication with solution service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public getUserCertificate(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v0

    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {v3, p1, v0, p2}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->getUserCertificate(Ljava/lang/String;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during communication with solution service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public getVpnModeOfOperation(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v0

    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {v3, p1, v0, p2}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->getVpnModeOfOperation(Ljava/lang/String;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during communication with solution service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public getVpnProfile(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v0

    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {v3, p1, v0, p2}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->getVpnProfile(Ljava/lang/String;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during communication with solution service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public notifyContainerAppLaunch(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1, p1}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->notifyContainerAppLaunch(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error during communication with solution service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 3

    sget-object v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    const-string v2, "[onAdminAdded]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.enterprise.mdm.MDM_VPN_ADMIN_ADDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_ENTERPRISE_VPN_SOLUTION"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 3

    sget-object v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    const-string v2, "[onAdminRemoved]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.enterprise.mdm.MDM_VPN_ADMIN_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_ENTERPRISE_VPN_SOLUTION"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public onContainerCreation(II)V
    .locals 3

    sget-object v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    const-string v2, "[onContainerCreation]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.enterprise.mdm.MDM_VPN_CONTAINER_CREATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_container_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "extra_uid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_ENTERPRISE_VPN_SOLUTION"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public onContainerRemoved(II)V
    .locals 3

    sget-object v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    const-string v2, "[onContainerRemoved]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.enterprise.mdm.MDM_VPN_CONTAINER_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_container_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "extra_uid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_ENTERPRISE_VPN_SOLUTION"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 3

    sget-object v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    const-string v2, "[onPreAdminRemoval]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.enterprise.mdm.MDM_VPN_PRE_ADMIN_REMOVAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_ENTERPRISE_VPN_SOLUTION"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public onPreContainerRemoval(II)V
    .locals 0

    return-void
.end method

.method public removeAllContainerPackagesFromVpn(Ljava/lang/String;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v0

    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {v3, p1, v0, p2, p3}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->removeAllContainerPackagesFromVpn(Ljava/lang/String;IILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during communication with solution service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public removePackagesFromVpn(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v2

    sget-object v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    sget-object v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->removePackagesFromVpn(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :cond_0
    :goto_0
    return-object v7

    :catch_0
    move-exception v6

    sget-object v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error during communication with solution service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    const/4 v3, 0x3

    invoke-virtual {v7, v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public removeVpnProfile(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v0

    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {v3, p1, v0, p2}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->removeVpnProfile(Ljava/lang/String;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during communication with solution service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public setAutoRetryOnConnectionError(Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v0

    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {v3, p1, v0, p2, p3}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->setAutoRetryOnConnectionError(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during communication with solution service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public setCACertificate(Ljava/lang/String;Ljava/lang/String;[B)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B)",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v0

    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {v3, p1, v0, p2, p3}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->setCACertificate(Ljava/lang/String;ILjava/lang/String;[B)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during communication with solution service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public setServerCertValidationUserAcceptanceCriteria(Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;I)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v2

    sget-object v8, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    sget-object v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    :try_start_0
    invoke-interface/range {v0 .. v6}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->setServerCertValidationUserAcceptanceCriteria(Ljava/lang/String;ILjava/lang/String;ZLjava/util/List;I)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :cond_0
    :goto_0
    return-object v8

    :catch_0
    move-exception v7

    sget-object v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error during communication with solution service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    const/4 v3, 0x3

    invoke-virtual {v8, v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public setUserCertificate(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v2

    sget-object v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    sget-object v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->setUserCertificate(Ljava/lang/String;ILjava/lang/String;[BLjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :cond_0
    :goto_0
    return-object v7

    :catch_0
    move-exception v6

    sget-object v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error during communication with solution service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    const/4 v3, 0x3

    invoke-virtual {v7, v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public setVpnFrameworkSystemProperty(Ljava/lang/String;)V
    .locals 1

    const-string v0, "net.vpn.framework"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVpnModeOfOperation(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v0

    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {v3, p1, v0, p2, p3}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->setVpnModeOfOperation(Ljava/lang/String;ILjava/lang/String;I)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during communication with solution service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public startConnection(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v0

    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {v3, p1, v0, p2}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->startConnection(Ljava/lang/String;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during communication with solution service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public stopConnection(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v0

    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {v3, p1, v0, p2}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->stopConnection(Ljava/lang/String;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during communication with solution service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method
