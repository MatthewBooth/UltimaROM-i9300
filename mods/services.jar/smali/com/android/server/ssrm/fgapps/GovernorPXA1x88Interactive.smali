.class public final Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;
.super Lcom/android/server/ssrm/fgapps/AbsGovernor;
.source "GovernorPXA1x88Interactive.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$BootCompleteCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;


# instance fields
.field ID_ABOVE_HISPEED_DELAY:I

.field ID_BOOST:I

.field ID_CPUFREQ_MAX_FORCED:I

.field ID_GO_HISPEED_LOAD:I

.field ID_HISPEED_FREQ:I

.field ID_IO_IS_BUSY:I

.field ID_MIN_SAMPLE_TIME:I

.field ID_TARGET_LOADS:I

.field ID_TIMER_RATE:I

.field ID_TIMER_SLACK:I

.field ID_VPU_SET_FREQ:I

.field final TAG:Ljava/lang/String;

.field mDdrMaxHelper:Landroid/os/DVFSHelper;

.field mDdrMinHelper:Landroid/os/DVFSHelper;

.field mGameTrigger:Z

.field mGpuMinHelper:Landroid/os/DVFSHelper;

.field mIsBrowserPageLoading:Z

.field mIsBrowserPageLoadingTrigger:Z

.field mIsCameraRecording:Z

.field mIsCpuPowerSaving:Z

.field mIsHeavyAppInForeground:Z

.field mIsHighCpuLoadGame:Z

.field mIsOverheatGame:Z

.field mIsVideoPlayback:Z

.field mOverHeatGameTrigger:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;-><init>()V

    const-string v0, "SSRMv2:GovernorPXA1x88Interactive"

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsCameraRecording:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsHeavyAppInForeground:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsCpuPowerSaving:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsVideoPlayback:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsOverheatGame:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mOverHeatGameTrigger:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsHighCpuLoadGame:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mGameTrigger:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsBrowserPageLoading:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsBrowserPageLoadingTrigger:Z

    const-string v0, "SSRMv2:GovernorPXA1x88Interactive"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setTag(Ljava/lang/String;)V

    const-string v0, "/sys/power/cpufreq_max_forced"

    const-string v1, "-1"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ID_CPUFREQ_MAX_FORCED:I

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay"

    const-string v1, "20000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ID_ABOVE_HISPEED_DELAY:I

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/boost"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ID_BOOST:I

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load"

    const-string v1, "99"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ID_GO_HISPEED_LOAD:I

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/hispeed_freq"

    const-string v1, "624000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ID_HISPEED_FREQ:I

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/io_is_busy"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ID_IO_IS_BUSY:I

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/min_sample_time"

    const-string v1, "80000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ID_MIN_SAMPLE_TIME:I

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/timer_rate"

    const-string v1, "20000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ID_TIMER_RATE:I

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/timer_slack"

    const-string v1, "80000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ID_TIMER_SLACK:I

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/target_loads"

    const-string v1, "90"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ID_TARGET_LOADS:I

    const-string v0, "/sys/class/devfreq/devfreq-vpu.0/userspace/set_freq"

    const-string v1, "416000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ID_VPU_SET_FREQ:I

    const-string v0, "636f6d2e696d616e67692e74656d706c6572756e"

    invoke-static {v0}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    const-string v0, "636f6d2e726f76696f2e616e6772796269726473"

    invoke-static {v0}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    const-string v0, "636f6d2e696d616e67692e74656d706c6572756e32"

    invoke-static {v0}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    const-string v0, "636f6d2e6b696c6f6f2e73756277617973757266"

    invoke-static {v0}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    const-string v0, "636f6d2e67616d656c6f66742e616e64726f69642e414e4d502e476c6f6674444d484d"

    invoke-static {v0}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    const-string v0, "636f6d2e636f6d3275732e686f6d6572756e626174746c65322e6e6f726d616c2e6672656566756c6c2e676f6f676c652e676c6f62616c2e616e64726f6964"

    invoke-static {v0}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBootComplete()V
    .locals 8

    const-wide/32 v6, 0x4c2c0

    const-wide/16 v4, 0x0

    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mContext:Landroid/content/Context;

    const-string v2, "MRVL_GPU_MIN"

    const/16 v3, 0x10

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mGpuMinHelper:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mGpuMinHelper:Landroid/os/DVFSHelper;

    const-string v1, "GPU"

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mContext:Landroid/content/Context;

    const-string v2, "MRVL_DDR_MAX"

    const/16 v3, 0x14

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mDdrMaxHelper:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mDdrMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "BUS"

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mContext:Landroid/content/Context;

    const-string v2, "MRVL_DDR_MIN"

    const/16 v3, 0x13

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mDdrMinHelper:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mDdrMinHelper:Landroid/os/DVFSHelper;

    const-string v1, "BUS"

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    return-void
.end method

