.class public Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;
.super Ljava/lang/Object;
.source "EnterpriseContainerCallbackList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EnterpriseContainerCallbackList"


# instance fields
.field private final DBG:Z

.field private mActiveBroadcast:[Ljava/lang/Object;

.field private mBroadcastCount:I

.field mCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList",
            "<TE;>.Callback;>;"
        }
    .end annotation
.end field

.field mEventMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList",
            "<TE;>.Callback;>;>;"
        }
    .end annotation
.end field

.field private mKilled:Z


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->DBG:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mCallbacks:Ljava/util/HashMap;

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mBroadcastCount:I

    iput-boolean v2, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mKilled:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mEventMap:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mEventMap:Ljava/util/Map;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mEventMap:Ljava/util/Map;

    aget-object v2, p1, v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public beginBroadcast(Ljava/lang/String;)I
    .locals 8

    iget-object v6, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mCallbacks:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_0
    iget v5, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mBroadcastCount:I

    if-lez v5, :cond_0

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v7, "beginBroadcast() called while already in a broadcast"

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mEventMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mBroadcastCount:I

    if-gtz v0, :cond_1

    const/4 v3, 0x0

    monitor-exit v6

    :goto_0
    return v3

    :cond_1
    iget-object v1, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    if-eqz v1, :cond_2

    array-length v5, v1

    if-ge v5, v0, :cond_3

    :cond_2
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    :cond_3
    iget-object v5, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mEventMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v2, v3, 0x1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v3

    move v3, v2

    goto :goto_1

    :cond_4
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public finishBroadcast()V
    .locals 5

    iget v3, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mBroadcastCount:I

    if-gez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "finishBroadcast() called outside of a broadcast"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v1, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mBroadcastCount:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    iput v3, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mBroadcastCount:I

    return-void
.end method

.method public getBroadcastItem(I)Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;

    iget-object v0, v0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;->mCallback:Landroid/os/IInterface;

    return-object v0
.end method

.method public kill()V
    .locals 9

    iget-object v7, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mCallbacks:Ljava/util/HashMap;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;

    iget-object v6, v1, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;->mCallback:Landroid/os/IInterface;

    invoke-interface {v6}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v6, v1, v8}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v6, v1, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;->mKey:[Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v0, v1, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;->mKey:[Ljava/lang/String;

    array-length v5, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v4, v0, v3

    iget-object v6, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mEventMap:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    iget-object v6, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mEventMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mKilled:Z

    monitor-exit v7

    return-void

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public onCallbackDied(Landroid/os/IInterface;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public register([Ljava/lang/String;Landroid/os/IInterface;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "TE;)Z"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mCallbacks:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_0
    iget-boolean v6, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mKilled:Z

    if-nez v6, :cond_0

    if-eqz p1, :cond_0

    array-length v6, p1

    if-ge v6, v8, :cond_1

    :cond_0
    monitor-exit v9

    move v6, v7

    :goto_0
    return v6

    :cond_1
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    const/4 v5, 0x0

    :try_start_1
    new-instance v1, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;

    invoke-direct {v1, p0, p2, p1}, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;-><init>(Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;Landroid/os/IInterface;[Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_1
    array-length v6, p1

    if-ge v3, v6, :cond_4

    iget-object v6, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mEventMap:Ljava/util/Map;

    aget-object v10, p1, v3

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    const-string v6, "EnterpriseContainerCallbackList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "item registration was ignored by invalid key - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, p1, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mEventMap:Ljava/util/Map;

    aget-object v10, p1, v3

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_3

    iget-object v6, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mEventMap:Ljava/util/Map;

    aget-object v10, p1, v3

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mEventMap:Ljava/util/Map;

    aget-object v10, p1, v3

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v6, v7

    goto :goto_0

    :cond_4
    if-gtz v5, :cond_5

    :try_start_3
    const-string v6, "EnterpriseContainerCallbackList"

    const-string v8, "Event is not registered! - Client requested registeration with wrong event keys!"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v6, v7

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    :try_start_5
    invoke-interface {v0, v1, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v6, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    monitor-exit v9

    move v6, v8

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v6
.end method

.method public unregister(Landroid/os/IInterface;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mCallbacks:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_0
    iget-object v7, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mCallbacks:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;

    if-eqz v1, :cond_1

    iget-object v5, v1, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;->mKey:[Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v0, v1, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;->mKey:[Ljava/lang/String;

    array-length v4, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v3, v0, v2

    iget-object v5, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mEventMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, v1, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;->mCallback:Landroid/os/IInterface;

    invoke-interface {v5}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    const/4 v7, 0x0

    invoke-interface {v5, v1, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v5, 0x1

    monitor-exit v6

    :goto_1
    return v5

    :cond_1
    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method
