.class public Lcom/android/server/display/WfdBridgeClient;
.super Lcom/android/server/display/WfdBridgeBase;
.source "WfdBridgeClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final CONNECT_TYPE_CONNECTED:I = 0x1

.field public static final CONNECT_TYPE_CONNECTING:I = 0x1

.field public static final CONNECT_TYPE_INITIALIZED:I = -0x1

.field public static final CONNECT_TYPE_NOT_CONNECTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WfdBridgeClient"


# instance fields
.field private mBridgeConnType:I

.field private mClientPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

.field private mInetAddr:Ljava/net/InetAddress;

.field private mPort:I

.field private mSocket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;ILcom/android/server/display/WfdBridgeBase$BridgeListner;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p3}, Lcom/android/server/display/WfdBridgeBase;-><init>(Lcom/android/server/display/WfdBridgeBase$BridgeListner;)V

    iput-object v2, p0, Lcom/android/server/display/WfdBridgeClient;->mInetAddr:Ljava/net/InetAddress;

    iput-object v2, p0, Lcom/android/server/display/WfdBridgeClient;->mSocket:Ljava/net/Socket;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/WfdBridgeClient;->mPort:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/WfdBridgeClient;->mBridgeConnType:I

    const-string v0, "WfdBridgeClient"

    const-string v1, "Created WFDBridgeClient"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/android/server/display/WfdBridgeClient;->mPort:I

    iput-object p1, p0, Lcom/android/server/display/WfdBridgeClient;->mInetAddr:Ljava/net/InetAddress;

    iput-object v2, p0, Lcom/android/server/display/WfdBridgeClient;->mClientPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/WfdBridgeBase;->mSession:Z

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    invoke-virtual {v0}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->destroy()V

    invoke-virtual {p0}, Lcom/android/server/display/WfdBridgeClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WfdBridgeClient;->mClientPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v0}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->closeSocket()V

    :cond_0
    return-void
.end method

.method public getAddr()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WfdBridgeClient;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WfdBridgeClient;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConnectAddrList()[Ljava/net/InetAddress;
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/display/WfdBridgeClient;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/net/InetAddress;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/display/WfdBridgeClient;->mClientPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v2}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WfdBridgeClient;->mClientPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WfdBridgeClient;->mClientPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v0}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->isSocConnected()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public request(Landroid/net/wifi/p2p/WifiP2pDevice;II)V
    .locals 8

    const-string v3, ""

    packed-switch p3, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WfdBridgeBase;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    const-string v1, "Sink"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/server/display/WfdBridgeBase;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    new-instance v0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    const/16 v2, 0x3e8

    iget-object v4, p0, Lcom/android/server/display/WfdBridgeClient;->mClientPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    move-object v1, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/WfdBridgeBase$WBPMsg;-><init>(Lcom/android/server/display/WfdBridgeBase;ILjava/lang/String;Lcom/android/server/display/WfdBridgeBase$BridgePeer;II)V

    invoke-virtual {v7, v0}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->putMsg(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)I

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    const-string v3, "RVF"

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    const-string v3, "MirrorMouse"

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    const-string v3, "ScreenMirroring"

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WfdBridgeBase;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    const-string v1, "Source"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public run()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/16 v0, 0x19

    :goto_0
    if-lez v0, :cond_1

    iget v2, p0, Lcom/android/server/display/WfdBridgeClient;->mBridgeConnType:I

    if-eq v2, v6, :cond_1

    :try_start_0
    const-string v2, "WfdBridgeClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "try to connect server : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/WfdBridgeClient;->mInetAddr:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/WfdBridgeClient;->mSocket:Ljava/net/Socket;

    iget-object v2, p0, Lcom/android/server/display/WfdBridgeClient;->mSocket:Ljava/net/Socket;

    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lcom/android/server/display/WfdBridgeClient;->mInetAddr:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/WfdBridgeClient;->mPort:I

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0xc8

    invoke-virtual {v2, v3, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    iget-object v2, p0, Lcom/android/server/display/WfdBridgeClient;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "WfdBridgeClient"

    const-string v3, "Connect to server Success!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/display/WfdBridgeClient;->mBridgeConnType:I

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const-string v2, "WfdBridgeClient"

    const-string v3, "Connect Fail to server"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/display/WfdBridgeClient;->mBridgeConnType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "WfdBridgeClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Catch Exception: Connect Fail to server:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v7, p0, Lcom/android/server/display/WfdBridgeClient;->mBridgeConnType:I

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/server/display/WfdBridgeClient;->mBridgeConnType:I

    if-eq v2, v6, :cond_2

    const-string v2, "WfdBridgeClient"

    const-string v3, "Connect Fail to server"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/display/WfdBridgeBase;->mListner:Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    invoke-interface {v2}, Lcom/android/server/display/WfdBridgeBase$BridgeListner;->onBridgeConnected()I

    new-instance v2, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v3, p0, Lcom/android/server/display/WfdBridgeClient;->mSocket:Ljava/net/Socket;

    iget-object v4, p0, Lcom/android/server/display/WfdBridgeBase;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;-><init>(Lcom/android/server/display/WfdBridgeBase;Ljava/net/Socket;Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;)V

    iput-object v2, p0, Lcom/android/server/display/WfdBridgeClient;->mClientPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    goto :goto_2
.end method

.method public sendBusyflag(I)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/server/display/WfdBridgeClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WfdBridgeClient;->mClientPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v0, v0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    if-nez v0, :cond_0

    iget-object v7, p0, Lcom/android/server/display/WfdBridgeBase;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    new-instance v0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    const/16 v2, 0x3ed

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/display/WfdBridgeClient;->mClientPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    const/4 v5, 0x0

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/WfdBridgeBase$WBPMsg;-><init>(Lcom/android/server/display/WfdBridgeBase;ILjava/lang/String;Lcom/android/server/display/WfdBridgeBase$BridgePeer;II)V

    invoke-virtual {v7, v0}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->putMsg(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)I

    :cond_0
    return-void
.end method

.method public sendMsg(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)I
    .locals 2

    iget-object v0, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v1, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->send(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public updateClientDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0

    return-void
.end method
