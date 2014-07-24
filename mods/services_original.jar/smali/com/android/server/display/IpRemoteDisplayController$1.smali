.class Lcom/android/server/display/IpRemoteDisplayController$1;
.super Landroid/database/ContentObserver;
.source "IpRemoteDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/IpRemoteDisplayController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/IpRemoteDisplayController$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/IpRemoteDisplayController;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/server/display/IpRemoteDisplayController;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController$1;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    iput-object p3, p0, Lcom/android/server/display/IpRemoteDisplayController$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController$1;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #getter for: Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/display/IpRemoteDisplayController;->access$000(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/IpRemoteDisplayController$1;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #getter for: Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/display/IpRemoteDisplayController;->access$000(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/content/Context;

    const-string v4, "display"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController$1;->val$resolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "wifi_display_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v3, "IpRemoteDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onChange() requested turningWifiDisplayOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ActiveDisplayState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ConnectedState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getConnectedState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v3

    if-ne v3, v6, :cond_1

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getConnectedState()I

    move-result v3

    if-ne v3, v6, :cond_1

    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController$1;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #getter for: Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayConnected:Z
    invoke-static {v3}, Lcom/android/server/display/IpRemoteDisplayController;->access$100(Lcom/android/server/display/IpRemoteDisplayController;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController$1;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    const v4, 0x22070

    #calls: Lcom/android/server/display/IpRemoteDisplayController;->requestPopup(I)V
    invoke-static {v3, v4}, Lcom/android/server/display/IpRemoteDisplayController;->access$200(Lcom/android/server/display/IpRemoteDisplayController;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController$1;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #getter for: Lcom/android/server/display/IpRemoteDisplayController;->mWifiDisplayOnSetting:Z
    invoke-static {v3}, Lcom/android/server/display/IpRemoteDisplayController;->access$300(Lcom/android/server/display/IpRemoteDisplayController;)Z

    move-result v3

    if-eq v3, v1, :cond_1

    const-string v3, "IpRemoteDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "change the WIFI_DISPLAY_ON = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController$1;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #setter for: Lcom/android/server/display/IpRemoteDisplayController;->mWifiDisplayOnSetting:Z
    invoke-static {v3, v1}, Lcom/android/server/display/IpRemoteDisplayController;->access$302(Lcom/android/server/display/IpRemoteDisplayController;Z)Z

    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController$1;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #calls: Lcom/android/server/display/IpRemoteDisplayController;->reportFeatureState()V
    invoke-static {v3}, Lcom/android/server/display/IpRemoteDisplayController;->access$400(Lcom/android/server/display/IpRemoteDisplayController;)V

    goto :goto_0
.end method
