.class public Lcom/android/server/ssrm/fgapps/TouchReportRate;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "TouchReportRate.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$LockScreenCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$PowerSavingModeCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOffCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$SipVisibilityCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$UltraPowerSavingModeCallback;


# instance fields
.field final REPORT_RATE_DEFAULT:I

.field final TAG:Ljava/lang/String;

.field mIsBrowserForeground:Z

.field mLastReportRate:I

.field mSIPVisible:Z

.field mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    const-string v0, "SSRMv2:TouchReportRate"

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mIsBrowserForeground:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mSIPVisible:Z

    iput v1, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->REPORT_RATE_DEFAULT:I

    iput v1, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mLastReportRate:I

    iput v1, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mUserId:I

    return-void
.end method


# virtual methods
.method public onFgAppChanged()V
    .locals 2

    sget-object v1, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mIsBrowserForeground:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchReportRate;->updateTouchReportRate()V

    return-void
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0

    return-void
.end method

.method public onLockScreenRelease()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchReportRate;->updateTouchReportRate()V

    return-void
.end method

.method public onPowerSavingModeChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchReportRate;->updateTouchReportRate()V

    return-void
.end method

.method public onScreenOff()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mLastReportRate:I

    return-void
.end method

.method public onSipVisibilityChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mSIPVisible:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchReportRate;->updateTouchReportRate()V

    return-void
.end method

.method public onUltraPowerSavingModeChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchReportRate;->updateTouchReportRate()V

    return-void
.end method

.method updateTouchReportRate()V
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isPowerSavingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mLastReportRate:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mLastReportRate:I

    const-string v1, "SSRMv2:TouchReportRate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "report_rate,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->sendTspCmd(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/ssrm/SSRMUtil;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "dev.ssrm.report_rate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isUltraPowerSavingMode()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isEmergencyMode()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mIsBrowserForeground:Z

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
