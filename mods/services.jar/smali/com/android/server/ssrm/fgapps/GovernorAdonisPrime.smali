.class public Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;
.super Lcom/android/server/ssrm/fgapps/AbsGovernor;
.source "GovernorAdonisPrime.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;


# instance fields
.field ID_ABOVE_HISPEED_DELAY:I

.field ID_ENFORCED_MODE:I

.field ID_GO_HISPEED_LOAD:I

.field ID_HISPEED_FREQ:I

.field ID_MIN_SAMPLE_TIME:I

.field ID_MULTI_ENTER_LOAD:I

.field ID_SINGLE_ENTER_LOAD:I

.field ID_TARGET_LOADS:I

.field ID_TIMER_RATE:I

.field final TAG:Ljava/lang/String;

.field mIsAutoMode:Z

.field mIsBrowserDashMode:Z

.field mIsBrowserForeground:Z

.field mIsBrowserPageLoading:Z

.field mIsCameraRecording:Z

.field mIsChatOnV:Z

.field mIsHeavyAppInForeground:Z

.field mIsTargetAppInForeground:Z

.field mListTargetApp:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;-><init>()V

    const-string v0, "SSRMv2:GovernorAdonisPrime"

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->TAG:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsAutoMode:Z

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsBrowserForeground:Z

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsHeavyAppInForeground:Z

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsTargetAppInForeground:Z

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "636f6d2e676f6f676c652e616e64726f69642e74616c6b"

    invoke-static {v1}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "636f6d2e66616365626f6f6b2e6b6174616e61"

    invoke-static {v2}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "74656d706c6572756e"

    invoke-static {v2}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "636173746c656d6173746572"

    invoke-static {v2}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "636f6d2e65612e67616d65732e72335f726f77"

    invoke-static {v2}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "457069634369746164656c"

    invoke-static {v2}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "616e6772796269726473"

    invoke-static {v2}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mListTargetApp:[Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsBrowserPageLoading:Z

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsCameraRecording:Z

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsChatOnV:Z

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsBrowserDashMode:Z

    const-string v0, "SSRMv2:GovernorAdonisPrime"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setTag(Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/target_loads"

    const-string v1, "70 600000:70 800000:75 1500000:80 1700000:90"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_TARGET_LOADS:I

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay"

    const-string v1, "20000 1000000:80000 1200000:100000 1700000:20000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_ABOVE_HISPEED_DELAY:I

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/hispeed_freq"

    const-string v1, "600000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_HISPEED_FREQ:I

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load"

    const-string v1, "99"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_GO_HISPEED_LOAD:I

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/min_sample_time"

    const-string v1, "40000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_MIN_SAMPLE_TIME:I

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/timer_rate"

    const-string v1, "20000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_TIMER_RATE:I

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/enforced_mode"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_ENFORCED_MODE:I

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/multi_enter_load"

    const-string v1, "360"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_MULTI_ENTER_LOAD:I

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/single_enter_load"

    const-string v1, "95"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_SINGLE_ENTER_LOAD:I

    const-string v0, "dm"

    invoke-static {v0}, Lcom/android/server/ssrm/DevSysProperty;->addMode(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onBrowserDashMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsBrowserDashMode:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    return-void
.end method

.method public onFgAppChanged()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v6, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsBrowserForeground:Z

    invoke-virtual {v4, v3}, Lcom/android/server/ssrm/SortingMachine;->isHeavyApp(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsHeavyAppInForeground:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsTargetAppInForeground:Z

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mListTargetApp:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v5, v0, v1

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsTargetAppInForeground:Z

    :cond_2
    const-string v6, "com.sec.android.app.camera"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsAutoMode:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0

    return-void
.end method

.method public onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    const-string v0, "Camera_recording"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsCameraRecording:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    :cond_0
    const-string v0, "ChatOnV_vtCall"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsChatOnV:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    :cond_1
    return-void
.end method

.method public setBrowserPageLoading(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsBrowserPageLoading:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    return-void
.end method

.method updateParameterByScenario()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsBrowserForeground:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsAutoMode:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_MULTI_ENTER_LOAD:I

    const-string v1, "800"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_SINGLE_ENTER_LOAD:I

    const-string v1, "200"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsHeavyAppInForeground:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->IS_TABLET:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_TARGET_LOADS:I

    const-string v1, "60 800000:65 1400000:70"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_ABOVE_HISPEED_DELAY:I

    const-string v1, "19000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_HISPEED_FREQ:I

    const-string v1, "650000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_GO_HISPEED_LOAD:I

    const-string v1, "90"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_MIN_SAMPLE_TIME:I

    const-string v1, "79000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsBrowserDashMode:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->IS_TABLET:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_ENFORCED_MODE:I

    const-string v1, "3"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_TARGET_LOADS:I

    const-string v1, "60 800000:65 1400000:70"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_ABOVE_HISPEED_DELAY:I

    const-string v1, "19000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_HISPEED_FREQ:I

    const-string v1, "650000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_GO_HISPEED_LOAD:I

    const-string v1, "90"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_MIN_SAMPLE_TIME:I

    const-string v1, "79000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsBrowserForeground:Z

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->DISPLAY_WQXGA:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_TARGET_LOADS:I

    const-string v1, "80 1000000:99"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_ABOVE_HISPEED_DELAY:I

    const-string v1, "20000 650000:100000 1200000:400000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_TARGET_LOADS:I

    const-string v1, "70 600000:99 1700000:80"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_ABOVE_HISPEED_DELAY:I

    const-string v1, "20000 650000:100000 1200000:400000 1700000:20000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_0

    :cond_7
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsTargetAppInForeground:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_TARGET_LOADS:I

    const-string v1, "70 650000:95 800000:99"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_ABOVE_HISPEED_DELAY:I

    const-string v1, "20000 1000000:140000 1200000:500000 1700000:20000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_0

    :cond_8
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsCameraRecording:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_TARGET_LOADS:I

    const-string v1, "70 650000:95 800000:99"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_ABOVE_HISPEED_DELAY:I

    const-string v1, "20000 1000000:140000 1200000:500000 1700000:20000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_0

    :cond_9
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsChatOnV:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_TARGET_LOADS:I

    const-string v1, "80 900000:99"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto/16 :goto_0
.end method
