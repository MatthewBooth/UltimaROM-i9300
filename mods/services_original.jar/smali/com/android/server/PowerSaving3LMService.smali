.class public Lcom/android/server/PowerSaving3LMService;
.super Landroid/os/IPowerSaving3LMService$Stub;
.source "PowerSaving3LMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PowerSaving3LMService$1;,
        Lcom/android/server/PowerSaving3LMService$RulesEngine;,
        Lcom/android/server/PowerSaving3LMService$PublicKeyCompare;,
        Lcom/android/server/PowerSaving3LMService$UserReceiver;,
        Lcom/android/server/PowerSaving3LMService$ScreenReceiver;,
        Lcom/android/server/PowerSaving3LMService$BootCompletedReceiver;,
        Lcom/android/server/PowerSaving3LMService$PowerSavingData;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "PowerSavingService"


# instance fields
.field private isSimulatorPermitted:Z

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mForgroundPackage:Ljava/lang/String;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPowerSavingEnabled:Z

.field private mPublicKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/PowerSaving3LMService$PublicKeyCompare;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/PowerSaving3LMService$PowerSavingData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/IPowerSaving3LMService$Stub;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/PowerSaving3LMService;->mUserData:Landroid/util/SparseArray;

    iput v1, p0, Lcom/android/server/PowerSaving3LMService;->mCurrentUserId:I

    iput-boolean v1, p0, Lcom/android/server/PowerSaving3LMService;->isSimulatorPermitted:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/PowerSaving3LMService;->mForgroundPackage:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/PowerSaving3LMService;->mPowerSavingEnabled:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/PowerSaving3LMService;->mPublicKeyList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/PowerSaving3LMService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/PowerSaving3LMService;->mPowerSavingEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/PowerSaving3LMService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/PowerSaving3LMService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/PowerSaving3LMService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/PowerSaving3LMService;->setForgroundPackage()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/PowerSaving3LMService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/PowerSaving3LMService;->enablePowerSaving()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/PowerSaving3LMService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/PowerSaving3LMService;->setForgroundPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/PowerSaving3LMService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/PowerSaving3LMService;->disablePowerSaving()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/PowerSaving3LMService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/PowerSaving3LMService;->removeUserData(I)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/server/PowerSaving3LMService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/PowerSaving3LMService;->mCurrentUserId:I

    return p1
.end method

.method private disablePowerSaving()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PowerSaving3LMService;->mPowerSavingEnabled:Z

    return-void
.end method

.method private enablePowerSaving()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PowerSaving3LMService;->mPowerSavingEnabled:Z

    return-void
.end method

