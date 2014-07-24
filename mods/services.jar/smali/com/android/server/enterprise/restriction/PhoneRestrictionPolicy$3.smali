.class Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$3;
.super Ljava/lang/Object;
.source "PhoneRestrictionPolicy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-static {p2}, Landroid/app/enterprise/ISimPinPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/ISimPinPolicy;

    move-result-object v1

    #setter for: Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinService:Landroid/app/enterprise/ISimPinPolicy;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->access$802(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;Landroid/app/enterprise/ISimPinPolicy;)Landroid/app/enterprise/ISimPinPolicy;

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, "SIM Pin Service connected"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, "SIM Pin Service has unexpectedly disconnected!"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinService:Landroid/app/enterprise/ISimPinPolicy;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->access$802(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;Landroid/app/enterprise/ISimPinPolicy;)Landroid/app/enterprise/ISimPinPolicy;

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    #getter for: Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->access$500(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    #getter for: Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinBind:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->access$400(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    #getter for: Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->access$500(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    #getter for: Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinBind:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->access$400(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
