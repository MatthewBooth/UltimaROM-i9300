.class Lcom/android/server/wifi/WifiTrafficPoller$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiTrafficPoller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiTrafficPoller;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiService;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiTrafficPoller;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiTrafficPoller;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/16 v5, 0xa

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v4, "android.net.wifi.NETWORK_OXYGEN_STATE_CHANGE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    #setter for: Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4, v1}, Lcom/android/server/wifi/WifiTrafficPoller;->access$102(Lcom/android/server/wifi/WifiTrafficPoller;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    sget-object v1, Lcom/android/server/wifi/WifiTrafficPoller$2;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    iget-object v4, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    #getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4}, Lcom/android/server/wifi/WifiTrafficPoller;->access$100(Lcom/android/server/wifi/WifiTrafficPoller;)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    #getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Lcom/android/server/wifi/WifiTrafficPoller;->access$100(Lcom/android/server/wifi/WifiTrafficPoller;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v5, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, v4, Lcom/android/server/wifi/WifiTrafficPoller;->mNeedBooster:Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiTrafficPoller;->evaluateTrafficStatsPolling()V

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    #getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/android/server/wifi/WifiTrafficPoller;->access$200(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    #getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/android/server/wifi/WifiTrafficPoller;->access$200(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v4, "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    const-string v4, "NUM"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    #setter for: Lcom/android/server/wifi/WifiTrafficPoller;->mHotspotClientNum:I
    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiTrafficPoller;->access$302(Lcom/android/server/wifi/WifiTrafficPoller;I)I

    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    #getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mHotspotClientNum:I
    invoke-static {v1}, Lcom/android/server/wifi/WifiTrafficPoller;->access$300(Lcom/android/server/wifi/WifiTrafficPoller;)I

    move-result v1

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    iget-boolean v1, v1, Lcom/android/server/wifi/WifiTrafficPoller;->mNeedBooster:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    iput-boolean v2, v1, Lcom/android/server/wifi/WifiTrafficPoller;->mNeedBooster:Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiTrafficPoller;->evaluateTrafficStatsPolling()V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    iget-boolean v1, v1, Lcom/android/server/wifi/WifiTrafficPoller;->mNeedBooster:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    iput-boolean v3, v1, Lcom/android/server/wifi/WifiTrafficPoller;->mNeedBooster:Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiTrafficPoller;->evaluateTrafficStatsPolling()V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_8

    sget v1, Lcom/android/server/wifi/WifiTrafficPoller;->mBoosterFLAG:I

    or-int/lit8 v1, v1, 0x2

    sput v1, Lcom/android/server/wifi/WifiTrafficPoller;->mBoosterFLAG:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiTrafficPoller;->determineBoosterMode()V

    goto/16 :goto_0

    :cond_8
    if-ne v0, v5, :cond_1

    sget v1, Lcom/android/server/wifi/WifiTrafficPoller;->mBoosterFLAG:I

    and-int/lit8 v1, v1, -0x3

    sput v1, Lcom/android/server/wifi/WifiTrafficPoller;->mBoosterFLAG:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiTrafficPoller;->determineBoosterMode()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