.method private getUserData()Lcom/android/server/PowerSaving3LMService$PowerSavingData;
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iget-object v4, p0, Lcom/android/server/PowerSaving3LMService;->mUserData:Landroid/util/SparseArray;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/PowerSaving3LMService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PowerSaving3LMService$PowerSavingData;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/PowerSaving3LMService$PowerSavingData;

    invoke-direct {v1, p0, v2}, Lcom/android/server/PowerSaving3LMService$PowerSavingData;-><init>(Lcom/android/server/PowerSaving3LMService;I)V

    iget-object v3, p0, Lcom/android/server/PowerSaving3LMService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    monitor-exit v4

    return-object v1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private isAccessPermitted()Z
    .locals 25

    const/16 v18, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const-wide/16 v11, -0x1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerSaving3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    move-object/from16 v3, v16

    array-length v13, v3

    const/4 v8, 0x0

    move v10, v8

    :goto_0
    if-ge v10, v13, :cond_3

    aget-object v19, v3, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerSaving3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v22, v0

    const/16 v23, 0x40

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerSaving3LMService;->isSimulatorPermitted:Z

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    const-string v22, "com.samsung.psl"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    const-string v22, "PowerSavingService"

    const-string v23, "allowing com.sec.jpnmdm"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v18, 0x1

    const/16 v22, 0x1

    const-wide/16 v23, -0x1

    cmp-long v23, v11, v23

    if-eqz v23, :cond_0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    :goto_1
    return v22

    :cond_1
    :try_start_1
    iget-object v4, v15, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v14, v4

    const/4 v8, 0x0

    move v9, v8

    :goto_2
    if-ge v9, v14, :cond_7

    aget-object v20, v4, v9

    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerSaving3LMService;->mPublicKeyList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/PowerSaving3LMService$PublicKeyCompare;

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/android/server/PowerSaving3LMService$PublicKeyCompare;->comparePublicKey([B)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-eqz v7, :cond_2

    const/16 v18, 0x1

    :cond_3
    const-wide/16 v22, -0x1

    cmp-long v22, v11, v22

    if-eqz v22, :cond_4

    :goto_3
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_4
    if-nez v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerSaving3LMService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "com.threelm.android.permission.POWER_SAVING_3LM_SERVICE"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_5

    const/16 v18, 0x1

    :cond_5
    move/from16 v22, v18

    goto :goto_1

    :cond_6
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_2

    :cond_7
    add-int/lit8 v8, v10, 0x1

    move v10, v8

    goto/16 :goto_0

    :catchall_0
    move-exception v22

    const-wide/16 v23, -0x1

    cmp-long v23, v11, v23

    if-eqz v23, :cond_8

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_8
    throw v22

    :catch_0
    move-exception v22

    const-wide/16 v22, -0x1

    cmp-long v22, v11, v22

    if-eqz v22, :cond_4

    goto :goto_3
.end method

.method private removeUserData(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/PowerSaving3LMService;->mUserData:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerSaving3LMService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setForgroundPackage()V
    .locals 6

    iget-object v3, p0, Lcom/android/server/PowerSaving3LMService;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/PowerSaving3LMService;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/PowerSaving3LMService;->setForgroundPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v3, "PowerSavingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setForgroundPackage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/PowerSaving3LMService;->mForgroundPackage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public disablePackageWhilePowerSaving(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/PowerSaving3LMService;->isAccessPermitted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/PowerSaving3LMService;->getUserData()Lcom/android/server/PowerSaving3LMService$PowerSavingData;

    move-result-object v0

    iget-object v2, v0, Lcom/android/server/PowerSaving3LMService$PowerSavingData;->mDeniedPackagesWhilePowerSaving:Lcom/android/server/PowerSaving3LMService$RulesEngine;

    monitor-enter v2

    :try_start_0
    iget-object v1, v0, Lcom/android/server/PowerSaving3LMService$PowerSavingData;->mDeniedPackagesWhilePowerSaving:Lcom/android/server/PowerSaving3LMService$RulesEngine;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v3}, Lcom/android/server/PowerSaving3LMService$RulesEngine;->updatePolicy(Ljava/lang/String;Z)Z

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1}, Ljava/lang/SecurityException;-><init>()V

    throw v1
.end method

.method public enablePackageWhilePowerSaving(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/PowerSaving3LMService;->isAccessPermitted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/PowerSaving3LMService;->getUserData()Lcom/android/server/PowerSaving3LMService$PowerSavingData;

    move-result-object v0

    iget-object v2, v0, Lcom/android/server/PowerSaving3LMService$PowerSavingData;->mDeniedPackagesWhilePowerSaving:Lcom/android/server/PowerSaving3LMService$RulesEngine;

    monitor-enter v2

    :try_start_0
    iget-object v1, v0, Lcom/android/server/PowerSaving3LMService$PowerSavingData;->mDeniedPackagesWhilePowerSaving:Lcom/android/server/PowerSaving3LMService$RulesEngine;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Lcom/android/server/PowerSaving3LMService$RulesEngine;->updatePolicy(Ljava/lang/String;Z)Z

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1}, Ljava/lang/SecurityException;-><init>()V

    throw v1
.end method

.method public getIsSimulatorPermitted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/PowerSaving3LMService;->isSimulatorPermitted:Z

    return v0
.end method

.method public getPowerSavingMode()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/PowerSaving3LMService;->isAccessPermitted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/PowerSaving3LMService;->getUserData()Lcom/android/server/PowerSaving3LMService$PowerSavingData;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/server/PowerSaving3LMService$PowerSavingData;->mPowerSavingSettingsEnabled:Z

    return v1

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1}, Ljava/lang/SecurityException;-><init>()V

    throw v1
.end method

