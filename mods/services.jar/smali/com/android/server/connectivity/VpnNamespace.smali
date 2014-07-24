.class final Lcom/android/server/connectivity/VpnNamespace;
.super Ljava/lang/Object;
.source "VpnNamespace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/VpnNamespace$1;,
        Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;,
        Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;,
        Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;,
        Lcom/android/server/connectivity/VpnNamespace$Cmd;,
        Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field private static final VPNNS_SVR_ADDR:Ljava/lang/String; = "mvpvpn-ns"


# instance fields
.field private nsIfIdx:Ljava/lang/Integer;

.field private nsMon:Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;

.field private nsPid:I

.field private nsVmId:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sys"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/connectivity/VpnNamespace;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/VpnNamespace;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/VpnNamespace;->checkIf(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized checkIf(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v1, -0x1

    :try_start_0
    new-instance v0, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;

    const-string v2, "mvpvpn-ns"

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;-><init>(Lcom/android/server/connectivity/VpnNamespace;Ljava/lang/String;Lcom/android/server/connectivity/VpnNamespace$1;)V

    sget-object v2, Lcom/android/server/connectivity/VpnNamespace$Cmd;->GETIFIDX:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    invoke-virtual {v0, v2, p1}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->execute(Lcom/android/server/connectivity/VpnNamespace$Cmd;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->destroy()V

    iget-object v2, p0, Lcom/android/server/connectivity/VpnNamespace;->nsIfIdx:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    monitor-exit p0

    return v2

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private setAddresses(Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;ILcom/android/internal/net/VpnConfig;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v6, p3, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    if-eqz v6, :cond_0

    iget-object v6, p3, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "at least one network address must be provided for the tunnel"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    const/4 v1, 0x0

    iget-object v6, p3, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    :try_start_0
    invoke-static {p2, v4}, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->fromLinkAddress(ILandroid/net/LinkAddress;)Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;

    move-result-object v0

    sget-object v6, Lcom/android/server/connectivity/VpnNamespace$Cmd;->SETIFCONFIG:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    invoke-virtual {p1, v6, v0}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->execute(Lcom/android/server/connectivity/VpnNamespace$Cmd;Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-nez v5, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v6, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "I/O error: couldn\'t set interface address to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v2

    sget-object v6, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Malformed address string "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    if-gtz v1, :cond_4

    sget-object v6, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "could set none of the "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p3, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/io/IOException;

    const-string v7, "none of the proveded network addresses could be set"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4
    return-void
.end method

.method private setRoutes(Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;ILcom/android/internal/net/VpnConfig;)V
    .locals 8

    iget-object v5, p3, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p3, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    sget-object v5, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    const-string v6, "no routes configured"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-object v5, p3, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    :try_start_0
    invoke-virtual {v4}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {p2, v3}, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->fromLinkAddress(ILandroid/net/LinkAddress;)Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;

    move-result-object v0

    sget-object v5, Lcom/android/server/connectivity/VpnNamespace$Cmd;->SETROUTE:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    invoke-virtual {p1, v5, v0}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->execute(Lcom/android/server/connectivity/VpnNamespace$Cmd;Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v5, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "I/O error: couldn\'t set route to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v5, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Malformed route address "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/VpnNamespace;->nsMon:Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/VpnNamespace;->nsMon:Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;

    invoke-virtual {v0}, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;->quit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/VpnNamespace;->nsMon:Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized establish(Ljava/lang/String;Lcom/android/internal/net/VpnConfig;Lcom/android/server/connectivity/Vpn;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;

    const-string v1, "mvpvpn-ns"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;-><init>(Lcom/android/server/connectivity/VpnNamespace;Ljava/lang/String;Lcom/android/server/connectivity/VpnNamespace$1;)V

    sget-object v1, Lcom/android/server/connectivity/VpnNamespace$Cmd;->PUSHIF:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->execute(Lcom/android/server/connectivity/VpnNamespace$Cmd;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/connectivity/VpnNamespace$Cmd;->GETIFIDX:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->execute(Lcom/android/server/connectivity/VpnNamespace$Cmd;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/android/server/connectivity/VpnNamespace;->nsIfIdx:Ljava/lang/Integer;

    sget-object v1, Lcom/android/server/connectivity/VpnNamespace$Cmd;->GETVMID:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->execute(Lcom/android/server/connectivity/VpnNamespace$Cmd;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/android/server/connectivity/VpnNamespace;->nsVmId:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/android/server/connectivity/VpnNamespace;->nsIfIdx:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/connectivity/VpnNamespace;->setAddresses(Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;ILcom/android/internal/net/VpnConfig;)V

    iget-object v1, p0, Lcom/android/server/connectivity/VpnNamespace;->nsIfIdx:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/connectivity/VpnNamespace;->setRoutes(Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;ILcom/android/internal/net/VpnConfig;)V

    invoke-virtual {v0}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->destroy()V

    iget-object v1, p0, Lcom/android/server/connectivity/VpnNamespace;->nsMon:Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;-><init>(Lcom/android/server/connectivity/VpnNamespace;Ljava/lang/String;Lcom/android/server/connectivity/Vpn;)V

    iput-object v1, p0, Lcom/android/server/connectivity/VpnNamespace;->nsMon:Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;

    iget-object v1, p0, Lcom/android/server/connectivity/VpnNamespace;->nsMon:Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/VpnNamespace;->nsMon:Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;

    invoke-virtual {v1}, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;->restart()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized removeInterface()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;

    const-string v1, "mvpvpn-ns"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;-><init>(Lcom/android/server/connectivity/VpnNamespace;Ljava/lang/String;Lcom/android/server/connectivity/VpnNamespace$1;)V

    sget-object v1, Lcom/android/server/connectivity/VpnNamespace$Cmd;->REMOVEIF:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    iget-object v2, p0, Lcom/android/server/connectivity/VpnNamespace;->nsIfIdx:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->execute(Lcom/android/server/connectivity/VpnNamespace$Cmd;I)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/VpnNamespace;->nsIfIdx:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was removed from ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
