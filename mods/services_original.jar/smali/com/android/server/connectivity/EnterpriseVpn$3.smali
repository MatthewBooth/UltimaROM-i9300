.class Lcom/android/server/connectivity/EnterpriseVpn$3;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "EnterpriseVpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/EnterpriseVpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/EnterpriseVpn;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/EnterpriseVpn;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 12

    const/4 v7, 0x1

    const-string v8, "EnterpriseVpn"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Interface removed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    monitor-enter v8

    :try_start_0
    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    #getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/connectivity/EnterpriseVpn;->access$400(Lcom/android/server/connectivity/EnterpriseVpn;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    #calls: Lcom/android/server/connectivity/EnterpriseVpn;->jniCheck(Ljava/lang/String;)I
    invoke-static {v9, p1}, Lcom/android/server/connectivity/EnterpriseVpn;->access$500(Lcom/android/server/connectivity/EnterpriseVpn;Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v4

    :try_start_1
    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    #getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mVpnUsers:Landroid/util/SparseBooleanArray;
    invoke-static {v9}, Lcom/android/server/connectivity/EnterpriseVpn;->access$600(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/util/SparseBooleanArray;

    move-result-object v9

    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    #getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v9}, Lcom/android/server/connectivity/EnterpriseVpn;->access$700(Lcom/android/server/connectivity/EnterpriseVpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v9

    iget-object v9, v9, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    #getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v9}, Lcom/android/server/connectivity/EnterpriseVpn;->access$700(Lcom/android/server/connectivity/EnterpriseVpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v9

    iget-object v9, v9, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_1

    move v1, v7

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    #getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mVpnUsers:Landroid/util/SparseBooleanArray;
    invoke-static {v9}, Lcom/android/server/connectivity/EnterpriseVpn;->access$600(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/util/SparseBooleanArray;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    #getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z
    invoke-static {v9}, Lcom/android/server/connectivity/EnterpriseVpn;->access$800(Lcom/android/server/connectivity/EnterpriseVpn;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-ne v9, v7, :cond_0

    :try_start_2
    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    #getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;
    invoke-static {v9}, Lcom/android/server/connectivity/EnterpriseVpn;->access$900(Lcom/android/server/connectivity/EnterpriseVpn;)Lcom/android/server/ConnectivityService$VpnCallback;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    #getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/connectivity/EnterpriseVpn;->access$400(Lcom/android/server/connectivity/EnterpriseVpn;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v6, v1}, Lcom/android/server/ConnectivityService$VpnCallback;->clearUserForwarding(Ljava/lang/String;IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v7

    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v7

    :cond_2
    :try_start_5
    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    const/4 v10, 0x0

    #setter for: Lcom/android/server/connectivity/EnterpriseVpn;->mVpnUsers:Landroid/util/SparseBooleanArray;
    invoke-static {v9, v10}, Lcom/android/server/connectivity/EnterpriseVpn;->access$602(Lcom/android/server/connectivity/EnterpriseVpn;Landroid/util/SparseBooleanArray;)Landroid/util/SparseBooleanArray;

    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    #getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z
    invoke-static {v9}, Lcom/android/server/connectivity/EnterpriseVpn;->access$800(Lcom/android/server/connectivity/EnterpriseVpn;)Z

    move-result v9

    if-ne v9, v7, :cond_3

    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    #getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;
    invoke-static {v9}, Lcom/android/server/connectivity/EnterpriseVpn;->access$900(Lcom/android/server/connectivity/EnterpriseVpn;)Lcom/android/server/ConnectivityService$VpnCallback;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    #getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/connectivity/EnterpriseVpn;->access$400(Lcom/android/server/connectivity/EnterpriseVpn;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/ConnectivityService$VpnCallback;->clearMarkedForwarding(Ljava/lang/String;)V

    :cond_3
    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    #getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;
    invoke-static {v9}, Lcom/android/server/connectivity/EnterpriseVpn;->access$900(Lcom/android/server/connectivity/EnterpriseVpn;)Lcom/android/server/ConnectivityService$VpnCallback;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/ConnectivityService$VpnCallback;->restore()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v9, "EnterpriseVpn"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Setting interface to null : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    const/4 v10, 0x0

    #setter for: Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/android/server/connectivity/EnterpriseVpn;->access$402(Lcom/android/server/connectivity/EnterpriseVpn;Ljava/lang/String;)Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    #getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;
    invoke-static {v9}, Lcom/android/server/connectivity/EnterpriseVpn;->access$1000(Lcom/android/server/connectivity/EnterpriseVpn;)Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    move-result-object v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    #getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/connectivity/EnterpriseVpn;->access$1100(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    #getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;
    invoke-static {v10}, Lcom/android/server/connectivity/EnterpriseVpn;->access$1000(Lcom/android/server/connectivity/EnterpriseVpn;)Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    const/4 v10, 0x0

    #setter for: Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;
    invoke-static {v9, v10}, Lcom/android/server/connectivity/EnterpriseVpn;->access$1002(Lcom/android/server/connectivity/EnterpriseVpn;Lcom/android/server/connectivity/EnterpriseVpn$Connection;)Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    const-string v9, "EnterpriseVpn"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "VPN State Callback : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    const/4 v10, 0x2

    #calls: Lcom/android/server/connectivity/EnterpriseVpn;->sendInterfaceStateToKnoxVpn(I)V
    invoke-static {v9, v10}, Lcom/android/server/connectivity/EnterpriseVpn;->access$1200(Lcom/android/server/connectivity/EnterpriseVpn;I)V

    :cond_4
    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    #getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z
    invoke-static {v9}, Lcom/android/server/connectivity/EnterpriseVpn;->access$800(Lcom/android/server/connectivity/EnterpriseVpn;)Z

    move-result v9

    if-ne v9, v7, :cond_5

    const-string v7, "EnterpriseVpn"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mRouteInfo value is : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    #getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z
    invoke-static {v10}, Lcom/android/server/connectivity/EnterpriseVpn;->access$800(Lcom/android/server/connectivity/EnterpriseVpn;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/Thread;

    new-instance v9, Lcom/android/server/connectivity/EnterpriseVpn$3$1;

    invoke-direct {v9, p0}, Lcom/android/server/connectivity/EnterpriseVpn$3$1;-><init>(Lcom/android/server/connectivity/EnterpriseVpn$3;)V

    invoke-direct {v7, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    :cond_5
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-void
.end method
