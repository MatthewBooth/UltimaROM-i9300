.class Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;
.super Ljava/lang/Object;
.source "Monitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MaxBrightnessSetRunnable"
.end annotation


# instance fields
.field final BRIGHTNESS_UPDATE_PERIOD:I

.field mMaxBrightnessNext:I

.field mMaxBrightnessNow:I

.field final synthetic this$0:Lcom/android/server/ssrm/Monitor;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/Monitor;)V
    .locals 1

    const/4 v0, -0x1

    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;->mMaxBrightnessNext:I

    iput v0, p0, Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;->mMaxBrightnessNow:I

    const/16 v0, 0x7530

    iput v0, p0, Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;->BRIGHTNESS_UPDATE_PERIOD:I

    return-void
.end method


# virtual methods
.method public limitBrightness()V
    .locals 3

    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->isSiopEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;->mMaxBrightnessNow:I

    iget v1, p0, Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;->mMaxBrightnessNext:I

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG_SIOP:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitBrightness : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;->mMaxBrightnessNext:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v0, v0, Lcom/android/server/ssrm/Monitor;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, -0x1

    iget v2, p0, Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;->mMaxBrightnessNext:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->setMasterBrightnessLimit(II)V

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-boolean v0, v0, Lcom/android/server/ssrm/Monitor;->mBootComplete:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;->this$0:Lcom/android/server/ssrm/Monitor;

    iget v1, p0, Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;->mMaxBrightnessNext:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ssrm/Monitor;->notifyLimitBrightness(IZ)V

    :cond_1
    iget v0, p0, Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;->mMaxBrightnessNext:I

    iput v0, p0, Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;->mMaxBrightnessNow:I

    goto :goto_0
.end method

.method public run()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;->limitBrightness()V

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v0, v0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
