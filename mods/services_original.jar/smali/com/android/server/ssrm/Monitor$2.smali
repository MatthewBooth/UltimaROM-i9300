.class Lcom/android/server/ssrm/Monitor$2;
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
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/Monitor;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/Monitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$2;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->isSiopEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor$2;->this$0:Lcom/android/server/ssrm/Monitor;

    sget-object v2, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v3, "PreSIOP is working now."

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor$2;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v3, v1, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor$2;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-boolean v1, v1, Lcom/android/server/ssrm/Monitor;->mScreenOn:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isAcConnected()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    const-wide/16 v1, 0x2710

    :goto_1
    invoke-virtual {v3, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor$2;->this$0:Lcom/android/server/ssrm/Monitor;

    #calls: Lcom/android/server/ssrm/Monitor;->readThermistorFile()Z
    invoke-static {v1}, Lcom/android/server/ssrm/Monitor;->access$000(Lcom/android/server/ssrm/Monitor;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor$2;->this$0:Lcom/android/server/ssrm/Monitor;

    iget v2, v2, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    invoke-virtual {v1, v2}, Lcom/android/server/ssrm/settings/MainController;->setTemperature(I)V

    sget-boolean v1, Lcom/android/server/ssrm/Feature;->SSRM_VZW_COOLDOWN_ENABLE:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor$2;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v1, v1, Lcom/android/server/ssrm/Monitor;->mCoolDownMode:Lcom/android/server/ssrm/CoolDownMode;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor$2;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v1, v1, Lcom/android/server/ssrm/Monitor;->mCoolDownMode:Lcom/android/server/ssrm/CoolDownMode;

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor$2;->this$0:Lcom/android/server/ssrm/Monitor;

    iget v2, v2, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    invoke-virtual {v1, v2}, Lcom/android/server/ssrm/CoolDownMode;->startVZWCoolDownMode(I)V

    :cond_3
    sget-boolean v1, Lcom/android/server/ssrm/Feature;->SSRM_BATTERY_COOLDOWN_ENABLE:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor$2;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v1, v1, Lcom/android/server/ssrm/Monitor;->mBatteryCoolDownMode:Lcom/android/server/ssrm/BatteryCoolDownMode;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor$2;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v1, v1, Lcom/android/server/ssrm/Monitor;->mBatteryCoolDownMode:Lcom/android/server/ssrm/BatteryCoolDownMode;

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor$2;->this$0:Lcom/android/server/ssrm/Monitor;

    iget v2, v2, Lcom/android/server/ssrm/Monitor;->mCurrentBatteryTemperature:I

    iget-object v3, p0, Lcom/android/server/ssrm/Monitor$2;->this$0:Lcom/android/server/ssrm/Monitor;

    iget v3, v3, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ssrm/BatteryCoolDownMode;->startBatteryCoolDownMode(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor$2;->this$0:Lcom/android/server/ssrm/Monitor;

    sget-object v2, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mThermistorObeserverTask:: e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-wide/32 v1, 0xea60

    goto :goto_1
.end method
