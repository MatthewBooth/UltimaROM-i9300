.class Lcom/android/server/display/IpRemoteDisplayController$6;
.super Ljava/lang/Object;
.source "IpRemoteDisplayController.java"

# interfaces
.implements Landroid/media/RemoteDisplay$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/IpRemoteDisplayController;->enableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/IpRemoteDisplayController;

.field final synthetic val$devicetype:I


# direct methods
.method constructor <init>(Lcom/android/server/display/IpRemoteDisplayController;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    iput p2, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->val$devicetype:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayConnected(Landroid/view/Surface;IIII)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #getter for: Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$800(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "IpRemoteDisplayController"

    const-string v2, "onDisplayConnected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #setter for: Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayConnected:Z
    invoke-static {v0, v7}, Lcom/android/server/display/IpRemoteDisplayController;->access$102(Lcom/android/server/display/IpRemoteDisplayController;Z)Z

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #getter for: Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$1400(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #getter for: Lcom/android/server/display/IpRemoteDisplayController;->mRtspTimeout:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/server/display/IpRemoteDisplayController;->access$1300(Lcom/android/server/display/IpRemoteDisplayController;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #getter for: Lcom/android/server/display/IpRemoteDisplayController;->mWfdUibcManager:Landroid/media/WFDUibcManager;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$1500(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/media/WFDUibcManager;

    move-result-object v0

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {v0, v2, v3}, Landroid/media/WFDUibcManager;->setUIBCNegotiagedResolution(FF)V

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #getter for: Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v2}, Lcom/android/server/display/IpRemoteDisplayController;->access$800(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    #calls: Lcom/android/server/display/IpRemoteDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;
    invoke-static {v0, v2}, Lcom/android/server/display/IpRemoteDisplayController;->access$1600(Lcom/android/server/display/IpRemoteDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    iget v6, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->val$devicetype:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    #calls: Lcom/android/server/display/IpRemoteDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/display/IpRemoteDisplayController;->access$1700(Lcom/android/server/display/IpRemoteDisplayController;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V

    iget v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->val$devicetype:I

    if-ne v0, v8, :cond_0

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #getter for: Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$000(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "wifi_display_on"

    invoke-static {v0, v2, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #getter for: Lcom/android/server/display/IpRemoteDisplayController;->mWifiDisplayOnSetting:Z
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$300(Lcom/android/server/display/IpRemoteDisplayController;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #setter for: Lcom/android/server/display/IpRemoteDisplayController;->mWifiDisplayOnSetting:Z
    invoke-static {v0, v7}, Lcom/android/server/display/IpRemoteDisplayController;->access$302(Lcom/android/server/display/IpRemoteDisplayController;Z)Z

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #calls: Lcom/android/server/display/IpRemoteDisplayController;->reportFeatureState()V
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$400(Lcom/android/server/display/IpRemoteDisplayController;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    const/4 v2, 0x4

    #calls: Lcom/android/server/display/IpRemoteDisplayController;->sendDisplayEventToExtendedListener(II)V
    invoke-static {v0, v8, v2}, Lcom/android/server/display/IpRemoteDisplayController;->access$1200(Lcom/android/server/display/IpRemoteDisplayController;II)V

    :cond_1
    return-void
.end method

.method public onDisplayDisconnected()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #getter for: Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$800(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #getter for: Lcom/android/server/display/IpRemoteDisplayController;->mWfdUibcManager:Landroid/media/WFDUibcManager;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$1500(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/media/WFDUibcManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/WFDUibcManager;->stop()Z

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #getter for: Lcom/android/server/display/IpRemoteDisplayController;->mWfdUibcManager:Landroid/media/WFDUibcManager;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$1500(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/media/WFDUibcManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/media/WFDUibcManager;->setCoupleShotMode(Z)V

    const-string v0, "IpRemoteDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closed RTSP connection with Wifi display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #getter for: Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v2}, Lcom/android/server/display/IpRemoteDisplayController;->access$800(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #getter for: Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$1400(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #getter for: Lcom/android/server/display/IpRemoteDisplayController;->mRtspTimeout:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/display/IpRemoteDisplayController;->access$1300(Lcom/android/server/display/IpRemoteDisplayController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #getter for: Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$500(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #getter for: Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$500(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->setSourceState(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0, v1}, Lcom/android/server/display/IpRemoteDisplayController;->access$802(Lcom/android/server/display/IpRemoteDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    :cond_1
    return-void
.end method

.method public onDisplayError(I)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #getter for: Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$800(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "IpRemoteDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lost RTSP connection with Wifi display due to error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #getter for: Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v2}, Lcom/android/server/display/IpRemoteDisplayController;->access$800(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #getter for: Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$1400(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #getter for: Lcom/android/server/display/IpRemoteDisplayController;->mRtspTimeout:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/display/IpRemoteDisplayController;->access$1300(Lcom/android/server/display/IpRemoteDisplayController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->val$devicetype:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #getter for: Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayConnected:Z
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$100(Lcom/android/server/display/IpRemoteDisplayController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    const v1, 0x2207b

    #calls: Lcom/android/server/display/IpRemoteDisplayController;->requestPopup(I)V
    invoke-static {v0, v1}, Lcom/android/server/display/IpRemoteDisplayController;->access$200(Lcom/android/server/display/IpRemoteDisplayController;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #calls: Lcom/android/server/display/IpRemoteDisplayController;->handleConnectionFailure(Z)V
    invoke-static {v0, v3}, Lcom/android/server/display/IpRemoteDisplayController;->access$1800(Lcom/android/server/display/IpRemoteDisplayController;Z)V

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0, v1}, Lcom/android/server/display/IpRemoteDisplayController;->access$802(Lcom/android/server/display/IpRemoteDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->val$devicetype:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #getter for: Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$000(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_display_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #getter for: Lcom/android/server/display/IpRemoteDisplayController;->mWifiDisplayOnSetting:Z
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$300(Lcom/android/server/display/IpRemoteDisplayController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #setter for: Lcom/android/server/display/IpRemoteDisplayController;->mWifiDisplayOnSetting:Z
    invoke-static {v0, v3}, Lcom/android/server/display/IpRemoteDisplayController;->access$302(Lcom/android/server/display/IpRemoteDisplayController;Z)Z

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #calls: Lcom/android/server/display/IpRemoteDisplayController;->reportFeatureState()V
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$400(Lcom/android/server/display/IpRemoteDisplayController;)V

    :cond_1
    return-void
.end method
