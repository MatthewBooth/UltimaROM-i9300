.class Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
.super Landroid/os/Handler;
.source "SmartBondingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/smartbonding/SmartBondingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartBondingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/smartbonding/SmartBondingService;


# direct methods
.method public constructor <init>(Lcom/samsung/smartbonding/SmartBondingService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    packed-switch v12, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v12

    if-eqz v12, :cond_1

    const-string v12, "EVENT_ENABLE_SB_INTERFACES called"

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    monitor-enter v13

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->checkSiopToastCondition()Z
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$200(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v12

    const/4 v14, 0x4

    invoke-virtual {v12, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mWifiConnected:Z
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$400(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v12, 0x4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->getSBUsageEnabled()Z
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$500(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v12

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mDisableBySIOP:Z
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$600(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v12

    if-eqz v12, :cond_3

    const-string v12, "mDisableBySIOP is true so that convert sb state as idle"

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$700(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v12

    const/4 v14, 0x7

    invoke-virtual {v12, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->checkSBEnableCondition()Z
    invoke-static {v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$800(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v14

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->setSBInterfacesEnabled(Z)I
    invoke-static {v12, v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$900(Lcom/samsung/smartbonding/SmartBondingService;Z)I

    monitor-exit v13

    goto/16 :goto_0

    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    :cond_5
    const/4 v12, 0x5

    :try_start_1
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v6, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    monitor-enter v13

    :try_start_2
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v12

    if-eqz v12, :cond_6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "EVENT_BOOT_COMPLETED called / enable : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v14}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v12}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v12

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->getTrafficMonitorType()I
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$1000(Lcom/samsung/smartbonding/SmartBondingService;)I

    move-result v12

    const/4 v14, 0x2

    if-ne v12, v14, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->initSpeedBarRes()V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$1100(Lcom/samsung/smartbonding/SmartBondingService;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$700(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$1200(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBDataStatistics:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$1300(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v12

    const/4 v14, 0x2

    invoke-virtual {v12, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_2
    monitor-exit v13

    goto/16 :goto_0

    :catchall_1
    move-exception v12

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v12

    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->clearSpeedBarRes()V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$1400(Lcom/samsung/smartbonding/SmartBondingService;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    monitor-enter v13

    :try_start_4
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v12

    if-eqz v12, :cond_9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "EVENT_ENABLE_SB called / enable : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v14}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$700(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$1200(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBDataStatistics:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$1300(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v12}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v12

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->getTrafficMonitorType()I
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$1000(Lcom/samsung/smartbonding/SmartBondingService;)I

    move-result v12

    const/4 v14, 0x2

    if-ne v12, v14, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->initSpeedBarRes()V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$1100(Lcom/samsung/smartbonding/SmartBondingService;)V

    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v12}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v12

    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$1500(Lcom/samsung/smartbonding/SmartBondingService;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$1500(Lcom/samsung/smartbonding/SmartBondingService;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v12

    if-nez v12, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mIsNoneSettingMode:Z
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$1600(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v12

    if-nez v12, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v12

    const/4 v14, 0x4

    invoke-virtual {v12, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    const/4 v12, 0x7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$1500(Lcom/samsung/smartbonding/SmartBondingService;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v12}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v12

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->getMobileDataEnabled()Z
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$1700(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v12

    if-nez v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mIsNoneSettingMode:Z
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$1600(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v12

    if-nez v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v12

    const/4 v14, 0x4

    invoke-virtual {v12, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const/16 v12, 0x8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/4 v14, 0x1

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->setMobileDataEnabled(Z)V
    invoke-static {v12, v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$1800(Lcom/samsung/smartbonding/SmartBondingService;Z)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v12}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v12

    if-eqz v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/4 v14, 0x0

    #setter for: Lcom/samsung/smartbonding/SmartBondingService;->mIsNoneSettingMode:Z
    invoke-static {v12, v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$1602(Lcom/samsung/smartbonding/SmartBondingService;Z)Z

    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v12

    const/4 v14, 0x2

    invoke-virtual {v12, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v13

    goto/16 :goto_0

    :catchall_2
    move-exception v12

    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v12

    :cond_e
    :try_start_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->clearSpeedBarRes()V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$1400(Lcom/samsung/smartbonding/SmartBondingService;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_3

    :pswitch_3
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v12

    if-eqz v12, :cond_f

    const-string v12, "EVENT_MOBILE_CONNECTION_TURN_OFF_WITH_DELAYED"

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->turnOffMobileConnection()Z
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$1900(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v12

    const/4 v13, 0x7

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    monitor-enter v13

    :try_start_6
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v12

    if-eqz v12, :cond_10

    const-string v12, "EVENT_MOBILE_CONNECTION_RENEW called"

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->checkRemovedProcess()Z
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2000(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v12

    if-eqz v12, :cond_12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->getSBUsageEnabled()Z
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$500(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v12

    if-nez v12, :cond_12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->checkSBEnableCondition()Z
    invoke-static {v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$800(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v14

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->setSBInterfacesEnabled(Z)I
    invoke-static {v12, v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$900(Lcom/samsung/smartbonding/SmartBondingService;Z)I

    :cond_11
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v12

    const/4 v14, 0x7

    invoke-virtual {v12, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v13

    goto/16 :goto_0

    :catchall_3
    move-exception v12

    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v12

    :cond_12
    :try_start_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v12}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterfacesEnabled()Z

    move-result v12

    if-eqz v12, :cond_11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->turnOnMobileConnection()Z
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2100(Lcom/samsung/smartbonding/SmartBondingService;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    monitor-enter v13

    :try_start_8
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v12

    if-eqz v12, :cond_13

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "EVENT_UPDATE_SB_STATE called / mDisableBySIOP "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mDisableBySIOP:Z
    invoke-static {v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$600(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->checkSBWorkingCondition()Z
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2200(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v12

    if-eqz v12, :cond_17

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2300(Lcom/samsung/smartbonding/SmartBondingService;)I

    move-result v12

    const/4 v14, 0x3

    if-eq v12, v14, :cond_16

    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v12

    if-eqz v12, :cond_14

    const-string v12, "sb state is on working"

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->checkTrafficMonitorCondition()Z
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2400(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v12

    if-eqz v12, :cond_15

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->startTrafficMonitor()V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2500(Lcom/samsung/smartbonding/SmartBondingService;)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/4 v14, 0x3

    #setter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I
    invoke-static {v12, v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$2302(Lcom/samsung/smartbonding/SmartBondingService;I)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->sendSBStartIntent()V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2600(Lcom/samsung/smartbonding/SmartBondingService;)V

    :cond_16
    :goto_5
    monitor-exit v13

    goto/16 :goto_0

    :catchall_4
    move-exception v12

    monitor-exit v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v12

    :cond_17
    :try_start_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->checkSBEnableCondition()Z
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$800(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v12

    if-eqz v12, :cond_1a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2300(Lcom/samsung/smartbonding/SmartBondingService;)I

    move-result v12

    const/4 v14, 0x2

    if-eq v12, v14, :cond_16

    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v12

    if-eqz v12, :cond_18

    const-string v12, "sb state is on enabled"

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    :cond_18
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->checkEnableToastCondition()Z
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2700(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v12

    if-eqz v12, :cond_19

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2300(Lcom/samsung/smartbonding/SmartBondingService;)I

    move-result v12

    const/4 v14, 0x3

    if-eq v12, v14, :cond_19

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v12

    const/4 v14, 0x4

    invoke-virtual {v12, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v12

    invoke-virtual {v12, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_19
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->stopTrafficMonitor()V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2800(Lcom/samsung/smartbonding/SmartBondingService;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->sendSBStopIntent()V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2900(Lcom/samsung/smartbonding/SmartBondingService;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/4 v14, 0x2

    #setter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I
    invoke-static {v12, v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$2302(Lcom/samsung/smartbonding/SmartBondingService;I)I

    goto :goto_5

    :cond_1a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v12}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v12

    if-eqz v12, :cond_1c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2300(Lcom/samsung/smartbonding/SmartBondingService;)I

    move-result v12

    const/4 v14, 0x1

    if-eq v12, v14, :cond_16

    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v12

    if-eqz v12, :cond_1b

    const-string v12, "sb state is on idle"

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    :cond_1b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->stopTrafficMonitor()V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2800(Lcom/samsung/smartbonding/SmartBondingService;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->sendSBStopIntent()V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2900(Lcom/samsung/smartbonding/SmartBondingService;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/4 v14, 0x1

    #setter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I
    invoke-static {v12, v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$2302(Lcom/samsung/smartbonding/SmartBondingService;I)I

    goto/16 :goto_5

    :cond_1c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2300(Lcom/samsung/smartbonding/SmartBondingService;)I

    move-result v12

    if-eqz v12, :cond_16

    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v12

    if-eqz v12, :cond_1d

    const-string v12, "sb state is on none"

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    :cond_1d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->stopTrafficMonitor()V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2800(Lcom/samsung/smartbonding/SmartBondingService;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->sendSBStopIntent()V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2900(Lcom/samsung/smartbonding/SmartBondingService;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/4 v14, 0x0

    #setter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I
    invoke-static {v12, v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$2302(Lcom/samsung/smartbonding/SmartBondingService;I)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto/16 :goto_5

    :pswitch_6
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v4, ""

    const/4 v9, 0x1

    const/4 v12, 0x2

    if-ne v8, v12, :cond_1e

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10407db

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :cond_1e
    const/4 v12, 0x3

    if-ne v8, v12, :cond_1f

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10407dc

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :cond_1f
    const/4 v12, 0x1

    if-ne v8, v12, :cond_20

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10407d9

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v9, 0x0

    :cond_20
    const/4 v12, 0x4

    if-ne v8, v12, :cond_21

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10407df

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :cond_21
    const/4 v12, 0x5

    if-ne v8, v12, :cond_22

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10407e0

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :cond_22
    const/4 v12, 0x6

    if-ne v8, v12, :cond_23

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10407da

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :cond_23
    const/4 v12, 0x7

    if-ne v8, v12, :cond_24

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10407dd

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :cond_24
    const/16 v12, 0x8

    if-ne v8, v12, :cond_25

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10407de

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :cond_25
    const/16 v12, 0x9

    if-ne v8, v12, :cond_26

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10407e1

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v9, 0x0

    :cond_26
    const/16 v12, 0xa

    if-ne v8, v12, :cond_27

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10407e2

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v9, 0x0

    :cond_27
    const/16 v12, 0xb

    if-ne v8, v12, :cond_28

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10407e3

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :cond_28
    const/16 v12, 0xc

    if-ne v8, v12, :cond_29

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10407e4

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :cond_29
    const/16 v12, 0xd

    if-ne v8, v12, :cond_2a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/16 v13, 0xd

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->showWarningToast(I)V
    invoke-static {v12, v13}, Lcom/samsung/smartbonding/SmartBondingService;->access$3000(Lcom/samsung/smartbonding/SmartBondingService;I)V

    goto/16 :goto_0

    :cond_2a
    const/16 v12, 0xe

    if-ne v8, v12, :cond_2b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/16 v13, 0xe

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->showWarningToast(I)V
    invoke-static {v12, v13}, Lcom/samsung/smartbonding/SmartBondingService;->access$3000(Lcom/samsung/smartbonding/SmartBondingService;I)V

    goto/16 :goto_0

    :cond_2b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$3100(Lcom/samsung/smartbonding/SmartBondingService;)Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v4, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    monitor-enter v13

    :try_start_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->checkSBWorkingCondition()Z
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2200(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v12

    if-eqz v12, :cond_2c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mTrafficMonitorType:I
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$3200(Lcom/samsung/smartbonding/SmartBondingService;)I

    move-result v12

    if-nez v12, :cond_2d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->showSpeedToast()V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$3300(Lcom/samsung/smartbonding/SmartBondingService;)V

    :cond_2c
    :goto_6
    monitor-exit v13

    goto/16 :goto_0

    :catchall_5
    move-exception v12

    monitor-exit v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v12

    :cond_2d
    :try_start_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mTrafficMonitorType:I
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$3200(Lcom/samsung/smartbonding/SmartBondingService;)I

    move-result v12

    const/4 v14, 0x1

    if-ne v12, v14, :cond_2e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->showTimerToast()V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$3400(Lcom/samsung/smartbonding/SmartBondingService;)V

    goto :goto_6

    :cond_2e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->showSpeedBarToast()V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$3500(Lcom/samsung/smartbonding/SmartBondingService;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_6

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->hideTrafficMonitorToast()V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$3600(Lcom/samsung/smartbonding/SmartBondingService;)V

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    monitor-enter v13

    :try_start_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->checkSBWorkingCondition()Z
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2200(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v12

    if-eqz v12, :cond_30

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mStartTrafficMonitor:Z
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$3700(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v12

    const/4 v14, 0x1

    if-ne v12, v14, :cond_2f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->updateTrafficMonitor()V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$3800(Lcom/samsung/smartbonding/SmartBondingService;)V

    :goto_7
    monitor-exit v13

    goto/16 :goto_0

    :catchall_6
    move-exception v12

    monitor-exit v13
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    throw v12

    :cond_2f
    :try_start_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->stopTrafficMonitor()V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2800(Lcom/samsung/smartbonding/SmartBondingService;)V

    goto :goto_7

    :cond_30
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->stopTrafficMonitor()V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2800(Lcom/samsung/smartbonding/SmartBondingService;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    goto :goto_7

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    monitor-enter v13

    :try_start_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->getNetworkEnabled()Z
    invoke-static {v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$4000(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v14

    #setter for: Lcom/samsung/smartbonding/SmartBondingService;->mNetworkEnabled:Z
    invoke-static {v12, v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$3902(Lcom/samsung/smartbonding/SmartBondingService;Z)Z

    monitor-exit v13

    goto/16 :goto_0

    :catchall_7
    move-exception v12

    monitor-exit v13
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    throw v12

    :pswitch_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    monitor-enter v13

    :try_start_f
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    if-eqz v10, :cond_31

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    iget-object v14, v10, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mHost:Ljava/lang/String;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    invoke-static {v12, v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$4100(Lcom/samsung/smartbonding/SmartBondingService;Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v12

    iput-object v12, v10, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mInetAddresses:[Ljava/net/InetAddress;

    :cond_31
    monitor-exit v13

    goto/16 :goto_0

    :catchall_8
    move-exception v12

    monitor-exit v13
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    throw v12

    :pswitch_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    monitor-enter v13

    :try_start_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mCurrentActivity:Ljava/lang/String;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$4200(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_34

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mCurrentActivity:Ljava/lang/String;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$4200(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v14, "start_poll"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_32

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->getCurrentActivity()Ljava/lang/String;
    invoke-static {v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$4300(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/lang/String;

    move-result-object v14

    #setter for: Lcom/samsung/smartbonding/SmartBondingService;->mCurrentActivity:Ljava/lang/String;
    invoke-static {v12, v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$4202(Lcom/samsung/smartbonding/SmartBondingService;Ljava/lang/String;)Ljava/lang/String;

    :cond_32
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mCurrentActivity:Ljava/lang/String;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$4200(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->getCurrentActivity()Ljava/lang/String;
    invoke-static {v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$4300(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_33

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v12

    const/16 v14, 0xa

    invoke-virtual {v12, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v12

    const-wide/16 v14, 0x2710

    invoke-virtual {v12, v4, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_33
    :goto_8
    monitor-exit v13

    goto/16 :goto_0

    :catchall_9
    move-exception v12

    monitor-exit v13
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    throw v12

    :cond_34
    :try_start_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const-string v14, ""

    #setter for: Lcom/samsung/smartbonding/SmartBondingService;->mCurrentActivity:Ljava/lang/String;
    invoke-static {v12, v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$4202(Lcom/samsung/smartbonding/SmartBondingService;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    #getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v14

    const/4 v15, 0x2

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    goto :goto_8

    :pswitch_d
    const-string v3, "/sdcard/log"

    :try_start_12
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mkdir -p "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v12

    if-eqz v12, :cond_35

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setHttpLogEnabled : create log folder : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1

    :cond_35
    :goto_9
    :try_start_13
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "chmod 777 "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v12

    if-eqz v12, :cond_36

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setHttpLogEnabled : make permission log folder : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_2

    :cond_36
    :goto_a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/smartbonding"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :try_start_14
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mkdir -p "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v12

    if-eqz v12, :cond_37

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setHttpLogEnabled : create log folder : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_3

    :cond_37
    :goto_b
    :try_start_15
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "chmod 777 "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v12

    if-eqz v12, :cond_0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setHttpLogEnabled : make permission log folder : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v12, "setHttpLogEnabled : can\'t create folder"

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v12

    if-eqz v12, :cond_35

    const-string v12, "setHttpLogEnabled : can\'t create folder"

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    goto/16 :goto_9

    :catch_2
    move-exception v1

    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v12

    if-eqz v12, :cond_36

    const-string v12, "setHttpLogEnabled : can\'t create folder"

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    goto/16 :goto_a

    :catch_3
    move-exception v1

    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v12

    if-eqz v12, :cond_37

    const-string v12, "setHttpLogEnabled : can\'t create folder"

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    goto :goto_b

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_9
        :pswitch_d
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_3
        :pswitch_1
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
