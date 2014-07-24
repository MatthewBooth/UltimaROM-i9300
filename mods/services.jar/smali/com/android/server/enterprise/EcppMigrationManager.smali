.class public Lcom/android/server/enterprise/EcppMigrationManager;
.super Ljava/lang/Object;
.source "EcppMigrationManager.java"


# static fields
.field private static final CONTAINER_MIGRATION_AGENT_PACKAGE_NAME:Ljava/lang/String; = "com.sec.knox.containeragent"

.field public static final NEW_CONTAINER_ID:I = 0x0

.field public static final OLD_CONTAINER_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EcppMigrationManager"

.field private static mInstance:Lcom/android/server/enterprise/EcppMigrationManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDPMService:Landroid/app/admin/IDevicePolicyManager;

.field private mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

.field private mPasswordPolicyService:Landroid/app/enterprise/IPasswordPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/EcppMigrationManager;->mInstance:Lcom/android/server/enterprise/EcppMigrationManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    iput-object p1, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EcppStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    const-string v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    const-string v0, "password_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IPasswordPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mPasswordPolicyService:Landroid/app/enterprise/IPasswordPolicy;

    return-void
.end method

.method private copyMaximumFailedPasswordsForDisable(ILandroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v4, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getMaximumFailedPasswordsForDisable(ILandroid/content/ComponentName;)I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mPasswordPolicyService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mPasswordPolicyService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v4, p2, v1}, Landroid/app/enterprise/IPasswordPolicy;->setMaximumFailedPasswordsForDisable(Landroid/app/enterprise/ContextInfo;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with enterprise password policy service"

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private copyMaximumFailedPasswordsForWipe(IILandroid/content/ComponentName;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v4, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;)I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v4, p3, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with device policy service"

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private copyMaximumTimeToLockPassword(IILandroid/content/ComponentName;)V
    .locals 7

    const-wide/16 v1, 0x0

    iget-object v5, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v5, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getMaximumTimeToLock(ILandroid/content/ComponentName;)J

    move-result-wide v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v5, :cond_0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v5, p3, v1, v2, p2}, Landroid/app/admin/IDevicePolicyManager;->setMaximumTimeToLock(Landroid/content/ComponentName;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v5, "EcppMigrationManager"

    const-string v6, "Failed talking with device policy service"

    invoke-static {v5, v6, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private copyPasswordExpirationDate(IILandroid/content/ComponentName;)V
    .locals 7

    const-wide/16 v1, 0x0

    iget-object v5, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v5, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getPasswordExpirationDate(ILandroid/content/ComponentName;)J

    move-result-wide v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v5, :cond_0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v5, p3, v1, v2, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordExpirationTimeout(Landroid/content/ComponentName;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v5, "EcppMigrationManager"

    const-string v6, "Failed talking with device policy service"

    invoke-static {v5, v6, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private copyPasswordExpirationTimeout(IILandroid/content/ComponentName;)V
    .locals 7

    const-wide/16 v1, 0x0

    iget-object v5, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v5, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getPasswordExpirationTimeout(ILandroid/content/ComponentName;)J

    move-result-wide v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v5, :cond_0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v5, p3, v1, v2, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordExpirationTimeout(Landroid/content/ComponentName;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v5, "EcppMigrationManager"

    const-string v6, "Failed talking with enterprise password policy service"

    invoke-static {v5, v6, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private copyPasswordHistoryLength(IILandroid/content/ComponentName;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v4, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getPasswordHistory(ILandroid/content/ComponentName;)I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v4, p3, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordHistoryLength(Landroid/content/ComponentName;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with device policy service"

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private copyPasswordMinimumLength(IILandroid/content/ComponentName;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v4, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getPasswordMinimumLength(ILandroid/content/ComponentName;)I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v4, p3, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLength(Landroid/content/ComponentName;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with device policy service"

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private copyPasswordMinimumLetters(IILandroid/content/ComponentName;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v4, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getPasswordMinimumLetters(ILandroid/content/ComponentName;)I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v4, p3, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLetters(Landroid/content/ComponentName;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with device policy service"

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private copyPasswordMinimumNonLetter(IILandroid/content/ComponentName;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v4, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getPasswordMinimumNonLetter(ILandroid/content/ComponentName;)I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v4, p3, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with device policy service"

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private copyPasswordMinimumNumeric(IILandroid/content/ComponentName;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v4, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getPasswordMinimumNumeric(ILandroid/content/ComponentName;)I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v4, p3, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumNumeric(Landroid/content/ComponentName;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with device policy service"

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private copyPasswordMinimumSymbols(IILandroid/content/ComponentName;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v4, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getPasswordMinimumSymbols(ILandroid/content/ComponentName;)I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v4, p3, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumSymbols(Landroid/content/ComponentName;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with device policy service"

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private copyPasswordQuality(IILandroid/content/ComponentName;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v4, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getPasswordQuality(ILandroid/content/ComponentName;)I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v4, p3, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordQuality(Landroid/content/ComponentName;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with device policy service"

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private copyPasswordVisible(ILandroid/app/enterprise/ContextInfo;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v4, p1}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->isPasswordVisisbilityEnabled(I)Z

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mPasswordPolicyService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mPasswordPolicyService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v4, p2, v1}, Landroid/app/enterprise/IPasswordPolicy;->setPasswordVisibilityEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with enterprise password policy service"

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private enforceMigrationAgentSecurityCheck()V
    .locals 8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const-string v2, ""

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/app/IActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    const-string v5, "EcppMigrationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check permission for : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_0

    if-eqz v0, :cond_0

    const-string v5, "com.sec.knox.containeragent"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No Container Migration Permission to calling Package : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_0
    move-exception v1

    const-string v5, "EcppMigrationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fail to getPackageFromAppProcesses : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private findContainerData(ILandroid/content/ComponentName;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->findContainerAdmin(ILandroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/EcppMigrationManager;
    .locals 2

    const-class v1, Lcom/android/server/enterprise/EcppMigrationManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/EcppMigrationManager;->mInstance:Lcom/android/server/enterprise/EcppMigrationManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/enterprise/EcppMigrationManager;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/EcppMigrationManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/EcppMigrationManager;->mInstance:Lcom/android/server/enterprise/EcppMigrationManager;

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/EcppMigrationManager;->mInstance:Lcom/android/server/enterprise/EcppMigrationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public migrateEcppDB(Landroid/content/ComponentName;IJ)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/EcppMigrationManager;->enforceMigrationAgentSecurityCheck()V

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-instance v0, Landroid/app/enterprise/ContextInfo;

    long-to-int v6, p3

    invoke-direct {v0, v6, v5}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    :try_start_0
    invoke-direct {p0, v3, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->findContainerData(ILandroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return v5

    :catch_0
    move-exception v1

    const-string v6, "EcppMigrationManager"

    const-string v7, "Exception in finding container data, Returning!!"

    invoke-static {v6, v7, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-direct {p0, v3, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordMinimumLength(IILandroid/content/ComponentName;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    invoke-direct {p0, v3, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordMinimumLetters(IILandroid/content/ComponentName;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    invoke-direct {p0, v3, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordMinimumNonLetter(IILandroid/content/ComponentName;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    invoke-direct {p0, v3, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordMinimumNumeric(IILandroid/content/ComponentName;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    invoke-direct {p0, v3, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordMinimumSymbols(IILandroid/content/ComponentName;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    invoke-direct {p0, v3, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordQuality(IILandroid/content/ComponentName;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    :try_start_7
    invoke-direct {p0, v3, v0}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordVisible(ILandroid/app/enterprise/ContextInfo;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    :goto_7
    :try_start_8
    invoke-direct {p0, v3, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordHistoryLength(IILandroid/content/ComponentName;)V
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    :goto_8
    :try_start_9
    invoke-direct {p0, v3, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordExpirationDate(IILandroid/content/ComponentName;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    :goto_9
    :try_start_a
    invoke-direct {p0, v3, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyMaximumFailedPasswordsForWipe(IILandroid/content/ComponentName;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b

    :goto_a
    :try_start_b
    invoke-direct {p0, v3, v0, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyMaximumFailedPasswordsForDisable(ILandroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c

    :goto_b
    :try_start_c
    invoke-direct {p0, v3, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyMaximumTimeToLockPassword(IILandroid/content/ComponentName;)V
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_e

    :goto_c
    :try_start_d
    invoke-direct {p0, v3, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordExpirationTimeout(IILandroid/content/ComponentName;)V
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_f
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_10

    :goto_d
    move v5, v4

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v5, "EcppMigrationManager"

    const-string v6, "Exception in copyPasswordMinimumLength()"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v4, 0x0

    goto :goto_1

    :catch_2
    move-exception v1

    const-string v5, "EcppMigrationManager"

    const-string v6, "Exception in copyPasswordMinimumLetters()"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v4, 0x0

    goto :goto_2

    :catch_3
    move-exception v1

    const-string v5, "EcppMigrationManager"

    const-string v6, "Exception in copyPasswordMinimumNonLetter()"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v4, 0x0

    goto :goto_3

    :catch_4
    move-exception v1

    const-string v5, "EcppMigrationManager"

    const-string v6, "Exception in copyPasswordMinimumNumeric()"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v4, 0x0

    goto :goto_4

    :catch_5
    move-exception v1

    const-string v5, "EcppMigrationManager"

    const-string v6, "Exception in copyPasswordMinimumSymbols()"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v4, 0x0

    goto :goto_5

    :catch_6
    move-exception v1

    const-string v5, "EcppMigrationManager"

    const-string v6, "Exception in copyPasswordQuality()"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_7
    move-exception v1

    const-string v5, "EcppMigrationManager"

    const-string v6, "Exception in copyPasswordVisible()"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v4, 0x0

    goto :goto_7

    :catch_8
    move-exception v2

    const-string v5, "EcppMigrationManager"

    const-string v6, "copyPasswordHistoryLength(): Policy not yet set"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_8

    :catch_9
    move-exception v1

    const-string v5, "EcppMigrationManager"

    const-string v6, "Exception in copyPasswordHistoryLength()"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v4, 0x0

    goto :goto_8

    :catch_a
    move-exception v1

    const-string v5, "EcppMigrationManager"

    const-string v6, "Exception in copyPasswordExpirationDate()"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v4, 0x0

    goto :goto_9

    :catch_b
    move-exception v1

    const-string v5, "EcppMigrationManager"

    const-string v6, "Exception in copyMaximumFailedPasswordsForWipe()"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v4, 0x0

    goto :goto_a

    :catch_c
    move-exception v1

    const-string v5, "EcppMigrationManager"

    const-string v6, "Exception in copyMaximumFailedPasswordsForDisable()"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v4, 0x0

    goto :goto_b

    :catch_d
    move-exception v2

    const-string v5, "EcppMigrationManager"

    const-string v6, "copyMaximumTimeToLockPassword(): Policy not yet set"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto/16 :goto_c

    :catch_e
    move-exception v1

    const-string v5, "EcppMigrationManager"

    const-string v6, "Exception in copyMaximumTimeToLockPassword()"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v4, 0x0

    goto/16 :goto_c

    :catch_f
    move-exception v2

    const-string v5, "EcppMigrationManager"

    const-string v6, "copyPasswordExpirationTimeout(): Policy not yet set"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto/16 :goto_d

    :catch_10
    move-exception v1

    const-string v5, "EcppMigrationManager"

    const-string v6, "Exception in copyPasswordExpirationTimeout()"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v4, 0x0

    goto/16 :goto_d
.end method
