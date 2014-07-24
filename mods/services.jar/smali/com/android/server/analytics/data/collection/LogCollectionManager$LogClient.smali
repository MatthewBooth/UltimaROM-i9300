.class Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;
.super Ljava/lang/Object;
.source "LogCollectionManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/analytics/data/collection/LogCollectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogClient"
.end annotation


# instance fields
.field binder:Landroid/os/IBinder;

.field private final files:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;",
            ">;"
        }
    .end annotation
.end field

.field logGroups:I

.field final synthetic this$0:Lcom/android/server/analytics/data/collection/LogCollectionManager;


# direct methods
.method public constructor <init>(Lcom/android/server/analytics/data/collection/LogCollectionManager;Landroid/os/IBinder;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->this$0:Lcom/android/server/analytics/data/collection/LogCollectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->files:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->binder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->files:Landroid/util/SparseArray;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 6

    iget-object v4, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->this$0:Lcom/android/server/analytics/data/collection/LogCollectionManager;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->files:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->files:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->files:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    #calls: Lcom/android/server/analytics/data/collection/LogCollectionManager;->closeOutputStream(Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V
    invoke-static {v0}, Lcom/android/server/analytics/data/collection/LogCollectionManager;->access$000(Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->this$0:Lcom/android/server/analytics/data/collection/LogCollectionManager;

    #getter for: Lcom/android/server/analytics/data/collection/LogCollectionManager;->mClientGroupMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/server/analytics/data/collection/LogCollectionManager;->access$100(Lcom/android/server/analytics/data/collection/LogCollectionManager;)Ljava/util/Map;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->binder:Landroid/os/IBinder;

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->this$0:Lcom/android/server/analytics/data/collection/LogCollectionManager;

    #calls: Lcom/android/server/analytics/data/collection/LogCollectionManager;->reconcileLogCollection()V
    invoke-static {v3}, Lcom/android/server/analytics/data/collection/LogCollectionManager;->access$200(Lcom/android/server/analytics/data/collection/LogCollectionManager;)V

    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
