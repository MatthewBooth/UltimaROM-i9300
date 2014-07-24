.class public Lcom/android/server/ssrm/fgapps/GovernorAdonis;
.super Lcom/android/server/ssrm/fgapps/AbsGovernor;
.source "GovernorAdonis.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$LockScreenCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOffCallback;


# instance fields
.field ID_SAMPLING_DOWN_FACTOR:I

.field ID_SAMPLING_RATE:I

.field ID_UP_STEP_LEVEL_B:I

.field ID_UP_STEP_LEVEL_L:I

.field ID_UP_THRESHOLD:I

.field ID_UP_THRESHOLD_H:I

.field ID_UP_THRESHOLD_L:I

.field final TAG:Ljava/lang/String;

.field mIsHeavyAppInForeground:Z

.field mIsLcdOff:Z

.field mIsTargetAppInForeground:Z

.field mListTargetApp:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;-><init>()V

    const-string v0, "SSRMv2:GovernorAdonis"

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->TAG:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mIsTargetAppInForeground:Z

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mIsHeavyAppInForeground:Z

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mIsLcdOff:Z

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "636f6d2e676f6f676c652e616e64726f69642e74616c6b"

    invoke-static {v1}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

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

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mListTargetApp:[Ljava/lang/String;

    const-string v0, "SSRMv2:GovernorAdonis"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setTag(Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/ondemand/sampling_down_factor"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->ID_SAMPLING_DOWN_FACTOR:I

    const-string v0, "/sys/devices/system/cpu/cpufreq/ondemand/sampling_rate"

    const-string v1, "100000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->ID_SAMPLING_RATE:I

    const-string v0, "/sys/devices/system/cpu/cpufreq/ondemand/up_step_level_b"

    const-string v1, "1200000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->ID_UP_STEP_LEVEL_B:I

    const-string v0, "/sys/devices/system/cpu/cpufreq/ondemand/up_step_level_l"

    const-string v1, "600000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->ID_UP_STEP_LEVEL_L:I

    const-string v0, "/sys/devices/system/cpu/cpufreq/ondemand/up_threshold"

    const-string v1, "90"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->ID_UP_THRESHOLD:I

    const-string v0, "/sys/devices/system/cpu/cpufreq/ondemand/up_threshold_h"

    const-string v1, "90"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->ID_UP_THRESHOLD_H:I

    const-string v0, "/sys/devices/system/cpu/cpufreq/ondemand/up_threshold_l"

    const-string v1, "60"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->ID_UP_THRESHOLD_L:I

    return-void
.end method


# virtual methods
.method public onFgAppChanged()V
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mIsTargetAppInForeground:Z

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mListTargetApp:[Ljava/lang/String;

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

    if-eqz v6, :cond_4

    :cond_1
    iput-boolean v7, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mIsTargetAppInForeground:Z

    :cond_2
    sget-object v6, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v4

    iget-boolean v6, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mIsTargetAppInForeground:Z

    if-nez v6, :cond_3

    invoke-virtual {v4, v3}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iput-boolean v7, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mIsTargetAppInForeground:Z

    :cond_3
    invoke-virtual {v4, v3}, Lcom/android/server/ssrm/SortingMachine;->isHeavyApp(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mIsHeavyAppInForeground:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0

    return-void
.end method

.method public onLockScreenRelease()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mIsLcdOff:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    return-void
.end method

.method public onScreenOff()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mIsLcdOff:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    return-void
.end method

.method updateParameterByScenario()V
    .locals 3

    const-string v0, "SSRMv2:GovernorAdonis"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateParameters:: mIsTargetAppInForeground = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mIsTargetAppInForeground:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mIsHeavyAppInForeground:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->ID_SAMPLING_DOWN_FACTOR:I

    const-string v1, "4"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->ID_SAMPLING_RATE:I

    const-string v1, "80000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->ID_UP_STEP_LEVEL_B:I

    const-string v1, "1400000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->ID_UP_STEP_LEVEL_L:I

    const-string v1, "1200000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->ID_UP_THRESHOLD:I

    const-string v1, "70"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->ID_UP_THRESHOLD_H:I

    const-string v1, "80"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->ID_UP_THRESHOLD_L:I

    const-string v1, "60"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mIsTargetAppInForeground:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->ID_UP_THRESHOLD_H:I

    const-string v1, "99"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mIsLcdOff:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->ID_UP_THRESHOLD_L:I

    const-string v1, "90"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_0
.end method
