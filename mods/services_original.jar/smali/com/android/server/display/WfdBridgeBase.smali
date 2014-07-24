.class public abstract Lcom/android/server/display/WfdBridgeBase;
.super Ljava/lang/Object;
.source "WfdBridgeBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/WfdBridgeBase$1;,
        Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;,
        Lcom/android/server/display/WfdBridgeBase$WBPMsg;,
        Lcom/android/server/display/WfdBridgeBase$BridgePeer;,
        Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;,
        Lcom/android/server/display/WfdBridgeBase$BridgeListner;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_WBP_VERSION:F = 1.0f

.field public static final REQ_DEV_SINK:I = 0x1

.field public static final REQ_DEV_SOURCE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WfdBridgeBase"


# instance fields
.field protected final mListner:Lcom/android/server/display/WfdBridgeBase$BridgeListner;

.field protected mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

.field protected mSession:Z


# direct methods
.method public constructor <init>(Lcom/android/server/display/WfdBridgeBase$BridgeListner;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    invoke-direct {v0, p0}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;-><init>(Lcom/android/server/display/WfdBridgeBase;)V

    iput-object v0, p0, Lcom/android/server/display/WfdBridgeBase;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/WfdBridgeBase;->mSession:Z

    iput-object p1, p0, Lcom/android/server/display/WfdBridgeBase;->mListner:Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    return-void
.end method

.method public static getInstance(Ljava/net/InetAddress;ILcom/android/server/display/WfdBridgeBase$BridgeListner;)Lcom/android/server/display/WfdBridgeBase;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-instance v0, Lcom/android/server/display/WfdBridgeServer;

    invoke-direct {v0, p1, p2}, Lcom/android/server/display/WfdBridgeServer;-><init>(ILcom/android/server/display/WfdBridgeBase$BridgeListner;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/server/display/WfdBridgeClient;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/display/WfdBridgeClient;-><init>(Ljava/net/InetAddress;ILcom/android/server/display/WfdBridgeBase$BridgeListner;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract connect()V
.end method

.method public abstract disconnect()V
.end method

.method public abstract getAddr()Ljava/net/InetAddress;
.end method

.method public abstract getConnectAddrList()[Ljava/net/InetAddress;
.end method

.method public abstract isConnected()Z
.end method

.method public abstract request(Landroid/net/wifi/p2p/WifiP2pDevice;II)V
.end method

.method public abstract sendBusyflag(I)V
.end method

.method public abstract sendMsg(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)I
.end method

.method public abstract updateClientDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V
.end method
