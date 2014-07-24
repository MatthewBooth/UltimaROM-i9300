.class Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;
.super Ljava/lang/Object;
.source "AbsAirViewOnOff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DeviceInfo"
.end annotation


# instance fields
.field private mBrowserMainPageOn:Z

.field private mClearCoverOn:Z

.field private mContactDialerOn:Z

.field private mGripVolumeDownOn:Z

.field private mLandscape:Z

.field private mLockScreenOn:Z

.field private mMultiWindowOn:Z

.field private mPatternLockOn:Z

.field private mPenAttached:Z

.field private mPhoneDialerOn:Z

.field private mSIPOn:Z

.field private mStatusBarOn:Z


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mClearCoverOn:Z

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mMultiWindowOn:Z

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mStatusBarOn:Z

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mLockScreenOn:Z

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mLandscape:Z

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mBrowserMainPageOn:Z

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mPenAttached:Z

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mContactDialerOn:Z

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mPhoneDialerOn:Z

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mPatternLockOn:Z

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mGripVolumeDownOn:Z

    return-void
.end method


# virtual methods
.method isBrowserMainPageVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mBrowserMainPageOn:Z

    return v0
.end method

.method isClearCoverOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mClearCoverOn:Z

    return v0
.end method

.method isContactDialerVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mContactDialerOn:Z

    return v0
.end method

.method isGripVolumeDown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mGripVolumeDownOn:Z

    return v0
.end method

.method isLandscapeMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mLandscape:Z

    return v0
.end method

.method isLockScreenVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mLockScreenOn:Z

    return v0
.end method

.method isMultiWindow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mMultiWindowOn:Z

    return v0
.end method

.method isPatternLockVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mPatternLockOn:Z

    return v0
.end method

.method isPenAttached()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mPenAttached:Z

    return v0
.end method

.method isPhoneContactDialerVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mPhoneDialerOn:Z

    return v0
.end method

.method isSIPVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mSIPOn:Z

    return v0
.end method

.method isStatusBarVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mStatusBarOn:Z

    return v0
.end method

.method printDebug()V
    .locals 3

    const-string v1, "SSRMv2:TSP:AirViewOnOff"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceInfo:: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mClearCoverOn:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mMultiWindowOn:Z

    if-eqz v0, :cond_1

    const-string v0, "1"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mStatusBarOn:Z

    if-eqz v0, :cond_2

    const-string v0, "1"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mLockScreenOn:Z

    if-eqz v0, :cond_3

    const-string v0, "1"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mLandscape:Z

    if-eqz v0, :cond_4

    const-string v0, "1"

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mBrowserMainPageOn:Z

    if-eqz v0, :cond_5

    const-string v0, "1"

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mPenAttached:Z

    if-eqz v0, :cond_6

    const-string v0, "1"

    :goto_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mContactDialerOn:Z

    if-eqz v0, :cond_7

    const-string v0, "1"

    :goto_7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mPhoneDialerOn:Z

    if-eqz v0, :cond_8

    const-string v0, "1"

    :goto_8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mPatternLockOn:Z

    if-eqz v0, :cond_9

    const-string v0, "1"

    :goto_9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mGripVolumeDownOn:Z

    if-eqz v0, :cond_a

    const-string v0, "1"

    :goto_a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "0"

    goto :goto_0

    :cond_1
    const-string v0, "0"

    goto :goto_1

    :cond_2
    const-string v0, "0"

    goto :goto_2

    :cond_3
    const-string v0, "0"

    goto :goto_3

    :cond_4
    const-string v0, "0"

    goto :goto_4

    :cond_5
    const-string v0, "0"

    goto :goto_5

    :cond_6
    const-string v0, "0"

    goto :goto_6

    :cond_7
    const-string v0, "0"

    goto :goto_7

    :cond_8
    const-string v0, "0"

    goto :goto_8

    :cond_9
    const-string v0, "0"

    goto :goto_9

    :cond_a
    const-string v0, "0"

    goto :goto_a
.end method

.method setBrowserMainPage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mBrowserMainPageOn:Z

    return-void
.end method

.method setClearCover(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mClearCoverOn:Z

    return-void
.end method

.method setContactDialerVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mContactDialerOn:Z

    return-void
.end method

.method setGripVolumeDown(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mGripVolumeDownOn:Z

    return-void
.end method

.method setLandscape(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mLandscape:Z

    return-void
.end method

.method setLockScreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mLockScreenOn:Z

    return-void
.end method

.method setMultiWindow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mMultiWindowOn:Z

    return-void
.end method

.method setPatternLockVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mPatternLockOn:Z

    return-void
.end method

.method setPenAttached(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mPenAttached:Z

    return-void
.end method

.method setPhoneDialerVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mPhoneDialerOn:Z

    return-void
.end method

.method setSIP(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mSIPOn:Z

    return-void
.end method

.method setStatusBar(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mStatusBarOn:Z

    return-void
.end method