.method public onFgAppChanged()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/SortingMachine;->isHeavyApp(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsHeavyAppInForeground:Z

    const-string v2, "636f6d2e616c706861636c6f75642e636173746c656d6173746572"

    invoke-static {v2}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsCpuPowerSaving:Z

    const-string v2, "636f6d2e7365632e616e64726f69642e6170702e766964656f706c61796572"

    invoke-static {v2}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsVideoPlayback:Z

    const-string v2, "636f6d2e65612e67616d65732e72335f726f77"

    invoke-static {v2}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "636f6d2e65612e67616d65732e72335f6e61"

    invoke-static {v2}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    move v2, v4

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsOverheatGame:Z

    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsOverheatGame:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsCpuPowerSaving:Z

    if-eqz v2, :cond_5

    :cond_2
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mOverHeatGameTrigger:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mDdrMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->acquire()V

    iput-boolean v4, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mOverHeatGameTrigger:Z

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1

    :cond_5
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mOverHeatGameTrigger:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsOverheatGame:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsCpuPowerSaving:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mDdrMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->release()V

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mOverHeatGameTrigger:Z

    goto :goto_2
.end method

.method public onFgAppInPackageList(Z)V
    .locals 4

    const-wide/32 v2, 0x4c2c0

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsHighCpuLoadGame:Z

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsHighCpuLoadGame:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mGameTrigger:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mDdrMinHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->cancelExtraOptions()V

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mDdrMinHelper:Landroid/os/DVFSHelper;

    const-string v1, "BUS"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mDdrMinHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mGpuMinHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->cancelExtraOptions()V

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mGpuMinHelper:Landroid/os/DVFSHelper;

    const-string v1, "GPU"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mGpuMinHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mGameTrigger:Z

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mGameTrigger:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsHighCpuLoadGame:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mDdrMinHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mGpuMinHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mGameTrigger:Z

    goto :goto_0
.end method

.method public onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    const-string v0, "Camera_recording"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsCameraRecording:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    :cond_0
    return-void
.end method

.method public setBrowserPageLoading(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsBrowserPageLoading:Z

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsBrowserPageLoading:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsBrowserPageLoadingTrigger:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mDdrMinHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->cancelExtraOptions()V

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mDdrMinHelper:Landroid/os/DVFSHelper;

    const-string v1, "BUS"

    const-wide/32 v2, 0x82208

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mDdrMinHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mGpuMinHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->cancelExtraOptions()V

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mGpuMinHelper:Landroid/os/DVFSHelper;

    const-string v1, "GPU"

    const-wide/32 v2, 0x98580

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mGpuMinHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsBrowserPageLoadingTrigger:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsBrowserPageLoadingTrigger:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsBrowserPageLoading:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mDdrMinHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mGpuMinHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsBrowserPageLoadingTrigger:Z

    goto :goto_0
.end method

.method updateParameterByScenario()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsCpuPowerSaving:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ID_CPUFREQ_MAX_FORCED:I

    const-string v1, "624000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsHeavyAppInForeground:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ID_HISPEED_FREQ:I

    const-string v1, "1066000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ID_BOOST:I

    const-string v1, "100"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ID_IO_IS_BUSY:I

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ID_MIN_SAMPLE_TIME:I

    const-string v1, "50000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ID_GO_HISPEED_LOAD:I

    const-string v1, "80"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsVideoPlayback:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ID_VPU_SET_FREQ:I

    const-string v1, "208000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsHighCpuLoadGame:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ID_BOOST:I

    const-string v1, "100"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsCameraRecording:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ID_VPU_SET_FREQ:I

    const-string v1, "312000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_1
.end method
