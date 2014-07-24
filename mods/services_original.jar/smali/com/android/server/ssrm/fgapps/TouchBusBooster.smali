.class public final Lcom/android/server/ssrm/fgapps/TouchBusBooster;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "TouchBusBooster.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$SipVisibilityCallback;


# static fields
.field static final TAG:Ljava/lang/String; = "SSRMv2:TouchBusBooster"


# instance fields
.field mIsAppForeground:Z

.field mIsHeavyAppForeground:Z

.field mLastBoostLevel:I

.field mSipForeground:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->mSipForeground:Z

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->mIsAppForeground:Z

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->mIsHeavyAppForeground:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->mLastBoostLevel:I

    return-void
.end method


# virtual methods
.method public calculateBoostLevel()I
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->mIsHeavyAppForeground:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_J:Z

    if-eqz v1, :cond_1

    const/16 v0, 0x9

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->mIsAppForeground:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->mSipForeground:Z

    if-nez v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method public onFgAppChanged()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/SortingMachine;->isHeavyApp(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->mIsHeavyAppForeground:Z

    const-string v2, "com.facebook.katana"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.google.android.talk"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.kakao.talk"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.whatsapp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->mIsAppForeground:Z

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->updateBoostLevel()V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->mIsAppForeground:Z

    goto :goto_1
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0

    return-void
.end method

.method public onSipVisibilityChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->mSipForeground:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->updateBoostLevel()V

    return-void
.end method

.method public updateBoostLevel()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->calculateBoostLevel()I

    move-result v0

    iget v1, p0, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->mLastBoostLevel:I

    if-ne v1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput v0, p0, Lcom/android/server/ssrm/fgapps/TouchBusBooster;->mLastBoostLevel:I

    const-string v1, "SSRMv2:TouchBusBooster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "boost_level,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->updateTouchBooster(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
