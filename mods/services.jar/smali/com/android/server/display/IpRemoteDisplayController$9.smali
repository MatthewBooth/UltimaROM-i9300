.class Lcom/android/server/display/IpRemoteDisplayController$9;
.super Ljava/lang/Object;
.source "IpRemoteDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/IpRemoteDisplayController;->enableWifiDisplay(ILjava/net/InetAddress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/IpRemoteDisplayController;

.field final synthetic val$addr:Ljava/net/InetAddress;

.field final synthetic val$reqDevType:I


# direct methods
.method constructor <init>(Lcom/android/server/display/IpRemoteDisplayController;Ljava/net/InetAddress;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    iput-object p2, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->val$addr:Ljava/net/InetAddress;

    iput p3, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->val$reqDevType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->val$addr:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    const-string v3, "7236"

    iget v4, p0, Lcom/android/server/display/IpRemoteDisplayController$9;->val$reqDevType:I

    const/4 v5, 0x0

    #calls: Lcom/android/server/display/IpRemoteDisplayController;->enableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/display/IpRemoteDisplayController;->access$900(Lcom/android/server/display/IpRemoteDisplayController;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "IpRemoteDisplayController"

    const-string v2, "Failed to enable WifiDisplay"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
