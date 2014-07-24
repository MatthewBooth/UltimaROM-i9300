.class public interface abstract Lcom/android/server/display/IpRemoteDisplayController$Listener;
.super Ljava/lang/Object;
.source "IpRemoteDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/IpRemoteDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onDisplayConnected(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V
.end method

.method public abstract onDisplayConnectionFailed()V
.end method

.method public abstract onDisplayDisconnected()V
.end method

.method public abstract onDisplayDisconnecting()V
.end method

.method public abstract onFeatureStateChanged(I)V
.end method

.method public abstract onQosLevelChanged(I)V
.end method
