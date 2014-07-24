.class Lcom/android/server/ssrm/PowerSavingMode;
.super Ljava/lang/Object;
.source "PowerSavingMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/PowerSavingMode$PowerSavingModeObserver;,
        Lcom/android/server/ssrm/PowerSavingMode$UltraPowerSavingModeObserver;
    }
.end annotation


# static fields
.field private static final HW_VENDOR:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;

.field mCpuFreqTable:[I

.field mCpuMaxHelper:Landroid/os/DVFSHelper;

.field mFpsMaxHelper:Landroid/os/DVFSHelper;

.field mGpuMaxHelper:Landroid/os/DVFSHelper;

.field mPSMObserver:Lcom/android/server/ssrm/PowerSavingMode$PowerSavingModeObserver;

.field mUltraPsmObserver:Lcom/android/server/ssrm/PowerSavingMode$UltraPowerSavingModeObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SSRMv2:PowerSavingMode"

    sput-object v0, Lcom/android/server/ssrm/PowerSavingMode;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/android/server/ssrm/Feature;->COMMON_HW_VENDOR_CONFIG:Ljava/lang/String;

    sput-object v0, Lcom/android/server/ssrm/PowerSavingMode;->HW_VENDOR:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-wide/16 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ssrm/PowerSavingMode;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/ssrm/PowerSavingMode$PowerSavingModeObserver;

    invoke-direct {v0, p0, p1}, Lcom/android/server/ssrm/PowerSavingMode$PowerSavingModeObserver;-><init>(Lcom/android/server/ssrm/PowerSavingMode;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mPSMObserver:Lcom/android/server/ssrm/PowerSavingMode$PowerSavingModeObserver;

    iget-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mPSMObserver:Lcom/android/server/ssrm/PowerSavingMode$PowerSavingModeObserver;

    const-string v1, "powersaving_switch"

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/PowerSavingMode$PowerSavingModeObserver;->registerUriByName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mPSMObserver:Lcom/android/server/ssrm/PowerSavingMode$PowerSavingModeObserver;

    const-string v1, "psm_switch"

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/PowerSavingMode$PowerSavingModeObserver;->registerUriByName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mPSMObserver:Lcom/android/server/ssrm/PowerSavingMode$PowerSavingModeObserver;

    const-string v1, "psm_cpu_clock"

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/PowerSavingMode$PowerSavingModeObserver;->registerUriByName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mPSMObserver:Lcom/android/server/ssrm/PowerSavingMode$PowerSavingModeObserver;

    const-string v1, "psm_display"

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/PowerSavingMode$PowerSavingModeObserver;->registerUriByName(Ljava/lang/String;)V

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/PowerSavingMode;->mContext:Landroid/content/Context;

    const-string v2, "PSM_CPU_MAX"

    const/16 v3, 0xd

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequencyForSSRM()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mCpuFreqTable:[I

    iget-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mCpuFreqTable:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/server/ssrm/PowerSavingMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    iget-object v3, p0, Lcom/android/server/ssrm/PowerSavingMode;->mCpuFreqTable:[I

    const/4 v6, 0x0

    aget v3, v3, v6

    mul-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_0
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/PowerSavingMode;->mContext:Landroid/content/Context;

    const-string v2, "PSM_FPS_MAX"

    const/16 v3, 0x15

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mFpsMaxHelper:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mFpsMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "FPS"

    const-wide/16 v2, 0x42

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/PowerSavingMode;->mContext:Landroid/content/Context;

    const-string v2, "PSM_GPU_MAX"

    const/16 v3, 0x11

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KF:Z

    if-nez v0, :cond_1

    const-string v0, "Combination"

    sget-object v1, Lcom/android/server/ssrm/PowerSavingMode;->HW_VENDOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "GPU"

    const-wide/32 v2, 0x1312d000

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_2
    :goto_0
    new-instance v0, Lcom/android/server/ssrm/PowerSavingMode$UltraPowerSavingModeObserver;

    invoke-direct {v0, p1}, Lcom/android/server/ssrm/PowerSavingMode$UltraPowerSavingModeObserver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mUltraPsmObserver:Lcom/android/server/ssrm/PowerSavingMode$UltraPowerSavingModeObserver;

    iget-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mUltraPsmObserver:Lcom/android/server/ssrm/PowerSavingMode$UltraPowerSavingModeObserver;

    const-string/jumbo v1, "ultra_powersaving_mode"

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/PowerSavingMode$UltraPowerSavingModeObserver;->registerUriByName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/ssrm/PowerSavingMode;->onSettingChanged()V

    return-void

    :cond_3
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KA:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KQ:Z

    if-nez v0, :cond_4

    const-string v0, "Strawberry"

    sget-object v1, Lcom/android/server/ssrm/PowerSavingMode;->HW_VENDOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_4
    iget-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "GPU"

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method static adjustChargingCurrentForUsPorivder()V
    .locals 3

    sget-boolean v0, Lcom/android/server/ssrm/SSRMUtil;->DEBUG:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/server/ssrm/PowerSavingMode;->TAG:Ljava/lang/String;

    const-string v2, "/sys/class/power_supply/battery/test_charge_current"

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "530"

    :goto_1
    invoke-static {v1, v2, v0}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "460"

    goto :goto_1
.end method

.method private static limitPerformanceForKProject(Z)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ssrm/Monitor;->mLimiter:Lcom/android/server/ssrm/Limiter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/Limiter;->limitSmartBonding(Z)V

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ssrm/Monitor;->mLimiter:Lcom/android/server/ssrm/Limiter;

    invoke-virtual {v0}, Lcom/android/server/ssrm/Limiter;->broadcastSiopChangedIntent()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ssrm/Monitor;->mLimiter:Lcom/android/server/ssrm/Limiter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/Limiter;->limitSmartBonding(Z)V

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ssrm/Monitor;->mLimiter:Lcom/android/server/ssrm/Limiter;

    invoke-virtual {v0}, Lcom/android/server/ssrm/Limiter;->broadcastSiopChangedIntent()V

    goto :goto_0
.end method


# virtual methods
.method onSettingChanged()V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/server/ssrm/PowerSavingMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "psm_switch"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v3, :cond_0

    if-ne v1, v3, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v2}, Lcom/android/server/ssrm/DeviceStatus;->setPowerSavingMode(Z)V

    iget-object v2, p0, Lcom/android/server/ssrm/PowerSavingMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "psm_cpu_clock"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_1
    sput-boolean v2, Lcom/android/server/ssrm/DeviceStatus;->sPowerSavingModeLimitPerformance:Z

    iget-object v2, p0, Lcom/android/server/ssrm/PowerSavingMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "psm_display"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_2
    sput-boolean v2, Lcom/android/server/ssrm/DeviceStatus;->sPowerSavingModeLimitDisplay:Z

    sget-object v2, Lcom/android/server/ssrm/PowerSavingMode;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PSM = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isPowerSavingMode()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", PSM_CPU = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/server/ssrm/DeviceStatus;->sPowerSavingModeLimitPerformance:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", PSM_DISP = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/server/ssrm/DeviceStatus;->sPowerSavingModeLimitDisplay:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isPowerSavingModeLimitPerformance()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/ssrm/PowerSavingMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->acquire()V

    iget-object v2, p0, Lcom/android/server/ssrm/PowerSavingMode;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->acquire()V

    invoke-static {v3}, Lcom/android/server/ssrm/PowerSavingMode;->limitPerformanceForKProject(Z)V

    :goto_3
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isPowerSavingModeLimitDisplay()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/ssrm/PowerSavingMode;->mFpsMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->acquire()V

    :goto_4
    invoke-static {}, Lcom/android/server/ssrm/PowerSavingMode;->adjustChargingCurrentForUsPorivder()V

    iget-object v2, p0, Lcom/android/server/ssrm/PowerSavingMode;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.intent.action.POWER_SAVING_MODE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    move v2, v4

    goto/16 :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/android/server/ssrm/PowerSavingMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->release()V

    iget-object v2, p0, Lcom/android/server/ssrm/PowerSavingMode;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->release()V

    invoke-static {v4}, Lcom/android/server/ssrm/PowerSavingMode;->limitPerformanceForKProject(Z)V

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/android/server/ssrm/PowerSavingMode;->mFpsMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->release()V

    goto :goto_4
.end method
