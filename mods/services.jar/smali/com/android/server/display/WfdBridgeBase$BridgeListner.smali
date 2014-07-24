.class public interface abstract Lcom/android/server/display/WfdBridgeBase$BridgeListner;
.super Ljava/lang/Object;
.source "WfdBridgeBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WfdBridgeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BridgeListner"
.end annotation


# virtual methods
.method public abstract onBridgeConnected()I
.end method

.method public abstract onConnRequest(IILjava/net/InetAddress;)V
.end method

.method public abstract onError(I)V
.end method

.method public abstract onGetStatus()I
.end method

.method public abstract onOK(Ljava/net/InetAddress;)V
.end method
