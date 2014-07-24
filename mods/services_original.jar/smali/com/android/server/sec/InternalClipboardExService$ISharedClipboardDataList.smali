.class Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;
.super Ljava/lang/Object;
.source "InternalClipboardExService.java"

# interfaces
.implements Landroid/sec/clipboard/data/IClipboardDataList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/InternalClipboardExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ISharedClipboardDataList"
.end annotation


# instance fields
.field private final mBind:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

.field final synthetic this$0:Lcom/android/server/sec/InternalClipboardExService;


# direct methods
.method private constructor <init>(Lcom/android/server/sec/InternalClipboardExService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList$1;

    invoke-direct {v0, p0}, Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList$1;-><init>(Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;)V

    iput-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;->mBind:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/sec/InternalClipboardExService;Lcom/android/server/sec/InternalClipboardExService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;-><init>(Lcom/android/server/sec/InternalClipboardExService;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;->mBind:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

    return-object v0
.end method

.method public getItem(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 4

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISharedClipboardDataList getItem() - index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$300(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "ClipboardServiceEx"

    const-string v2, "ISharedClipboardDataList getItem() - index = is for regular mDataList"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$300(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$300(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v1

    sub-int v0, p1, v1

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISharedClipboardDataList getItem() - index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was higher than mDataList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v3}, Lcom/android/server/sec/InternalClipboardExService;->access$300(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newINxed to grab from shared = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mSharedclipMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$400(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    goto :goto_0
.end method

.method public removeData(I)Z
    .locals 4

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISharedClipboardDataList removeData() - index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$300(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "ClipboardServiceEx"

    const-string v2, "ISharedClipboardDataList removeData() - index = is for regular mDataList"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$300(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    move-result v1

    :goto_0
    return v1

    :cond_2
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$300(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v1

    sub-int v0, p1, v1

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISharedClipboardDataList removeData() - index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was higher than mDataList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v3}, Lcom/android/server/sec/InternalClipboardExService;->access$300(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newINxed to remove from shared = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mSharedclipMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$400(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    move-result v1

    goto :goto_0
.end method

.method public size()I
    .locals 4

    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ClipboardServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISharedClipboardDataList - size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mSharedclipMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v2}, Lcom/android/server/sec/InternalClipboardExService;->access$400(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v3}, Lcom/android/server/sec/InternalClipboardExService;->access$300(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mSharedclipMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v0}, Lcom/android/server/sec/InternalClipboardExService;->access$400(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$300(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public updateData(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 4

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISharedClipboardDataList updateData() - index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$300(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "ClipboardServiceEx"

    const-string v2, "ISharedClipboardDataList updateData() - index = is for regular mDataList"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$300(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->updateData(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v1

    :goto_0
    return v1

    :cond_2
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$300(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v1

    sub-int v0, p1, v1

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISharedClipboardDataList updateData() - index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was higher than mDataList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v3}, Lcom/android/server/sec/InternalClipboardExService;->access$300(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newINxed to update from shared = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mSharedclipMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$400(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->updateData(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v1

    goto :goto_0
.end method
