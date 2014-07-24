.class public Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
.super Ljava/lang/Object;
.source "EncryptionManagerAdapter.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    .locals 2

    const-class v1, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;

    if-nez v0, :cond_0

    sput-object p0, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;

    invoke-direct {v0}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
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
.method public disableStorageCardEncryptionPolicy()I
    .locals 4

    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    sget-object v1, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x3

    const/4 v2, 0x5

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/dirEncryption/DirEncryptionManager;->setStorageCardEncryptionPolicy(III)I

    move-result v1

    return v1
.end method

.method public enableStorageCardEncryptionPolicy()I
    .locals 4

    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    sget-object v1, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/dirEncryption/DirEncryptionManager;->setStorageCardEncryptionPolicy(III)I

    move-result v1

    return v1
.end method

.method public getExternalSdPath()Ljava/lang/String;
    .locals 2

    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    sget-object v1, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getExternalSdPath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRequireStorageCardEncryption()Z
    .locals 3

    sget-object v1, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v1

    return v1
.end method

.method public isEncryptionFeatureEnabled()Z
    .locals 1

    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v0

    return v0
.end method

.method public isStorageCardEncrypted()Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    sget-object v2, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->isStorageCardEncryptionPoliciesApplied()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v2

    invoke-virtual {v2}, Landroid/dirEncryption/SDCardEncryptionPolicies;->getDefaultEnc()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
