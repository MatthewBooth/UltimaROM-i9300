.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;
.super Ljava/lang/Thread;
.source "KnoxVpnMigration.java"


# static fields
.field private static final DBG:Z

.field private static TAG:Ljava/lang/String;

.field private static mCntMigrationGeneric:I

.field private static mCntMigrationPremium:I

.field private static mMigrationStateGeneric:I

.field private static mStorageDbHelper:Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;


# instance fields
.field private FAIL:I

.field private SUCCESS:I

.field private mAdminPackageName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEngine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

.field private mErrorMessage:Ljava/lang/String;

.field private mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

.field private mNewAdminID:I

.field private mNewContainerID:I

.field private mNumOfContainerPkg:I

.field private mOldAdminID:I

.field private mOldContainerID:I

.field private mPremiumService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

.field private mVpnIsAll:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "KnoxVpnMigration"

    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    sput v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mCntMigrationPremium:I

    sput v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mCntMigrationGeneric:I

    const/4 v0, -0x1

    sput v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNewAdminID:I

    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNewContainerID:I

    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mOldAdminID:I

    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mOldContainerID:I

    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNumOfContainerPkg:I

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mAdminPackageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mContext:Landroid/content/Context;

    const-string v0, "No Error"

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mErrorMessage:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->SUCCESS:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->FAIL:I

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mEngine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnIsAll:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v1, "Constructor in KnoxVpnMigration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->checkValidationForValues(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    iput-object p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mEngine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    goto :goto_0
.end method

