.class public Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;
.super Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardLockscreenPolicy$Stub;
.source "SmartCardLockscreenPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private preAdminRemoval_auth_state:Z

.field private preAuthState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SmartCardLockscreenPolicy"

    sput-object v0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardLockscreenPolicy$Stub;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iput-object v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->preAdminRemoval_auth_state:Z

    iput-object v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->preAuthState:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->preAuthState:Ljava/util/Map;

    return-void
.end method

.method private broadcastIntentAsUser(ZI)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v3, "edm.intent.action.smartcard.lockscreen.authentication"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "edm.intent.extra.smartcard.authentication.enabled"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method private enforcePermission()I
    .locals 3

    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.sec.MDM_SMARTCARD"

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method


# virtual methods
.method public disableAuthentication()Z
    .locals 11

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->enforcePermission()I

    move-result v0

    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->isAuthenticationEnabledAsUser(I)Z

    move-result v3

    iget-object v7, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "SmartCardLockscreenTable"

    const-string/jumbo v9, "smartcardAuth"

    const/4 v10, 0x0

    invoke-virtual {v7, v0, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->isAuthenticationEnabledAsUser(I)Z

    move-result v2

    if-eq v2, v3, :cond_0

    const/4 v7, 0x0

    invoke-direct {p0, v7, v5}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->broadcastIntentAsUser(ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v4

    :catch_0
    move-exception v1

    sget-object v7, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->TAG:Ljava/lang/String;

    const-string v8, "disableAuthentication() failed"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    goto :goto_0
.end method

.method public enableAuthentication()Z
    .locals 10

    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->enforcePermission()I

    move-result v0

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->isAuthenticationEnabledAsUser(I)Z

    move-result v3

    iget-object v6, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "SmartCardLockscreenTable"

    const-string/jumbo v8, "smartcardAuth"

    const/4 v9, 0x1

    invoke-virtual {v6, v0, v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->isAuthenticationEnabledAsUser(I)Z

    move-result v2

    if-eq v2, v3, :cond_0

    const/4 v6, 0x1

    invoke-direct {p0, v6, v5}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->broadcastIntentAsUser(ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v4

    :catch_0
    move-exception v1

    sget-object v6, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->TAG:Ljava/lang/String;

    const-string v7, "enableAuthentication() failed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isAuthenticationEnabled()Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->isAuthenticationEnabledAsUser(I)Z

    move-result v3

    return v3
.end method

.method public isAuthenticationEnabledAsUser(I)Z
    .locals 8

    const/4 v2, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "SmartCardLockscreenTable"

    const-string/jumbo v7, "smartcardAuth"

    invoke-virtual {v5, v6, v7, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    move v2, v3

    :cond_1
    move v5, v2

    :goto_0
    return v5

    :catch_0
    move-exception v0

    sget-object v5, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->TAG:Ljava/lang/String;

    const-string v6, "isAuthenticationEnabled() failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 0

    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 6

    const/4 v1, 0x1

    new-instance v3, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v3, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    iget-object v4, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->preAuthState:Ljava/util/Map;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->isAuthenticationEnabledAsUser(I)Z

    move-result v0

    iget-object v3, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->preAuthState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v1, :cond_1

    iget-object v3, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->preAuthState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v3, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->preAuthState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->broadcastIntentAsUser(ZI)V

    :cond_0
    return-void

    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :cond_2
    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public onPreAdminRemoval(I)V
    .locals 5

    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v1, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->preAuthState:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->preAuthState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->preAuthState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->isAuthenticationEnabledAsUser(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method
