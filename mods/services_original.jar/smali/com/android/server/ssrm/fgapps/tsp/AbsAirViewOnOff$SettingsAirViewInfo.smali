.class Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;
.super Ljava/lang/Object;
.source "AbsAirViewOnOff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsAirViewInfo"
.end annotation


# instance fields
.field private mAirViewMasterOnOff:Z

.field private mAirViewMode:I

.field mAirViewObserver:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$AirViewObserver;

.field private mFingerOverViewOn:Z

.field private mMagnifierOn:Z

.field private mOneHandAnyScreen:Z

.field private mOneHandCalculator:Z

.field private mOneHandDialer:Z

.field private mOneHandPattern:Z

.field private mOneHandSamsungKeypad:Z

.field mResolver:Landroid/content/ContentResolver;

.field mcontext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->this$0:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p1, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->readAirViewSettings()V

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->registerObservers()V

    return-void
.end method


# virtual methods
.method deregisterObservers()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewObserver:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$AirViewObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public getAirViewMode()I
    .locals 1

    iget v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewMode:I

    return v0
.end method

.method public isAirViewMasterOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewMasterOnOff:Z

    return v0
.end method

.method public isFingerHoverOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mFingerOverViewOn:Z

    return v0
.end method

.method public isMagnifierOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mMagnifierOn:Z

    return v0
.end method

.method public isOneHandAnyScreen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandAnyScreen:Z

    return v0
.end method

.method public isOneHandCalculator()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandCalculator:Z

    return v0
.end method

.method public isOneHandDialer()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandDialer:Z

    return v0
.end method

.method public isOneHandPattern()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandPattern:Z

    return v0
.end method

.method public isOneHandSamsungKeypad()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandSamsungKeypad:Z

    return v0
.end method

.method printDebug()V
    .locals 3

    const-string v1, "SSRMv2:TSP:AirViewOnOff"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SettingsAirViewInfo:: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mFingerOverViewOn:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewMasterOnOff:Z

    if-eqz v0, :cond_1

    const-string v0, "1"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mMagnifierOn:Z

    if-eqz v0, :cond_2

    const-string v0, "1"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandAnyScreen:Z

    if-eqz v0, :cond_3

    const-string v0, "1"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandDialer:Z

    if-eqz v0, :cond_4

    const-string v0, "1"

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandSamsungKeypad:Z

    if-eqz v0, :cond_5

    const-string v0, "1"

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandCalculator:Z

    if-eqz v0, :cond_6

    const-string v0, "1"

    :goto_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandPattern:Z

    if-eqz v0, :cond_7

    const-string v0, "1"

    :goto_7
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
.end method

.method readAirViewSettings()V
    .locals 5

    const/4 v4, -0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_0

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mFingerOverViewOn:Z

    :goto_0
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "air_view_master_onoff"

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_1

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewMasterOnOff:Z

    :goto_1
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "air_view_mode"

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewMode:I

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "finger_air_view_magnifier"

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_2

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mMagnifierOn:Z

    :goto_2
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "any_screen_enabled"

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_3

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandAnyScreen:Z

    :goto_3
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "onehand_dialer_enabled"

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_4

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandDialer:Z

    :goto_4
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "onehand_samsungkeypad_enabled"

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_5

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandSamsungKeypad:Z

    :goto_5
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "onehand_calculator_enabled"

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_6

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandCalculator:Z

    :goto_6
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "onehand_pattern_enabled"

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_7

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandPattern:Z

    :goto_7
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mFingerOverViewOn:Z

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewMasterOnOff:Z

    goto :goto_1

    :cond_2
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mMagnifierOn:Z

    goto :goto_2

    :cond_3
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandAnyScreen:Z

    goto :goto_3

    :cond_4
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandDialer:Z

    goto :goto_4

    :cond_5
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandSamsungKeypad:Z

    goto :goto_5

    :cond_6
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandCalculator:Z

    goto :goto_6

    :cond_7
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandPattern:Z

    goto :goto_7
.end method

.method registerObservers()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x2

    new-instance v0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$AirViewObserver;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->this$0:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;

    invoke-direct {v0, v1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$AirViewObserver;-><init>(Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewObserver:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$AirViewObserver;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "finger_air_view"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewObserver:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$AirViewObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "air_view_master_onoff"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewObserver:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$AirViewObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "air_view_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewObserver:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$AirViewObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "finger_air_view_magnifier"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewObserver:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$AirViewObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "any_screen_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewObserver:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$AirViewObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "onehand_dialer_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewObserver:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$AirViewObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "onehand_samsungkeypad_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewObserver:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$AirViewObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "onehand_calculator_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewObserver:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$AirViewObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "onehand_pattern_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewObserver:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$AirViewObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method
