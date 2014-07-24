.class public final Lcom/android/server/ssrm/fgapps/TouchBooster;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "TouchBooster.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$EmergencyModeCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$PowerSavingModeCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$SipVisibilityCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$UltraPowerSavingModeCallback;


# static fields
.field static final sJpnBoostOffApps:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final sJpnSipBoostApps:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final MESSENGERS:[Ljava/lang/String;

.field final TAG:Ljava/lang/String;

.field final TOUCH_BOOSTER_DEFAULT:I

.field final TOUCH_KEY_BOOSTER_DEFAULT:I

.field lastTouchBoosterValue:I

.field lastTouchKeyBoosterValue:I

.field mBrowserVisible:Z

.field mIsHeavyAppInForeground:Z

.field mIsSetDefault:Z

.field mJpnBoostOffVisible:Z

.field mJpnSipBoostVisible:Z

.field mMessengerVisible:Z

.field mSIPVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/fgapps/TouchBooster;->sJpnBoostOffApps:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/fgapps/TouchBooster;->sJpnSipBoostApps:Ljava/util/Hashtable;

    sget-object v0, Lcom/android/server/ssrm/fgapps/TouchBooster;->sJpnBoostOffApps:Ljava/util/Hashtable;

    const-string v1, "com.facebook.katana"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/fgapps/TouchBooster;->sJpnBoostOffApps:Ljava/util/Hashtable;

    const-string v1, "com.sec.android.app.clockpackage"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/fgapps/TouchBooster;->sJpnSipBoostApps:Ljava/util/Hashtable;

    const-string v1, "com.facebook.katana"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/fgapps/TouchBooster;->sJpnSipBoostApps:Ljava/util/Hashtable;

    const-string v1, "com.google.android.apps.maps"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/fgapps/TouchBooster;->sJpnSipBoostApps:Ljava/util/Hashtable;

    const-string v1, "jp.co.nttdocomo.carriermail"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/fgapps/TouchBooster;->sJpnSipBoostApps:Ljava/util/Hashtable;

    const-string v1, "jp.naver.line.android"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/fgapps/TouchBooster;->sJpnSipBoostApps:Ljava/util/Hashtable;

    const-string v1, "com.google.android.youtube"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/fgapps/TouchBooster;->sJpnSipBoostApps:Ljava/util/Hashtable;

    const-string v1, "jp.co.johospace.jorte"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    const-string v0, "SSRMv2:TouchBooster"

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.google.android.talk"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->MESSENGERS:[Ljava/lang/String;

    iput v3, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->TOUCH_BOOSTER_DEFAULT:I

    iput v3, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->TOUCH_KEY_BOOSTER_DEFAULT:I

    iput v3, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->lastTouchBoosterValue:I

    iput v3, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->lastTouchKeyBoosterValue:I

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mIsSetDefault:Z

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mBrowserVisible:Z

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mMessengerVisible:Z

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mJpnBoostOffVisible:Z

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mJpnSipBoostVisible:Z

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mSIPVisible:Z

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mIsHeavyAppInForeground:Z

    return-void
.end method

.method private calculateTouchBoosterLevelForK3gKq()I
    .locals 2

    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mSIPVisible:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mMessengerVisible:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mBrowserVisible:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ssrm/SortingMachine;->isEmailApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mBrowserVisible:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0
.end method

.method private calculateTouchBoosterLevelForKlte()I
    .locals 3

    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mSIPVisible:Z

    if-eqz v1, :cond_4

    const-string v1, "com.android.mms"

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mJpnSipBoostVisible:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mMessengerVisible:Z

    if-eqz v1, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mBrowserVisible:Z

    if-eqz v1, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    :cond_5
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mJpnBoostOffVisible:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private calculateTouchBoosterLevelForOthers()I
    .locals 2

    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mSIPVisible:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mMessengerVisible:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mBrowserVisible:Z

    if-eqz v1, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mIsHeavyAppInForeground:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_H:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/server/ssrm/Feature;->MODEL_KS01:Z

    if-eqz v1, :cond_1

    :cond_4
    const/16 v0, 0x9

    goto :goto_0
.end method


# virtual methods
.method calculateCurrentTouchKeyBooster()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mBrowserVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method calculateTouchBoosterLevel()I
    .locals 1

    invoke-static {}, Lcom/android/server/ssrm/SSRMUtil;->isStabilityTestCondition()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isPowerSavingModeLimitPerformance()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KA:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KQ:Z

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/TouchBooster;->calculateTouchBoosterLevelForK3gKq()I

    move-result v0

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KF:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/TouchBooster;->calculateTouchBoosterLevelForKlte()I

    move-result v0

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/TouchBooster;->calculateTouchBoosterLevelForOthers()I

    move-result v0

    goto :goto_0
.end method

.method public onEmergencyModeChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchBooster;->updateTouchBooster()V

    return-void
.end method

.method public onFgAppChanged()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mBrowserVisible:Z

    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mMessengerVisible:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v6, Lcom/android/server/ssrm/fgapps/TouchBooster;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iput-boolean v7, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mBrowserVisible:Z

    :cond_1
    invoke-virtual {v5, v1}, Lcom/android/server/ssrm/SortingMachine;->isHeavyApp(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mIsHeavyAppInForeground:Z

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->MESSENGERS:[Ljava/lang/String;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iput-boolean v7, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mMessengerVisible:Z

    :cond_2
    sget-boolean v6, Lcom/android/server/ssrm/Feature;->REGION_JPN:Z

    if-eqz v6, :cond_3

    sget-object v6, Lcom/android/server/ssrm/fgapps/TouchBooster;->sJpnBoostOffApps:Ljava/util/Hashtable;

    invoke-virtual {v6, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mJpnBoostOffVisible:Z

    sget-object v6, Lcom/android/server/ssrm/fgapps/TouchBooster;->sJpnSipBoostApps:Ljava/util/Hashtable;

    invoke-virtual {v6, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mJpnSipBoostVisible:Z

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchBooster;->updateTouchBooster()V

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0

    return-void
.end method

.method public onPowerSavingModeChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchBooster;->updateTouchBooster()V

    return-void
.end method

.method public onSipVisibilityChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->mSIPVisible:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchBooster;->updateTouchBooster()V

    return-void
.end method

.method public onUltraPowerSavingModeChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchBooster;->updateTouchBooster()V

    return-void
.end method

.method updateTouchBooster()V
    .locals 3

    iget v0, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->lastTouchBoosterValue:I

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchBooster;->calculateTouchBoosterLevel()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchBooster;->calculateTouchBoosterLevel()I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->lastTouchBoosterValue:I

    const-string v0, "SSRMv2:TouchBooster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "boost_level,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->lastTouchBoosterValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->updateTouchBooster(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->lastTouchKeyBoosterValue:I

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchBooster;->calculateCurrentTouchKeyBooster()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchBooster;->calculateCurrentTouchKeyBooster()I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->lastTouchKeyBoosterValue:I

    const-string v0, "SSRMv2:TouchBooster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/server/ssrm/fgapps/TouchBooster;->lastTouchKeyBoosterValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->updateTouchKeyBooster(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
