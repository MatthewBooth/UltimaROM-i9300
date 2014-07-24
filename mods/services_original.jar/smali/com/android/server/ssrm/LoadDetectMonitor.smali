.class public Lcom/android/server/ssrm/LoadDetectMonitor;
.super Ljava/lang/Object;
.source "LoadDetectMonitor.java"


# static fields
.field public static final LOAD_DETECT_PERIOD:J = 0xc8L

.field static final TAG:Ljava/lang/String; = "SSRMv2:DynamicLoadDetector"


# instance fields
.field public mCpuLoadState:I

.field public mGpuLoadState:I

.field final mHandler:Landroid/os/Handler;

.field public mLoadDetectTimer:Ljava/util/Timer;

.field mNativeMonitoringRunnable:Ljava/lang/Runnable;

.field public mShowLoadStateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mShowLoadStateHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mLoadDetectTimer:Ljava/util/Timer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mCpuLoadState:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mGpuLoadState:I

    new-instance v0, Lcom/android/server/ssrm/LoadDetectMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/LoadDetectMonitor$1;-><init>(Lcom/android/server/ssrm/LoadDetectMonitor;)V

    iput-object v0, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mNativeMonitoringRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/server/ssrm/LoadDetectMonitor;->nativeLoadDetectInit()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public disableLoadDetect()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/ssrm/LoadDetectMonitor;->nativeResetLoadDetect()V

    return-void
.end method

.method public enableLoadDetect()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mNativeMonitoringRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method native nativeChangeLoadDetectParameter(II)V
.end method

.method native nativeLoadDetectInit()V
.end method

.method native nativeLoadDetectTask()V
.end method

.method native nativeResetLoadDetect()V
.end method

.method public reportLoadState(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    :cond_0
    iput p1, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mCpuLoadState:I

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->reportLoadState(I)V

    return-void

    :cond_2
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mGpuLoadState:I

    goto :goto_0
.end method
