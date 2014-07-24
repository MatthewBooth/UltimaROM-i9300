.class public Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;
.super Lcom/android/server/ssrm/fgapps/AbsGovernor;
.source "GovernorAdonisMini.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;


# instance fields
.field ID_ABOVE_HISPEED_DELAY:I

.field ID_HISPEED_FREQ:I

.field ID_HMP_LOAD_AVG_PERIOD:I

.field ID_TARGET_LOADS:I

.field final TAG:Ljava/lang/String;

.field mIsBrowserForeground:Z

.field mIsBrowserPageLoading:Z

.field mIsCameraRecording:Z

.field mIsChatOnV:Z

.field mIsTargetAppInForeground:Z

.field mListTargetApp:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;-><init>()V

    const-string v0, "GovernorAdonisMini"

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->TAG:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->mIsBrowserForeground:Z

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->mIsCameraRecording:Z

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->mIsChatOnV:Z

    const/4 v0, 0x5

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

    const-string v2, "616e6772796269726473"

    invoke-static {v2}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->mListTargetApp:[Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->mIsBrowserPageLoading:Z

    const-string v0, "GovernorAdonisMini"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setTag(Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive_eagle/target_loads"

    const-string v1, "79 1100000:83 1500000:90"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->ID_TARGET_LOADS:I

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive_eagle/above_hispeed_delay"

    const-string v1, "39000 1000000:59000 1200000:99000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->ID_ABOVE_HISPEED_DELAY:I

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive_eagle/hispeed_freq"

    const-string v1, "1100000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->ID_HISPEED_FREQ:I

    const-string v0, "/sys/kernel/hmp/load_avg_period_ms"

    const-string v1, "32"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->ID_HMP_LOAD_AVG_PERIOD:I

    return-void
.end method


# virtual methods
.method public onFgAppChanged()V
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->mIsTargetAppInForeground:Z

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->mListTargetApp:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_2
    iput-boolean v7, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->mIsTargetAppInForeground:Z

    :cond_3
    sget-object v6, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v4

    iget-boolean v6, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->mIsTargetAppInForeground:Z

    if-nez v6, :cond_4

    invoke-virtual {v4, v3}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    iput-boolean v7, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->mIsTargetAppInForeground:Z

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    goto :goto_0

    :cond_5
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

    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->mIsCameraRecording:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    :cond_0
    const-string v0, "ChatOnV_vtCall"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->mIsChatOnV:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    :cond_1
    return-void
.end method

.method public setBrowserPageLoading(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->mIsBrowserPageLoading:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    return-void
.end method

.method updateParameterByScenario()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->mIsTargetAppInForeground:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->ID_TARGET_LOADS:I

    const-string v1, "99"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->ID_HMP_LOAD_AVG_PERIOD:I

    const-string v1, "64"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->mIsBrowserForeground:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->ID_ABOVE_HISPEED_DELAY:I

    const-string v1, "99000 1200000:399000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->mIsBrowserPageLoading:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->ID_HISPEED_FREQ:I

    const-string v1, "800000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->ID_ABOVE_HISPEED_DELAY:I

    const-string v1, "59000 1000000:139000 1200000:499000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->mIsCameraRecording:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->ID_TARGET_LOADS:I

    const-string v1, "99"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->ID_ABOVE_HISPEED_DELAY:I

    const-string v1, "19000 1000000:139000 1200000:499000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->ID_HMP_LOAD_AVG_PERIOD:I

    const-string v1, "64"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->mIsChatOnV:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->ID_TARGET_LOADS:I

    const-string v1, "80 900000:99"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->ID_HMP_LOAD_AVG_PERIOD:I

    const-string v1, "64"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_0
.end method
