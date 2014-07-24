.class public final Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "GovernorSD8974Ondemand.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;


# instance fields
.field final TAG:Ljava/lang/String;

.field mIsBrowserDashMode:Z

.field mIsBrowserForeground:Z

.field mIsTargetAppForeground:Z

.field mTargetApplicationList:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    const-string v0, "SSRMv2:GovernorSD8974"

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->TAG:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->mIsBrowserForeground:Z

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->mIsTargetAppForeground:Z

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->mIsBrowserDashMode:Z

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "636f6d2e696d616e67692e74656d706c6572756e"

    invoke-static {v1}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "636f6d2e616c706861636c6f75642e636173746c656d6173746572"

    invoke-static {v2}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "636f6d2e6570696367616d65732e457069634369746164656c"

    invoke-static {v2}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "636f6d2e65612e67616d65732e72335f726f77"

    invoke-static {v2}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "636f6d2e726f76696f2e616e6772796269726473"

    invoke-static {v2}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->mTargetApplicationList:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onFgAppChanged()V
    .locals 9

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v8, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->mTargetApplicationList:[Ljava/lang/String;

    array-length v4, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v7, v0, v1

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v3, 0x1

    :cond_2
    iget-boolean v8, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->mIsBrowserForeground:Z

    if-ne v8, v2, :cond_3

    iget-boolean v8, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->mIsTargetAppForeground:Z

    if-eq v8, v3, :cond_0

    :cond_3
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->mIsBrowserForeground:Z

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->mIsTargetAppForeground:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandGovernorParameter()V

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0

    return-void
.end method

.method public setBrowserDashMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->mIsBrowserDashMode:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandGovernorParameter()V

    return-void
.end method

.method public updateOndemandGovernorParameter()V
    .locals 7

    const/16 v6, 0x5a

    const/16 v5, 0xe

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->mIsBrowserDashMode:Z

    if-eqz v0, :cond_0

    const-string v0, "sampling_early_factor"

    invoke-virtual {p0, v0, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    const-string/jumbo v0, "step_up_early_hispeed"

    const v1, 0x180600

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    const-string v0, "sampling_interim_factor"

    invoke-virtual {p0, v0, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    const-string/jumbo v0, "step_up_interim_hispeed"

    const v1, 0x1de200

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    const-string v0, "freq_step"

    const/16 v1, 0x11

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    const-string/jumbo v0, "up_threshold"

    const/16 v1, 0x32

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    const-string v0, "sampling_down_factor"

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->mIsBrowserForeground:Z

    if-eqz v0, :cond_1

    const-string v0, "sampling_early_factor"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    const-string/jumbo v0, "step_up_early_hispeed"

    const v1, 0x122a00

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    const-string v0, "sampling_interim_factor"

    invoke-virtual {p0, v0, v4}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    const-string/jumbo v0, "step_up_interim_hispeed"

    const v1, 0x1a5e00

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    const-string v0, "freq_step"

    invoke-virtual {p0, v0, v5}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    const-string/jumbo v0, "up_threshold"

    invoke-virtual {p0, v0, v6}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    const-string v0, "sampling_down_factor"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->mIsTargetAppForeground:Z

    if-eqz v0, :cond_2

    const-string v0, "sampling_early_factor"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    const-string v0, "sampling_interim_factor"

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const-string v0, "sampling_early_factor"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    const-string/jumbo v0, "step_up_early_hispeed"

    const v1, 0x122a00

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    const-string v0, "sampling_interim_factor"

    invoke-virtual {p0, v0, v4}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    const-string/jumbo v0, "step_up_interim_hispeed"

    const v1, 0x1a5e00

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    const-string v0, "freq_step"

    invoke-virtual {p0, v0, v5}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    const-string/jumbo v0, "up_threshold"

    invoke-virtual {p0, v0, v6}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    const-string v0, "sampling_down_factor"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public updateOndemandParameter(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "SSRMv2:GovernorSD8974"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sys/devices/system/cpu/cpufreq/ondemand/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->fileIntToSysfs(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