.method public init(Landroid/content/Context;)V
    .locals 12

    const/4 v11, 0x0

    iput-object p1, p0, Lcom/android/server/PowerSaving3LMService;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    iput-object v8, p0, Lcom/android/server/PowerSaving3LMService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/PowerSaving3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x107004f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    array-length v4, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v3, v0, v1

    new-instance v6, Lcom/android/server/PowerSaving3LMService$PublicKeyCompare;

    invoke-direct {v6, v3}, Lcom/android/server/PowerSaving3LMService$PublicKeyCompare;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/PowerSaving3LMService;->mPublicKeyList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v8, Lcom/android/server/PowerSaving3LMService$BootCompletedReceiver;

    invoke-direct {v8, p0, v11}, Lcom/android/server/PowerSaving3LMService$BootCompletedReceiver;-><init>(Lcom/android/server/PowerSaving3LMService;Lcom/android/server/PowerSaving3LMService$1;)V

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v8, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v8, Lcom/android/server/PowerSaving3LMService$UserReceiver;

    invoke-direct {v8, p0, v11}, Lcom/android/server/PowerSaving3LMService$UserReceiver;-><init>(Lcom/android/server/PowerSaving3LMService;Lcom/android/server/PowerSaving3LMService$1;)V

    invoke-virtual {p1, v8, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public isPackageDisabledWhilePowerSaving(Ljava/lang/String;)Z
    .locals 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {p0}, Lcom/android/server/PowerSaving3LMService;->getUserData()Lcom/android/server/PowerSaving3LMService$PowerSavingData;

    move-result-object v1

    iget-boolean v4, v1, Lcom/android/server/PowerSaving3LMService$PowerSavingData;->mPowerSavingSettingsEnabled:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/PowerSaving3LMService;->mPowerSavingEnabled:Z

    if-nez v4, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lcom/android/server/PowerSaving3LMService;->mForgroundPackage:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/PowerSaving3LMService;->mForgroundPackage:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/server/PowerSaving3LMService;->mCurrentUserId:I

    if-ne v3, v4, :cond_3

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    iget-object v5, v1, Lcom/android/server/PowerSaving3LMService$PowerSavingData;->mDeniedPackagesWhilePowerSaving:Lcom/android/server/PowerSaving3LMService$RulesEngine;

    monitor-enter v5

    :try_start_0
    iget-object v4, v1, Lcom/android/server/PowerSaving3LMService$PowerSavingData;->mDeniedPackagesWhilePowerSaving:Lcom/android/server/PowerSaving3LMService$RulesEngine;

    invoke-virtual {v4, p1}, Lcom/android/server/PowerSaving3LMService$RulesEngine;->checkPolicy(Ljava/lang/String;)Z

    move-result v2

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setAllowedPackages(Ljava/util/Map;)Z
    .locals 3

    invoke-direct {p0}, Lcom/android/server/PowerSaving3LMService;->isAccessPermitted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/PowerSaving3LMService;->getUserData()Lcom/android/server/PowerSaving3LMService$PowerSavingData;

    move-result-object v0

    iget-object v2, v0, Lcom/android/server/PowerSaving3LMService$PowerSavingData;->mDeniedPackagesWhilePowerSaving:Lcom/android/server/PowerSaving3LMService$RulesEngine;

    monitor-enter v2

    :try_start_0
    iget-object v1, v0, Lcom/android/server/PowerSaving3LMService$PowerSavingData;->mDeniedPackagesWhilePowerSaving:Lcom/android/server/PowerSaving3LMService$RulesEngine;

    invoke-virtual {v1, p1}, Lcom/android/server/PowerSaving3LMService$RulesEngine;->loadPolicy(Ljava/util/Map;)Z

    move-result v1

    monitor-exit v2

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1}, Ljava/lang/SecurityException;-><init>()V

    throw v1
.end method

.method public setPowerSavingMode(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/PowerSaving3LMService;->isAccessPermitted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/PowerSaving3LMService;->getUserData()Lcom/android/server/PowerSaving3LMService$PowerSavingData;

    move-result-object v0

    iput-boolean p1, v0, Lcom/android/server/PowerSaving3LMService$PowerSavingData;->mPowerSavingSettingsEnabled:Z

    return-void

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1}, Ljava/lang/SecurityException;-><init>()V

    throw v1
.end method

.method public setisSimulatorPermitted(Z)V
    .locals 3

    const-string v0, "PowerSavingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowerSaving setisSimulatorPermitted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/PowerSaving3LMService;->isSimulatorPermitted:Z

    const-string v0, "EcoModeSimulator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimulatorPermitted is set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/PowerSaving3LMService;->isSimulatorPermitted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
