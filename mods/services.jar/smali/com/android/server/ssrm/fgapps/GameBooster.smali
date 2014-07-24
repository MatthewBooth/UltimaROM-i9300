.class public Lcom/android/server/ssrm/fgapps/GameBooster;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "GameBooster.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$LockScreenCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOffCallback;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

.field mArmFreqMinHelper:Landroid/os/DVFSHelper;

.field private mIsBoosterTriggered:Z

.field private mIsGameAppFg:Z

.field private mIsLockScreenOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SSRMv2:GameBooster"

    sput-object v0, Lcom/android/server/ssrm/fgapps/GameBooster;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mIsGameAppFg:Z

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mIsLockScreenOn:Z

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mIsBoosterTriggered:Z

    const-string v0, "com.devsisters.CookieRunForKakao"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    const-string v0, "com.linktomorrow.windrunner"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    const-string v0, "heat3g"

    sget-object v1, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.imangi.templerun"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    const-string v0, "com.kiloo.subwaysurf"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/GameBooster;->mContext:Landroid/content/Context;

    const-string v2, "GAME_CPU_MIN"

    const/16 v3, 0xc

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mArmFreqMinHelper:Landroid/os/DVFSHelper;

    const-string v0, "heat3g"

    sget-object v1, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mArmFreqMinHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mArmFreqMinHelper:Landroid/os/DVFSHelper;

    const v3, 0x124f80

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :goto_0
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/GameBooster;->mContext:Landroid/content/Context;

    const-string v2, "GAME_CORE_MIN"

    const/16 v3, 0xe

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mArmFreqMinHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mArmFreqMinHelper:Landroid/os/DVFSHelper;

    const v3, 0xb2200

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0
.end method


# virtual methods
.method public onFgAppChanged()V
    .locals 0

    return-void
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mIsGameAppFg:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GameBooster;->updateBooster()V

    return-void
.end method

.method public onLockScreenRelease()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mIsLockScreenOn:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GameBooster;->updateBooster()V

    return-void
.end method

.method public onScreenOff()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mIsLockScreenOn:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GameBooster;->updateBooster()V

    return-void
.end method

.method protected declared-synchronized updateBooster()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mIsBoosterTriggered:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mIsGameAppFg:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mIsLockScreenOn:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mArmFreqMinHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mIsBoosterTriggered:Z

    sget-object v0, Lcom/android/server/ssrm/fgapps/GameBooster;->TAG:Ljava/lang/String;

    const-string v1, "acquire lock"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GameBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mIsBoosterTriggered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mIsBoosterTriggered:Z

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mArmFreqMinHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    sget-object v0, Lcom/android/server/ssrm/fgapps/GameBooster;->TAG:Ljava/lang/String;

    const-string v1, "release lock"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GameBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
