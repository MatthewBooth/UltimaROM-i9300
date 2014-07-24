.class public final Lcom/android/server/ssrm/fgapps/tsp/AirViewOnOff;
.super Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;
.source "AirViewOnOff.java"


# instance fields
.field FEATURE_DISABLE_AIRVIEW_IN_LANDSCAPE_MODE:Z

.field mSetupWizardFinished:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AirViewOnOff;->FEATURE_DISABLE_AIRVIEW_IN_LANDSCAPE_MODE:Z

    sget-object v0, Lcom/android/server/ssrm/Feature;->SIOP_FILENAME:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/ssrm/Feature;->SIOP_FILENAME:Ljava/lang/String;

    const-string v1, "j6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AirViewOnOff;->FEATURE_DISABLE_AIRVIEW_IN_LANDSCAPE_MODE:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/tsp/AirViewOnOff;->checkSetupWizardFinished()V

    return-void
.end method


# virtual methods
.method protected calculateAirViewStatus(Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;)I
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AirViewOnOff;->mSetupWizardFinished:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/tsp/AirViewOnOff;->checkSetupWizardFinished()V

    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AirViewOnOff;->mSetupWizardFinished:Z

    if-nez v2, :cond_1

    const-string v1, "SSRMv2:TSP:AirViewOnOff"

    const-string v2, "Setup wizard is foreground yet."

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->isGripVolumeDown()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->isClearCoverOn()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->isFingerHoverOn()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->isLockScreenVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AirViewOnOff;->FEATURE_DISABLE_AIRVIEW_IN_LANDSCAPE_MODE:Z

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->isLandscapeMode()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    invoke-virtual {p1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->isMultiWindow()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->isStatusBarVisible()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->isBrowserMainPageVisible()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p2}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->isMagnifierOn()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_5
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mIsAirViewAppOnFg:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->isSIPVisible()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public checkSetupWizardFinished()V
    .locals 3

    const-string v0, "FINISH"

    const-string v1, "persist.sys.setupwizard"

    const-string v2, "FINISH"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AirViewOnOff;->mSetupWizardFinished:Z

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AirViewOnOff;->mSetupWizardFinished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->setLockScreen(Z)V

    :cond_0
    return-void
.end method
