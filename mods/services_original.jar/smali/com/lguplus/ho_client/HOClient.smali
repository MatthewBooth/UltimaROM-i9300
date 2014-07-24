.class public interface abstract Lcom/lguplus/ho_client/HOClient;
.super Ljava/lang/Object;
.source "HOClient.java"


# virtual methods
.method public abstract delayHandleConnect(Landroid/os/Handler;)Z
.end method

.method public abstract isRequiredToRestoreDefaultNetwork(Landroid/os/Handler;ILjava/lang/String;I)Z
.end method

.method public abstract isTeardownRequiredOnConnect(II)Z
.end method

.method public abstract isValidDefaultNetworkOnConnect(II)Z
.end method

.method public abstract isValidDefaultNetworkOnFailover(I)Z
.end method

.method public abstract setDefaultNetworkChange(I)V
.end method

.method public abstract setMobileEnableWhenNSWOActived(Z)V
.end method

.method public abstract setNetworkInfo(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract unRegisterReceiver()V
.end method
