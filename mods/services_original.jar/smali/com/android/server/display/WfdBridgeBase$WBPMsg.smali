.class public Lcom/android/server/display/WfdBridgeBase$WBPMsg;
.super Ljava/lang/Object;
.source "WfdBridgeBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WfdBridgeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WBPMsg"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WBPMsg"

.field public static final WBPMSGTYPE_DESTROY:I = -0x1

.field public static final WBPMSGTYPE_NOT_PARSED:I = 0x0

.field public static final WBPMSGTYPE_NOT_PARSED_LEGACY:I = 0x1

.field public static final WBPMSGTYPE_TRIGGER_BUSYFLAG:I = 0x3ed

.field public static final WBPMSGTYPE_TRIGGER_M1:I = 0x2

.field public static final WBPMSGTYPE_WBP_GET_PARAMETER:I = 0x3ec

.field public static final WBPMSGTYPE_WBP_PLAY:I = 0x3e9

.field public static final WBPMSGTYPE_WBP_SETUP:I = 0x3ea

.field public static final WBPMSGTYPE_WBP_SET_PARAMETER:I = 0x3eb

.field public static final WBPMSGTYPE_WBP_TRIGGER:I = 0x3e8


# instance fields
.field public mDev:I

.field public mMsg:Ljava/lang/String;

.field public mMsgType:I

.field public mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

.field public mType:I

.field final synthetic this$0:Lcom/android/server/display/WfdBridgeBase;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WfdBridgeBase;I)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->this$0:Lcom/android/server/display/WfdBridgeBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsgType:I

    iput-object v0, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iput-object v0, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/WfdBridgeBase;ILcom/android/server/display/WfdBridgeBase$BridgePeer;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->this$0:Lcom/android/server/display/WfdBridgeBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsgType:I

    iput-object p3, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/WfdBridgeBase;ILjava/lang/String;Lcom/android/server/display/WfdBridgeBase$BridgePeer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->this$0:Lcom/android/server/display/WfdBridgeBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsgType:I

    iput-object p4, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iput-object p3, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/WfdBridgeBase;ILjava/lang/String;Lcom/android/server/display/WfdBridgeBase$BridgePeer;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->this$0:Lcom/android/server/display/WfdBridgeBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsgType:I

    iput-object p4, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iput-object p3, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mDev:I

    iput p6, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mType:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/WfdBridgeBase;Ljava/lang/String;Lcom/android/server/display/WfdBridgeBase$BridgePeer;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->this$0:Lcom/android/server/display/WfdBridgeBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsgType:I

    iput-object p2, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
