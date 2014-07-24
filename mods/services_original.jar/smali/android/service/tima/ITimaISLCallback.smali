.class public interface abstract Landroid/service/tima/ITimaISLCallback;
.super Ljava/lang/Object;
.source "ITimaISLCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/tima/ITimaISLCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onTimaViolation(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
