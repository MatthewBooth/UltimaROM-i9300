.class public final Lcom/android/server/ssrm/fgapps/GovernorSD8x26;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "GovernorSD8x26.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;


# instance fields
.field final TAG:Ljava/lang/String;

.field mIsBrowserDashMode:Z

.field mIsBrowserForeground:Z

.field mIsCameraRecordingForeground:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    const-string v0, "SSRMv2:GovernorSD8x26"

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->mIsBrowserForeground:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->mIsCameraRecordingForeground:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->mIsBrowserDashMode:Z

    return-void
.end method


# virtual methods
.method public onFgAppChanged()V
    .locals 3

    sget-object v2, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v0

    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->mIsBrowserForeground:Z

    if-eq v2, v0, :cond_0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->mIsBrowserForeground:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->updateOndemandGovernorParameter()V

    :cond_0
    return-void
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

    if-nez v0, :cond_0

    const-string v0, "Camera_recordingDual"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->mIsCameraRecordingForeground:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->updateOndemandGovernorParameter()V

    :cond_1
    return-void
.end method

.method public updateOndemandGovernorParameter()V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->mIsBrowserForeground:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->mIsCameraRecordingForeground:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "sampling_down_factor"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->updateOndemandParameter(Ljava/lang/String;I)V

    const-string v0, "sampling_early_factor"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->updateOndemandParameter(Ljava/lang/String;I)V

    const-string v0, "sampling_interim_factor"

    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->updateOndemandParameter(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "sampling_down_factor"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->updateOndemandParameter(Ljava/lang/String;I)V

    const-string v0, "sampling_early_factor"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->updateOndemandParameter(Ljava/lang/String;I)V

    const-string v0, "sampling_interim_factor"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->updateOndemandParameter(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public updateOndemandParameter(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "SSRMv2:GovernorSD8x26"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sys/devices/system/cpu/cpufreq/ondemand/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->fileIntToSysfs(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
