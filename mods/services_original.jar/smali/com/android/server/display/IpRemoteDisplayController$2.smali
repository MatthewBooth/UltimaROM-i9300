.class Lcom/android/server/display/IpRemoteDisplayController$2;
.super Landroid/content/BroadcastReceiver;
.source "IpRemoteDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/IpRemoteDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/IpRemoteDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/IpRemoteDisplayController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController$2;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "IpRemoteDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intent received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController$2;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #getter for: Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;
    invoke-static {v3}, Lcom/android/server/display/IpRemoteDisplayController;->access$500(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "IpRemoteDisplayController"

    const-string v4, "Bridge Server is not available"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "android.intent.action.WIFI_DISPLAY_SINK_STATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "state"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController$2;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #getter for: Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;
    invoke-static {v3}, Lcom/android/server/display/IpRemoteDisplayController;->access$500(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->setSinkState(I)V

    goto :goto_0

    :cond_2
    const-string v3, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "state"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController$2;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #getter for: Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;
    invoke-static {v3}, Lcom/android/server/display/IpRemoteDisplayController;->access$500(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->setSourceState(I)V

    goto :goto_0

    :cond_3
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController$2;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #getter for: Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;
    invoke-static {v3}, Lcom/android/server/display/IpRemoteDisplayController;->access$500(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->setScreenState(I)V

    goto :goto_0

    :cond_4
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController$2;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #getter for: Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;
    invoke-static {v3}, Lcom/android/server/display/IpRemoteDisplayController;->access$500(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->setScreenState(I)V

    goto :goto_0

    :cond_5
    const-string v3, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController$2;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    const-string/jumbo v4, "state"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    #setter for: Lcom/android/server/display/IpRemoteDisplayController;->mHDMIConnected:Z
    invoke-static {v3, v4}, Lcom/android/server/display/IpRemoteDisplayController;->access$602(Lcom/android/server/display/IpRemoteDisplayController;Z)Z

    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController$2;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #getter for: Lcom/android/server/display/IpRemoteDisplayController;->mHDMIConnected:Z
    invoke-static {v3}, Lcom/android/server/display/IpRemoteDisplayController;->access$600(Lcom/android/server/display/IpRemoteDisplayController;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController$2;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #getter for: Lcom/android/server/display/IpRemoteDisplayController;->mWifiDisplayOnSetting:Z
    invoke-static {v3}, Lcom/android/server/display/IpRemoteDisplayController;->access$300(Lcom/android/server/display/IpRemoteDisplayController;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "IpRemoteDisplayController"

    const-string v4, "HDMI Connected! we disconnect WFD!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController$2;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #calls: Lcom/android/server/display/IpRemoteDisplayController;->disconnect()V
    invoke-static {v3}, Lcom/android/server/display/IpRemoteDisplayController;->access$700(Lcom/android/server/display/IpRemoteDisplayController;)V

    :cond_6
    const-string v3, "IpRemoteDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received ACTION_HDMI_PLUGGED : mHDMIConnected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/IpRemoteDisplayController$2;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #getter for: Lcom/android/server/display/IpRemoteDisplayController;->mHDMIConnected:Z
    invoke-static {v5}, Lcom/android/server/display/IpRemoteDisplayController;->access$600(Lcom/android/server/display/IpRemoteDisplayController;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
