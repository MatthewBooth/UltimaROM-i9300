.class public interface abstract Lcom/android/server/display/WifiDisplayController$Listener;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onClientUpdated(Landroid/net/wifi/p2p/WifiP2pDevice;)V
.end method

.method public abstract onDisplayChanged(Landroid/hardware/display/WifiDisplay;)V
.end method

.method public abstract onDisplayConnected(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V
.end method

.method public abstract onDisplayConnecting(Landroid/hardware/display/WifiDisplay;)V
.end method

.method public abstract onDisplayConnectionFailed()V
.end method

.method public abstract onDisplayDisconnected()V
.end method

.method public abstract onDisplayDisconnecting()V
.end method

.method public abstract onDisplaySessionInfo(Landroid/hardware/display/WifiDisplaySessionInfo;)V
.end method

.method public abstract onFeatureStateChanged(I)V
.end method

.method public abstract onP2pConnected(Ljava/net/InetAddress;)V
.end method

.method public abstract onP2pDisconnected()V
.end method

.method public abstract onScanFinished()V
.end method

.method public abstract onScanResults([Landroid/hardware/display/WifiDisplay;)V
.end method

.method public abstract onScanStarted()V
.end method
