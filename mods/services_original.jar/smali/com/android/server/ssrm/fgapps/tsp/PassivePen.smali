.class public Lcom/android/server/ssrm/fgapps/tsp/PassivePen;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "PassivePen.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOnCallback;


# instance fields
.field final MSG_RECOVER_TSP_STATE:I

.field final TAG:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field mIsAppForeground:Z

.field mLastValue:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    const-string v0, "SSRMv2:TSP:PassivePen"

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/PassivePen;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/tsp/PassivePen;->mIsAppForeground:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/ssrm/fgapps/tsp/PassivePen;->MSG_RECOVER_TSP_STATE:I

    iput v1, p0, Lcom/android/server/ssrm/fgapps/tsp/PassivePen;->mLastValue:I

    const-string v0, "com.samsung.android.snote"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/ssrm/fgapps/tsp/PassivePen$1;

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/ssrm/fgapps/tsp/PassivePen$1;-><init>(Lcom/android/server/ssrm/fgapps/tsp/PassivePen;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/PassivePen;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private updateSysfs()V
    .locals 4

    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/tsp/PassivePen;->mIsAppForeground:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/android/server/ssrm/fgapps/tsp/PassivePen;->mLastValue:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/tsp/PassivePen;->mLastValue:I

    const-string v1, "SSRMv2:TSP:PassivePen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stylus_enable,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->sendTspCmd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onFgAppChanged()V
    .locals 0

    return-void
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/tsp/PassivePen;->mIsAppForeground:Z

    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/tsp/PassivePen;->updateSysfs()V

    return-void
.end method

.method public onScreenOn()V
    .locals 4

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/tsp/PassivePen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/tsp/PassivePen;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x320

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
