.class public Lcom/android/server/ssrm/fgapps/tsp/SideTouch;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "SideTouch.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$BootCompleteCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;


# instance fields
.field final TAG:Ljava/lang/String;

.field mCamera:Z

.field mIsAppForeground:Z

.field mLastValue:I

.field mMultiverse:Z

.field mTargetValue:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    const-string v0, "SSRMv2:TSP:SideTouch"

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->mIsAppForeground:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->mMultiverse:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->mCamera:Z

    iput v1, p0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->mLastValue:I

    iput v1, p0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->mTargetValue:I

    return-void
.end method


# virtual methods
.method public onBootComplete()V
    .locals 8

    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.sec.android.sidetouch.GRIP"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v5, 0x200

    invoke-virtual {v2, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    const-string v5, "SSRMv2:TSP:SideTouch"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onFgAppChanged()V
    .locals 0

    return-void
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->mIsAppForeground:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->updateSideTouch()V

    return-void
.end method

.method public setCameraEnable(Z)V
    .locals 3

    const-string v0, "SSRMv2:TSP:SideTouch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraEnable:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->mCamera:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->updateSideTouch()V

    return-void
.end method

.method public setMultiverseEnable(Z)V
    .locals 3

    const-string v0, "SSRMv2:TSP:SideTouch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMultiverseEnable:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->mMultiverse:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->updateSideTouch()V

    return-void
.end method

.method updateSideTouch()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->mMultiverse:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->mIsAppForeground:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->mCamera:Z

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->mTargetValue:I

    iget v0, p0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->mTargetValue:I

    iget v1, p0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->mLastValue:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->mTargetValue:I

    iput v0, p0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->mLastValue:I

    const-string v0, "SSRMv2:TSP:SideTouch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sidekey_enable,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;->mTargetValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->updateSideTouch(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
