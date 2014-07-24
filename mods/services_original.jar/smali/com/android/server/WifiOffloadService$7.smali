.class Lcom/android/server/WifiOffloadService$7;
.super Landroid/content/BroadcastReceiver;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiOffloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiOffloadService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiOffloadService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/WifiOffloadService$7;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/server/WifiOffloadService$7;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v2, "onReceive -- wifiStateReceiver"

    invoke-virtual {v1, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "wifi_state"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/WifiOffloadService$7;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current Wifi state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiOffloadService$7;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v2, "can reset timer"

    invoke-virtual {v1, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/WifiOffloadService$7;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v1}, Lcom/android/server/WifiOffloadService;->getIntelligentWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/WifiOffloadService$7;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v2, "resetWifiOffloadTimer "

    invoke-virtual {v1, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/WifiOffloadService$7;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v1}, Lcom/android/server/WifiOffloadService;->resetNeverTurnOnWifi()V

    :cond_1
    iget-object v1, p0, Lcom/android/server/WifiOffloadService$7;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/WifiOffloadService;->access$1000(Lcom/android/server/WifiOffloadService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/WifiOffloadService$7;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v2, "Reset 5 min timer when wifi turning ON"

    invoke-virtual {v1, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/WifiOffloadService$7;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/WifiOffloadService;->access$1000(Lcom/android/server/WifiOffloadService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-eqz v0, :cond_4

    if-ne v0, v4, :cond_2

    :cond_4
    iget-object v1, p0, Lcom/android/server/WifiOffloadService$7;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v2, "Reset tryingAutoConnect when wifi is turned OFF"

    invoke-virtual {v1, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/WifiOffloadService$7;->this$0:Lcom/android/server/WifiOffloadService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z
    invoke-static {v1, v2}, Lcom/android/server/WifiOffloadService;->access$202(Lcom/android/server/WifiOffloadService;Z)Z

    goto :goto_0
.end method