.method private checkValidationForValues(Landroid/os/Bundle;)Z
    .locals 4

    const/4 v3, 0x5

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string v2, "The value is null"

    invoke-virtual {p0, v3, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->sendMigrationSuccessIntent(ILjava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    :try_start_0
    const-string v2, "knox_1_container_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mOldContainerID:I

    const-string v2, "knox_2_container_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNewContainerID:I

    const-string v2, "admin_uid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mOldAdminID:I

    iget v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mOldAdminID:I

    iput v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNewAdminID:I

    const-string v2, "knox_1_apk_count"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNumOfContainerPkg:I

    const-string v2, "admin_package_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mAdminPackageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "The value is null"

    invoke-virtual {p0, v3, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->sendMigrationSuccessIntent(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized deleteDB()Z
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/knoxvpn/databases/knoxvpn.db"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    monitor-exit p0

    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized doMigrationVPN20()I
    .locals 11

    const/4 v6, 0x1

    const/4 v8, 0x3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->openMigrationDBHelper()V

    const/4 v3, 0x0

    sget v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    if-eq v7, v8, :cond_0

    sget v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    if-nez v7, :cond_2

    :cond_0
    :goto_0
    if-nez v6, :cond_3

    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v8, "Genric migration is already in doing "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->FAIL:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return v7

    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    const/4 v7, 0x2

    :try_start_1
    sput v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    sget v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mCntMigrationGeneric:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mCntMigrationGeneric:I

    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v7, :cond_4

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v8, "Genric migration will do a clear job"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :try_start_2
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v8, "VpnPackageInfo"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v8, "VpnProfileInfo"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v7, :cond_5

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "clear result : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    :try_start_3
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v7, :cond_6

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v8, "Genric migration step #1 : profile infor "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    :try_start_4
    const-string v7, "VpnProfileInfo"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v7, :cond_7

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cvList.size() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_a

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->writeProfileToDB(Landroid/content/ContentValues;)I

    move-result v7

    iget v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->FAIL:I

    if-ne v7, v8, :cond_8

    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v7, :cond_9

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v8, " ERROR : Step #1"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/4 v7, 0x3

    sput v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    iget v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->FAIL:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    :catch_0
    move-exception v4

    :try_start_5
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ERROR : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x3

    sput v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    iget v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->FAIL:I

    goto/16 :goto_1

    :catch_1
    move-exception v4

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ERROR : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x3

    sput v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    iget v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->FAIL:I

    goto/16 :goto_1

    :cond_a
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v7, :cond_b

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v8, "Genric migration step #2 : package info "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_b
    :try_start_6
    const-string v7, "VpnPackageInfo"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_f

    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v7, :cond_c

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cvList.size() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->writePkgToDB(Landroid/content/ContentValues;)I

    move-result v7

    iget v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->FAIL:I

    if-ne v7, v8, :cond_d

    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v7, :cond_e

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v8, "ERROR : Step #1"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/4 v7, 0x3

    sput v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    iget v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->FAIL:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v4

    :try_start_7
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " error 3 :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x3

    sput v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    iget v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->FAIL:I

    goto/16 :goto_1

    :cond_f
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v7, :cond_10

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v8, "Genric migration step #3 : init hash "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->closeDB()V

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->deleteDB()Z

    const/4 v7, 0x1

    sput v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mEngine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->initializeVpnDataAndVendors()V

    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v7, :cond_11

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v8, "Genric migration step #4 : DONE "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->SUCCESS:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private doMigrationVpn10()I
    .locals 18

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mOldAdminID:I

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->getProfilesFromVpn10(I)Ljava/util/ArrayList;

    move-result-object v7

    if-nez v7, :cond_0

    const/4 v11, 0x4

    :goto_0
    return v11

    :cond_0
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "doMigrationVpn10 : get profile list size : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_5

    sget-object v12, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "doMigrationVpn10 : Got package : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v13, "EnterpriseVpn"

    const/4 v11, 0x2

    new-array v14, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v15, "adminUid"

    aput-object v15, v14, v11

    const/4 v11, 0x1

    const-string v15, "profileName"

    aput-object v15, v14, v11

    const/4 v11, 0x2

    new-array v15, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mOldAdminID:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v11

    const/16 v16, 0x1

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    aput-object v11, v15, v16

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "applicationInfo"

    aput-object v17, v11, v16

    const/16 v16, 0x1

    const-string v17, "CID"

    aput-object v17, v11, v16

    invoke-virtual {v12, v13, v14, v15, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_4

    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "doMigrationVpn10 : Got packagelist from db. size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v11, "applicationInfo"

    invoke-virtual {v4, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v11, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getContainerIdFromPackageName(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_2

    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is already migrated"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const-string v11, "CID"

    invoke-virtual {v4, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_3

    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mOldContainerID:I

    invoke-virtual {v11, v12, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getOriginalPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v11, v1, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v11, v1, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v8, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->replaceEnterpriseVpnInDb(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "Failed to replace EnterpriseVpn DB"

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mErrorMessage:Ljava/lang/String;

    const/4 v11, 0x3

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNewContainerID:I

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v13, "EnterpriseVpn"

    const/4 v11, 0x3

    new-array v14, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v15, "CID"

    aput-object v15, v14, v11

    const/4 v11, 0x1

    const-string v15, "adminUid"

    aput-object v15, v14, v11

    const/4 v11, 0x2

    const-string v15, "profileName"

    aput-object v15, v14, v11

    const/4 v11, 0x3

    new-array v15, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNewContainerID:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v11

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNewAdminID:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v11

    const/16 v16, 0x2

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    aput-object v11, v15, v16

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "applicationInfo"

    aput-object v17, v11, v16

    invoke-virtual {v12, v13, v14, v15, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "doMigrationVpn10 : After Got packagelist from db. size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", ContainerPkgs = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNumOfContainerPkg:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNumOfContainerPkg:I

    if-ne v11, v12, :cond_6

    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "doMigrationVpn10 : match count which db and container packages. size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->updateEnterpriseVpnInDb(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string v11, "Failed to update EnterpriseVpn DB"

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mErrorMessage:Ljava/lang/String;

    const/4 v11, 0x3

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->replaceVpnTableInDb()Z

    move-result v11

    if-nez v11, :cond_8

    const-string v11, "Failed to replace VpnProfile DB"

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mErrorMessage:Ljava/lang/String;

    const/4 v11, 0x3

    goto/16 :goto_0

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->replaceFipsVpnTableInDb()Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "Failed to replace FipsVpn DB"

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mErrorMessage:Ljava/lang/String;

    const/4 v11, 0x3

    goto/16 :goto_0

    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->startVpnAfterMigration()V

    const/4 v11, 0x1

    goto/16 :goto_0
.end method

.method private static getMigrationVersion()Ljava/lang/String;
    .locals 9

    const-string v5, ""

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    const-string v6, "package"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    const-string v6, "com.sec.knox.containeragent"

    const/16 v7, 0x80

    const/4 v8, 0x0

    invoke-interface {v2, v6, v7, v8}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v1, :cond_0

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v5

    :catch_0
    move-exception v0

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getMigrationVersion Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized getProfilesFromVpn10(I)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v6, "Vpn_table"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "profile"

    aput-object v11, v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v5, "profile"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    move-object v3, v4

    :goto_2
    monitor-exit p0

    throw v5

    :cond_0
    :try_start_2
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v6, "Vpn_table"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "adminUid"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "profile"

    aput-object v11, v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v3, v4

    :cond_2
    monitor-exit p0

    return-object v3

    :catchall_1
    move-exception v5

    goto :goto_2
.end method

.method public static declared-synchronized isFail()Z
    .locals 3

    const-class v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mCntMigrationGeneric:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized isNeedForGeneric()Z
    .locals 7

    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-class v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    monitor-enter v4

    :try_start_0
    sget v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    if-eq v5, v2, :cond_0

    sget v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    if-ne v5, v6, :cond_1

    :cond_0
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v5, "isNeedForGeneric :  Done / Not need"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    :goto_0
    monitor-exit v4

    return v2

    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v5, "/data/system/knoxvpn/databases/knoxvpn.db"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    sput v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v6, "isNeedForGeneric : need"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v5, "isNeedForGeneric : error"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    sput v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v5, "isNeedForGeneric : not need"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method private static declared-synchronized isNeedForPremium()Z
    .locals 9

    const/4 v6, 0x0

    const-class v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getPackagesFromVpn10()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v5, v6

    :goto_0
    monitor-exit v7

    return v5

    :cond_1
    const/4 v1, 0x0

    :goto_1
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-ge v1, v5, :cond_3

    const/4 v4, -0x1

    :try_start_2
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v8, "_"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v4

    :goto_2
    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v4, -0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v5, v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v7

    throw v5
.end method

.method public static declared-synchronized isNeedToMigration()Z
    .locals 10

    const/4 v5, 0x0

    const-class v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    monitor-enter v6

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string v7, "net.vpn.migration.version"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isNeedToMigration : prop : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v7, "4.0"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    :goto_0
    monitor-exit v6

    return v5

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->getMigrationVersion()Ljava/lang/String;

    move-result-object v4

    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v7, :cond_3

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isNeedToMigration : version : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", fixed version : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "4.0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v7, "4.0"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->isNeedForPremium()Z

    move-result v2

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->isNeedForGeneric()Z

    move-result v0

    if-nez v2, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    const/4 v3, 0x1

    :goto_1
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isNeedForGeneric : result : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v3

    goto :goto_0

    :cond_5
    move v3, v5

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public static markedMigrationIsDone()Z
    .locals 3

    :try_start_0
    const-string v1, "net.vpn.migration.version"

    const-string v2, "4.0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private replaceEnterpriseVpnInDb(ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 12

    if-eqz p2, :cond_0

    :try_start_0
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Inside replacePackageNameInDb : old packageName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v6, "EnterpriseVpn"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "applicationInfo"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "profileName"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "UID_APP"

    aput-object v11, v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "adminUid"

    iget v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNewAdminID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "CID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "applicationInfo"

    invoke-virtual {v1, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "UID_APP"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "containerState"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "applicationInfo"

    aput-object v6, v0, v5

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "replacePackageNameInDb : before DB insert:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v0, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v6, "EnterpriseVpn"

    invoke-virtual {v5, v6, v0, v4, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    :goto_0
    return v5

    :catch_0
    move-exception v3

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "replacePackageNameInDb: Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private replaceFipsVpnTableInDb()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "adminUid"

    iget v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNewAdminID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "adminUid"

    aput-object v3, v0, v5

    new-array v2, v6, [Ljava/lang/String;

    iget v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mOldAdminID:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v4, "Fips_Vpn_table"

    invoke-virtual {v3, v4, v0, v2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    return v3
.end method

.method private replaceVpnTableInDb()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "adminUid"

    iget v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNewAdminID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "Password"

    const-string v4, "null"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "User_Certificate"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "User_Password"

    const-string v4, "null"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "CA_Certificate"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "CA_Password"

    const-string v4, "null"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "adminUid"

    aput-object v3, v0, v5

    new-array v2, v6, [Ljava/lang/String;

    iget v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mOldAdminID:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v4, "Vpn_table"

    invoke-virtual {v3, v4, v0, v2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    return v3
.end method

.method private startVpnAfterMigration()V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    const-string v1, "enterprise_premium_vpn_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mPremiumService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mPremiumService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mPremiumService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    invoke-interface {v1}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;->startVpnAfterMigration()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iput-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mPremiumService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startVpnAfterMigration: Exception at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mPremiumService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    throw v1
.end method

.method private updateEnterpriseVpnInDb(Ljava/lang/String;)Z
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v6, "EnterpriseVpn"

    new-array v7, v9, [Ljava/lang/String;

    const-string v8, "profileName"

    aput-object v8, v7, v4

    const-string v8, "CID"

    aput-object v8, v7, v3

    new-array v8, v9, [Ljava/lang/String;

    aput-object p1, v8, v4

    iget v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNewContainerID:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "updateEnterpriseVpnInDb : Removing data is successful "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "adminUid"

    iget v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNewAdminID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "CID"

    iget v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNewContainerID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "applicationInfo"

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNewContainerID:I

    const-string v8, "ADD_ALL_PACKAGES"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "profileName"

    invoke-virtual {v0, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "UID_APP"

    const/4 v6, -0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "containerState"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v6, "EnterpriseVpn"

    invoke-virtual {v5, v6, v10, v10, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "updateEnterpriseVpnInDb : Updating data is successful "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private writePkgToDB(Landroid/content/ContentValues;)I
    .locals 14

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v3, -0x1

    :try_start_0
    const-string v10, "profileName"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "packageName"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "packageUid"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v10, "packageCid"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v10, :cond_0

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "profileName : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v10, :cond_1

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "old cid : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v10, :cond_2

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "old Uid : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v10, :cond_3

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "old packageName : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-nez v5, :cond_8

    const/4 v3, 0x0

    move-object v7, v8

    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v10, v3, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_0
    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v10, :cond_4

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "new cid : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v10, :cond_5

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "new uid : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v10, :cond_6

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "new packageName : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnIsAll:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10, v9}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    iget v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNewContainerID:I

    if-ne v3, v10, :cond_9

    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v10, :cond_7

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Have to skip : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " newCid : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v10, 0x1

    :goto_1
    return v10

    :cond_8
    iget v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNewContainerID:I

    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v11, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mOldContainerID:I

    invoke-virtual {v10, v11, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getOriginalPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v10, v3, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    :cond_9
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "profileName"

    invoke-virtual {v1, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "packageName"

    invoke-virtual {v1, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "packageUid"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "packageCid"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v11, "VpnPackageInfo"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v10, :cond_a

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "write result1 : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    if-nez v0, :cond_b

    const/4 v10, 0x0

    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_b
    const/4 v10, 0x1

    goto/16 :goto_1
.end method

.method private writeProfileToDB(Landroid/content/ContentValues;)I
    .locals 21

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v14, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    sget v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_DEACTIVATED:I

    const/16 v16, -0x1

    :try_start_0
    const-string v17, "profileName"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v17, "defaultRoute"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const-string v17, "adminUid"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string/jumbo v17, "vendorName"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v17, "protocolType"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v17, "activateState"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v17, "containerVpnState"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    :try_start_1
    const-string/jumbo v17, "vpnServiceType"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v16

    :goto_0
    :try_start_2
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v17, :cond_0

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "profileName : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v17, :cond_1

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "routeType : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v17, :cond_2

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "adminId : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v17, :cond_3

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v18, "personaId : 0"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v17, :cond_4

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "vendorNameWithCid : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v17, :cond_5

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "protocolType : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v17, :cond_6

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "activateState : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v17, :cond_7

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "containerVpnState : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNewAdminID:I

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "0_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    if-nez v7, :cond_a

    const/4 v7, -0x1

    :cond_8
    :goto_1
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v17, "profileName"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v17, "defaultRoute"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v17, "adminUid"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v17, "personaId"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v17, "vendorName"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v17, "protocolType"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v17, "activateState"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v17, "containerVpnState"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v17, "vpnServiceType"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v17, "chainingEnabled"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    move-object/from16 v17, v0

    const-string v18, "VpnProfileInfo"

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v4

    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v17, :cond_9

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "result 2 : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-nez v4, :cond_d

    const/16 v17, 0x0

    :goto_2
    return v17

    :catch_0
    move-exception v9

    const/16 v16, -0x1

    goto/16 :goto_0

    :cond_a
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_c

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNewContainerID:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnIsAll:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v17, :cond_b

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ALL : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnIsAll:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v9

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error  :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    goto :goto_2

    :cond_c
    const/4 v7, -0x1

    goto/16 :goto_1

    :cond_d
    const/16 v17, 0x1

    goto/16 :goto_2
.end method


# virtual methods
.method public closeDB()V
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mStorageDbHelper:Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;->close()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mStorageDbHelper:Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;

    return-void
.end method

.method public deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mStorageDbHelper:Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStorageDbHelper "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mStorageDbHelper:Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sTableName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mStorageDbHelper:Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public openMigrationDBHelper()V
    .locals 6

    const/4 v5, 0x1

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->isNeedToMigration()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mStorageDbHelper:Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;

    if-eqz v2, :cond_2

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mStorageDbHelper:Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mStorageDbHelper:Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;->close()V

    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mStorageDbHelper:Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    new-instance v2, Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageConstants;->getDbName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageConstants;->getDbVersion(I)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mStorageDbHelper:Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;

    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VpnStorageProvider constructor : mStorageDbHelper = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mStorageDbHelper:Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :try_start_1
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mStorageDbHelper:Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VpnStorageProvider constructor : db = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v3, "Failed to OPEN/CREATE the database"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mStorageDbHelper:Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized run()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    monitor-enter p0

    const/4 v1, 0x3

    :try_start_0
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->FAIL:I

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->isNeedForPremium()Z

    move-result v5

    if-ne v5, v3, :cond_7

    :cond_0
    sget v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mCntMigrationPremium:I

    add-int/lit8 v6, v5, 0x1

    sput v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mCntMigrationPremium:I

    if-ge v5, v7, :cond_1

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->doMigrationVpn10()I

    move-result v1

    if-ne v1, v3, :cond_0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->isNeedForGeneric()Z

    move-result v5

    if-ne v5, v3, :cond_3

    :cond_2
    sget v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mCntMigrationGeneric:I

    if-ge v5, v7, :cond_3

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->doMigrationVPN20()I

    move-result v0

    iget v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->SUCCESS:I

    if-ne v0, v5, :cond_2

    :cond_3
    if-eq v1, v3, :cond_4

    sget v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    if-ne v5, v3, :cond_8

    :cond_4
    move v2, v3

    :goto_1
    if-ne v1, v8, :cond_9

    sget v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    if-ne v5, v8, :cond_9

    :goto_2
    if-nez v2, :cond_5

    if-eqz v3, :cond_a

    :cond_5
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    const-string v5, "Successful"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->sendMigrationSuccessIntent(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    :goto_3
    monitor-exit p0

    return-void

    :cond_7
    const/4 v1, 0x4

    goto :goto_0

    :cond_8
    move v2, v4

    goto :goto_1

    :cond_9
    move v3, v4

    goto :goto_2

    :cond_a
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {p0, v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->sendMigrationSuccessIntent(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized sendMigrationSuccessIntent(ILjava/lang/String;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v1

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.sec.enterprise.knox.VPN_MIGRATION_COMPLETE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "vpn_migration_status"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "vpn_migration_error"

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mErrorMessage:Ljava/lang/String;

    :cond_0
    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending migration result intent to User ALL [status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3
.end method
