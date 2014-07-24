.class Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmartBondingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/smartbonding/SmartBondingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmartBondingReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/smartbonding/SmartBondingService;


# direct methods
.method constructor <init>(Lcom/samsung/smartbonding/SmartBondingService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v13

    if-eqz v13, :cond_0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SmartBondingReceiver: onReceive action="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    :cond_0
    const-string v13, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v13}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v14

    const/16 v15, 0xc

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    const-string v13, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const-string/jumbo v13, "wifi_state"

    const/4 v14, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v13}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v14

    const/16 v15, 0x8

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v13, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/4 v15, 0x0

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->getLinkProperties(I)Landroid/net/LinkProperties;
    invoke-static {v14, v15}, Lcom/samsung/smartbonding/SmartBondingService;->access$4900(Lcom/samsung/smartbonding/SmartBondingService;I)Landroid/net/LinkProperties;

    move-result-object v14

    #setter for: Lcom/samsung/smartbonding/SmartBondingService;->mWifiLp:Landroid/net/LinkProperties;
    invoke-static {v13, v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$4802(Lcom/samsung/smartbonding/SmartBondingService;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$4600()Z

    move-result v13

    if-eqz v13, :cond_4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SmartBondingReceiver: getSBInterface (Prefer IPv4) [WIFI : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/4 v15, 0x0

    const/16 v16, 0x0

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->getSBInterfaceDirect(II)Ljava/lang/String;
    invoke-static/range {v14 .. v16}, Lcom/samsung/smartbonding/SmartBondingService;->access$5000(Lcom/samsung/smartbonding/SmartBondingService;II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$4600()Z

    move-result v13

    if-eqz v13, :cond_5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SmartBondingReceiver: getSBInterface (Prefer IPv6) [WIFI : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/4 v15, 0x0

    const/16 v16, 0x1

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->getSBInterfaceDirect(II)Ljava/lang/String;
    invoke-static/range {v14 .. v16}, Lcom/samsung/smartbonding/SmartBondingService;->access$5000(Lcom/samsung/smartbonding/SmartBondingService;II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v13}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v14

    const/4 v15, 0x7

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_6
    const-string v13, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    const-string v13, "noConnectivity"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    const-string v13, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/NetworkInfo;

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mWifiConnected:Z
    invoke-static {v13}, Lcom/samsung/smartbonding/SmartBondingService;->access$400(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v13

    if-nez v13, :cond_a

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v13

    if-eqz v13, :cond_7

    const-string v13, "SmartBondingReceiver: wifi is connected"

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/samsung/smartbonding/SmartBondingService;->access$1500(Lcom/samsung/smartbonding/SmartBondingService;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/samsung/smartbonding/SmartBondingService;->access$1500(Lcom/samsung/smartbonding/SmartBondingService;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v11

    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mCurrentWifiMacAddr:Ljava/lang/String;
    invoke-static {v13}, Lcom/samsung/smartbonding/SmartBondingService;->access$5100(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d

    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v13

    if-eqz v13, :cond_8

    const-string v13, "SmartBondingReceiver: wifi ap is changed, init speed ratio"

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->initSpeedRatio()V
    invoke-static {v13}, Lcom/samsung/smartbonding/SmartBondingService;->access$5200(Lcom/samsung/smartbonding/SmartBondingService;)V

    :cond_9
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v14

    #setter for: Lcom/samsung/smartbonding/SmartBondingService;->mCurrentWifiMacAddr:Ljava/lang/String;
    invoke-static {v13, v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$5102(Lcom/samsung/smartbonding/SmartBondingService;Ljava/lang/String;)Ljava/lang/String;

    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v14

    #setter for: Lcom/samsung/smartbonding/SmartBondingService;->mWifiConnected:Z
    invoke-static {v13, v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$402(Lcom/samsung/smartbonding/SmartBondingService;Z)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/4 v15, 0x0

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->getLinkProperties(I)Landroid/net/LinkProperties;
    invoke-static {v14, v15}, Lcom/samsung/smartbonding/SmartBondingService;->access$4900(Lcom/samsung/smartbonding/SmartBondingService;I)Landroid/net/LinkProperties;

    move-result-object v14

    #setter for: Lcom/samsung/smartbonding/SmartBondingService;->mWifiLp:Landroid/net/LinkProperties;
    invoke-static {v13, v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$4802(Lcom/samsung/smartbonding/SmartBondingService;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$4600()Z

    move-result v13

    if-eqz v13, :cond_b

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SmartBondingReceiver: getSBInterface (Prefer IPv4) [WIFI : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/4 v15, 0x0

    const/16 v16, 0x0

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->getSBInterfaceDirect(II)Ljava/lang/String;
    invoke-static/range {v14 .. v16}, Lcom/samsung/smartbonding/SmartBondingService;->access$5000(Lcom/samsung/smartbonding/SmartBondingService;II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    :cond_b
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$4600()Z

    move-result v13

    if-eqz v13, :cond_c

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SmartBondingReceiver: getSBInterface (Prefer IPv6) [WIFI : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/4 v15, 0x0

    const/16 v16, 0x1

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->getSBInterfaceDirect(II)Ljava/lang/String;
    invoke-static/range {v14 .. v16}, Lcom/samsung/smartbonding/SmartBondingService;->access$5000(Lcom/samsung/smartbonding/SmartBondingService;II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v13}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v14

    const/4 v15, 0x7

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v13}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v14

    const/16 v15, 0x8

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_d
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v13

    if-eqz v13, :cond_9

    const-string v13, "SmartBondingReceiver: wifi ap is not changed"

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    const-string v13, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const-string v13, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/NetworkInfo;

    if-eqz v7, :cond_11

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v13

    const/4 v14, 0x5

    if-ne v13, v14, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mMobileConnected:Z
    invoke-static {v13}, Lcom/samsung/smartbonding/SmartBondingService;->access$5300(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v13

    if-nez v13, :cond_f

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v13

    if-eqz v13, :cond_f

    const-string v13, "SmartBondingReceiver: mobile is connected by immediate"

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v14

    #setter for: Lcom/samsung/smartbonding/SmartBondingService;->mMobileConnected:Z
    invoke-static {v13, v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$5302(Lcom/samsung/smartbonding/SmartBondingService;Z)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/4 v15, 0x1

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->getLinkProperties(I)Landroid/net/LinkProperties;
    invoke-static {v14, v15}, Lcom/samsung/smartbonding/SmartBondingService;->access$4900(Lcom/samsung/smartbonding/SmartBondingService;I)Landroid/net/LinkProperties;

    move-result-object v14

    #setter for: Lcom/samsung/smartbonding/SmartBondingService;->mMobileLp:Landroid/net/LinkProperties;
    invoke-static {v13, v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$5402(Lcom/samsung/smartbonding/SmartBondingService;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$4600()Z

    move-result v13

    if-eqz v13, :cond_10

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SmartBondingReceiver: getSBInterface (Prefer IPv4) [MOBILE : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/4 v15, 0x1

    const/16 v16, 0x0

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->getSBInterfaceDirect(II)Ljava/lang/String;
    invoke-static/range {v14 .. v16}, Lcom/samsung/smartbonding/SmartBondingService;->access$5000(Lcom/samsung/smartbonding/SmartBondingService;II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    :cond_10
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$4600()Z

    move-result v13

    if-eqz v13, :cond_11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SmartBondingReceiver: getSBInterface (Prefer IPv6) [MOBILE : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/4 v15, 0x1

    const/16 v16, 0x1

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->getSBInterfaceDirect(II)Ljava/lang/String;
    invoke-static/range {v14 .. v16}, Lcom/samsung/smartbonding/SmartBondingService;->access$5000(Lcom/samsung/smartbonding/SmartBondingService;II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v13}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v14

    const/4 v15, 0x7

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v13}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v14

    const/16 v15, 0x8

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_12
    const-string v13, "android.intent.action.SIOP_LEVEL_CHANGED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    const-string v13, "dual_recording_to_single"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string v13, "flash_led_disable"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v13, "camera_recording_disable"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string/jumbo v13, "smart_bonding_disable"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$4600()Z

    move-result v13

    if-eqz v13, :cond_13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "get android.intent.action.SIOP_LEVEL_CHANGED:: dual_recording_to_single = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", flash_led_disable = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", camera_recording_disable = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", smart_bonding_disable = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    monitor-enter v14

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #setter for: Lcom/samsung/smartbonding/SmartBondingService;->mDisableBySIOP:Z
    invoke-static {v13, v2}, Lcom/samsung/smartbonding/SmartBondingService;->access$602(Lcom/samsung/smartbonding/SmartBondingService;Z)Z

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->getSBUsageEnabled()Z
    invoke-static {v13}, Lcom/samsung/smartbonding/SmartBondingService;->access$500(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v13

    if-eqz v13, :cond_14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v13}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v13

    if-eqz v13, :cond_14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v13}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v13

    const/4 v15, 0x4

    invoke-virtual {v13, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const/4 v13, 0x4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iput-object v13, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v13}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/samsung/smartbonding/SmartBondingService;->access$700(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->checkSBEnableCondition()Z
    invoke-static {v15}, Lcom/samsung/smartbonding/SmartBondingService;->access$800(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v15

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->setSBInterfacesEnabled(Z)I
    invoke-static {v13, v15}, Lcom/samsung/smartbonding/SmartBondingService;->access$900(Lcom/samsung/smartbonding/SmartBondingService;Z)I

    monitor-exit v14

    goto/16 :goto_0

    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    :cond_15
    const-string v13, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    const-string v13, "android.intent.extra.user_handle"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string v13, "old_user_id"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const/16 v13, 0x64

    if-lt v10, v13, :cond_16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mPreSBSetting:Z
    invoke-static {v13}, Lcom/samsung/smartbonding/SmartBondingService;->access$4700(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v13

    if-eqz v13, :cond_16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->isAirPlaneMode()Z
    invoke-static {v13}, Lcom/samsung/smartbonding/SmartBondingService;->access$4400(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v13

    if-nez v13, :cond_16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mPreSBSetting:Z
    invoke-static {v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$4700(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v14

    invoke-virtual {v13, v14}, Lcom/samsung/smartbonding/SmartBondingService;->setSBEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/4 v14, 0x0

    #setter for: Lcom/samsung/smartbonding/SmartBondingService;->mPreSBSetting:Z
    invoke-static {v13, v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$4702(Lcom/samsung/smartbonding/SmartBondingService;Z)Z

    :cond_16
    const/16 v13, 0x64

    if-lt v8, v13, :cond_17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v13}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v13

    if-eqz v13, :cond_17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v14}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v14

    #setter for: Lcom/samsung/smartbonding/SmartBondingService;->mPreSBSetting:Z
    invoke-static {v13, v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$4702(Lcom/samsung/smartbonding/SmartBondingService;Z)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/samsung/smartbonding/SmartBondingService;->setSBEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/4 v14, 0x1

    #setter for: Lcom/samsung/smartbonding/SmartBondingService;->mIsNoneSettingMode:Z
    invoke-static {v13, v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$1602(Lcom/samsung/smartbonding/SmartBondingService;Z)Z

    :cond_17
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$4600()Z

    move-result v13

    if-eqz v13, :cond_18

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "switched user new "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    :cond_18
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$4600()Z

    move-result v13

    if-eqz v13, :cond_19

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "switched user old "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    :cond_19
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #setter for: Lcom/samsung/smartbonding/SmartBondingService;->mCurrentUserId:I
    invoke-static {v13, v8}, Lcom/samsung/smartbonding/SmartBondingService;->access$4502(Lcom/samsung/smartbonding/SmartBondingService;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v13}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v14

    const/4 v15, 0x7

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_1a
    const-string v13, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v13}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v14

    const/16 v15, 0xe

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
