.class public Lcom/android/server/ssrm/fgapps/mDNLeOnOff;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "mDNLeOnOff.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$BootCompleteCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$LockScreenCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$MultiWindowStatusCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOffCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/fgapps/mDNLeOnOff$SettingsObserver;
    }
.end annotation


# static fields
.field static final MSG_ANI_STARTED:I = 0x1

.field public static avgAniTime:J

.field public static currentEndTime:J

.field public static currentStartTime:J

.field private static delayOffset:I

.field static syncObject:Ljava/lang/Object;

.field static syncObject2:Ljava/lang/Object;

.field public static totalAniCount:I

.field public static totalAniTime:J


# instance fields
.field final TAG:Ljava/lang/String;

.field isLockScreenOn:Z

.field ismDNIeAppFg:Z

.field private mHandler:Landroid/os/Handler;

.field final mIntentMdnieChanged:Landroid/content/Intent;

.field mPowerManager:Landroid/os/PowerManager;

.field mPreviousmDNIeValue:I

.field mResult:Z

.field mSettingsObserver:Lcom/android/server/ssrm/fgapps/mDNLeOnOff$SettingsObserver;

.field updateThread:Ljava/lang/Thread;

.field updateThread2:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    sput v3, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->delayOffset:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->syncObject:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->syncObject2:Ljava/lang/Object;

    sput-wide v1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->avgAniTime:J

    sput-wide v1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->totalAniTime:J

    sput v3, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->totalAniCount:I

    sput-wide v1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->currentStartTime:J

    sput-wide v1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->currentEndTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    const-string v0, "SSRMv2:mDNIeOnOff"

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->ismDNIeAppFg:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->isLockScreenOn:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mResult:Z

    iput v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mPreviousmDNIeValue:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mSettingsObserver:Lcom/android/server/ssrm/fgapps/mDNLeOnOff$SettingsObserver;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.intent.action.SSRM_MDNIE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mIntentMdnieChanged:Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ssrm/fgapps/mDNLeOnOff;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->retrieveSettings()V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->delayOffset:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0

    sput p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->delayOffset:I

    return p0
.end method

.method private retrieveSettings()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->clearPackages()V

    const-string v0, "com.google.android.apps.books"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->addPackage(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected calculateCurrentmDNIe()I
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->ismDNIeAppFg:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->isMultiWindowActivated()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->isLockScreenOn:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "com.android.email"

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xa

    goto :goto_0

    :cond_2
    const/16 v0, 0x9

    goto :goto_0
.end method

.method public onAnimationFinished(J)V
    .locals 6

    sget-wide v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->currentEndTime:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-wide p1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->currentEndTime:J

    sget v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->totalAniCount:I

    const/16 v1, 0x19

    if-gt v0, v1, :cond_0

    sget v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->totalAniCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->totalAniCount:I

    sget-wide v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->totalAniTime:J

    sget-wide v2, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->currentEndTime:J

    sget-wide v4, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->currentStartTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->totalAniTime:J

    sget-wide v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->totalAniTime:J

    sget v2, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->totalAniCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->avgAniTime:J

    goto :goto_0
.end method

.method public onAnimationStarted(J)V
    .locals 3

    sget-wide v1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->currentStartTime:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-wide p1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->currentStartTime:J

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onBootComplete()V
    .locals 2

    sget-object v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "SSRMv2:mDNIeOnOff"

    const-string v1, "onBootComplete : mContext == null"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mPowerManager:Landroid/os/PowerManager;

    new-instance v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$1;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$1;-><init>(Lcom/android/server/ssrm/fgapps/mDNLeOnOff;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$SettingsObserver;-><init>(Lcom/android/server/ssrm/fgapps/mDNLeOnOff;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mSettingsObserver:Lcom/android/server/ssrm/fgapps/mDNLeOnOff$SettingsObserver;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mSettingsObserver:Lcom/android/server/ssrm/fgapps/mDNLeOnOff$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$SettingsObserver;->register()V

    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->retrieveSettings()V

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->updatemDNIe()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$2;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$2;-><init>(Lcom/android/server/ssrm/fgapps/mDNLeOnOff;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->updateThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->updateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$3;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$3;-><init>(Lcom/android/server/ssrm/fgapps/mDNLeOnOff;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->updateThread2:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->updateThread2:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public onFgAppChanged()V
    .locals 2

    sget-object v1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->syncObject2:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->syncObject2:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onFgAppInPackageList(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v0

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->ismDNIeAppFg:Z

    const-string v1, "launcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v2, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->syncObject:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lcom/android/server/ssrm/Feature;->MODEL_H:Z

    if-eqz v1, :cond_0

    const/16 v1, -0x64

    sput v1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->delayOffset:I

    :cond_0
    sget-object v1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->syncObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v2

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onLockScreenRelease()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->isLockScreenOn:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->updatemDNIe()V

    return-void
.end method

.method public onMultiWindowStatusChanged(Z)V
    .locals 3

    const-string v0, "SSRMv2:mDNIeOnOff"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMultiWindowActivated = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->isMultiWindowActivated()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->syncObject2:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->syncObject2:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/android/server/ssrm/fgapps/FgAppListener;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/android/server/ssrm/fgapps/FgAppListener;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput-object p1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mContext:Landroid/content/Context;

    const-string v1, "SSRMv2:mDNIeOnOff"

    const-string v2, "onReceive:: ACTION_USER_FOREGROUND"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mSettingsObserver:Lcom/android/server/ssrm/fgapps/mDNLeOnOff$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$SettingsObserver;->deregister()V

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mSettingsObserver:Lcom/android/server/ssrm/fgapps/mDNLeOnOff$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$SettingsObserver;->register()V

    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->retrieveSettings()V

    :cond_0
    return-void
.end method

.method public onScreenOff()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->isLockScreenOn:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->updatemDNIe()V

    return-void
.end method

.method protected declared-synchronized updatemDNIe()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->calculateCurrentmDNIe()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->updatemDNIeSysFs(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected updatemDNIeSysFs(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mPowerManager:Landroid/os/PowerManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mPreviousmDNIeValue:I

    if-eq p1, v1, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeReadingMode(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mResult:Z

    iput p1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mPreviousmDNIeValue:I

    const-string v1, "SSRMv2:mDNIeOnOff"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setmDNIeUIMode => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mResult:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mIntentMdnieChanged:Landroid/content/Intent;

    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mIntentMdnieChanged:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->setAutoBrightnessForEbookOnly(Z)V

    const-string v1, "SSRMv2:mDNIeOnOff"

    const-string v2, "setAutoBrightnessForEbookOnly = true"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SSRMv2:mDNIeOnOff"

    const-string v2, "IllegalAccessError occured!"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->setAutoBrightnessForEbookOnly(Z)V

    const-string v1, "SSRMv2:mDNIeOnOff"

    const-string v2, "setAutoBrightnessForEbookOnly = false"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
