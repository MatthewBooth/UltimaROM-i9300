.class Lcom/android/server/pm/HandlerCacheManager$3;
.super Ljava/lang/Object;
.source "HandlerCacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/HandlerCacheManager;->onStateChange(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/HandlerCacheManager;

.field final synthetic val$oldState:I

.field final synthetic val$personaId:I

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/HandlerCacheManager;III)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/HandlerCacheManager$3;->this$0:Lcom/android/server/pm/HandlerCacheManager;

    iput p2, p0, Lcom/android/server/pm/HandlerCacheManager$3;->val$personaId:I

    iput p3, p0, Lcom/android/server/pm/HandlerCacheManager$3;->val$state:I

    iput p4, p0, Lcom/android/server/pm/HandlerCacheManager$3;->val$oldState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v6, "HandlerCacheManager"

    const-string v7, "onStateChange()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v7, Lcom/android/server/pm/HandlerCacheManager;

    monitor-enter v7

    :try_start_0
    new-instance v4, Ljava/lang/Integer;

    iget v6, p0, Lcom/android/server/pm/HandlerCacheManager$3;->val$personaId:I

    invoke-direct {v4, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {}, Lcom/android/server/pm/HandlerCacheManager;->access$000()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/IPersonaObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget v6, p0, Lcom/android/server/pm/HandlerCacheManager$3;->val$state:I

    iget v8, p0, Lcom/android/server/pm/HandlerCacheManager$3;->val$oldState:I

    invoke-interface {v1, v6, v8}, Landroid/content/pm/IPersonaObserver;->onStateChange(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    :cond_0
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method
