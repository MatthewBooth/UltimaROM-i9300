.class final Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;
.super Ljava/lang/Object;
.source "EnterpriseContainerCallbackList.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Callback"
.end annotation


# instance fields
.field final mCallback:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final mKey:[Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;


# direct methods
.method constructor <init>(Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;Landroid/os/IInterface;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;->this$0:Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;->mCallback:Landroid/os/IInterface;

    iput-object p3, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;->mKey:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 8

    iget-object v5, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;->this$0:Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;

    iget-object v6, v5, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mCallbacks:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;->this$0:Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;

    iget-object v5, v5, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mCallbacks:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;->mCallback:Landroid/os/IInterface;

    invoke-interface {v7}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;

    iget-object v0, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;->mKey:[Ljava/lang/String;

    array-length v4, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v3, v0, v2

    iget-object v5, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;->this$0:Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;

    iget-object v5, v5, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mEventMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v5, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;->this$0:Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;

    iget-object v6, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;->mCallback:Landroid/os/IInterface;

    iget-object v7, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;->mKey:[Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->onCallbackDied(Landroid/os/IInterface;[Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method
