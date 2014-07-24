.class Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList$1;
.super Landroid/sec/clipboard/data/IClipboardDataList$Stub;
.source "InternalClipboardExService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;


# direct methods
.method constructor <init>(Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList$1;->this$1:Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;

    invoke-direct {p0}, Landroid/sec/clipboard/data/IClipboardDataList$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getItem(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList$1;->this$1:Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;

    invoke-virtual {v0, p1}, Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    return-object v0
.end method

.method public removeData(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList$1;->this$1:Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;

    invoke-virtual {v0, p1}, Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;->removeData(I)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList$1;->this$1:Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;

    invoke-virtual {v0}, Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;->size()I

    move-result v0

    return v0
.end method

.method public updateData(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList$1;->this$1:Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;->updateData(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    return v0
.end method
