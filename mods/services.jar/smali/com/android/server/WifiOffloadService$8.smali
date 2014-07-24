.class Lcom/android/server/WifiOffloadService$8;
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

    iput-object p1, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v5, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v6, "onReceive -- WiFiDataReceiver"

    invoke-virtual {v5, v6}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    const-string v5, "bssid"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WiFi BSSID :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v5, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    #setter for: Lcom/android/server/WifiOffloadService;->prevWiFiState:Z
    invoke-static {v5, v8}, Lcom/android/server/WifiOffloadService;->access$1102(Lcom/android/server/WifiOffloadService;Z)Z

    iget-object v5, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    iput-boolean v8, v5, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    iget-object v5, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v6, "onReceive -- NetworkInfo.State.CONNECTED"

    invoke-virtual {v5, v6}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v5}, Lcom/android/server/WifiOffloadService;->getCDMABaseStationID()I

    move-result v1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    iget-object v5, v5, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v6, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    iget-object v6, v6, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5, v6, v2, v1}, Lcom/android/server/wifi_offload/WifiOffloadDB;->isWiFiDataStored(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v5}, Lcom/android/server/WifiOffloadService;->collectWiFiDetails()V

    iget-object v5, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v5}, Lcom/android/server/WifiOffloadService;->storeWiFiDetails()V

    :cond_2
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/WifiOffloadService;->access$1000(Lcom/android/server/WifiOffloadService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v6, "Timer is running, so reset it when connection is Succuss!!"

    invoke-virtual {v5, v6}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    #setter for: Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z
    invoke-static {v5, v9}, Lcom/android/server/WifiOffloadService;->access$202(Lcom/android/server/WifiOffloadService;Z)Z

    iget-object v5, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/WifiOffloadService;->access$1000(Lcom/android/server/WifiOffloadService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v5}, Lcom/android/server/WifiOffloadService;->stopDataActivityTimer()V

    goto/16 :goto_0

    :cond_4
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v5, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    iget-boolean v5, v5, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z
    invoke-static {v5}, Lcom/android/server/WifiOffloadService;->access$200(Lcom/android/server/WifiOffloadService;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v6, "WIFI DISCONNECTED : sendEmptyMessageDelayed after 5 min to check Wifi status"

    invoke-virtual {v5, v6}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/WifiOffloadService;->access$1000(Lcom/android/server/WifiOffloadService;)Landroid/os/Handler;

    move-result-object v5

    const-wide/32 v6, 0x493e0

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    iput-boolean v9, v5, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    iget-object v5, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v6, "onReceive -- NetworkInfo.State.DISCONNECTED"

    invoke-virtual {v5, v6}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v5}, Lcom/android/server/WifiOffloadService;->startDataActivityTimer()V

    goto/16 :goto_0

    :cond_6
    const-string v5, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "connected"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v5, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    iput-boolean v9, v5, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    iget-object v5, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v6, "onReceive -- SUPPLICANT_CONNECTION_CHANGE_ACTION"

    invoke-virtual {v5, v6}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v5}, Lcom/android/server/WifiOffloadService;->startDataActivityTimer()V

    goto/16 :goto_0

    :cond_7
    const-string v5, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v6, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v5, "newState"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/SupplicantState;

    #setter for: Lcom/android/server/WifiOffloadService;->mNewSupplicantState:Landroid/net/wifi/SupplicantState;
    invoke-static {v6, v5}, Lcom/android/server/WifiOffloadService;->access$1202(Lcom/android/server/WifiOffloadService;Landroid/net/wifi/SupplicantState;)Landroid/net/wifi/SupplicantState;

    iget-object v5, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "new supplicant state is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->mNewSupplicantState:Landroid/net/wifi/SupplicantState;
    invoke-static {v7}, Lcom/android/server/WifiOffloadService;->access$1200(Lcom/android/server/WifiOffloadService;)Landroid/net/wifi/SupplicantState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
