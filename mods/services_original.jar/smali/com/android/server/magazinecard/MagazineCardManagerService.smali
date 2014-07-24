.class public Lcom/android/server/magazinecard/MagazineCardManagerService;
.super Lcom/samsung/android/magazinecard/IMagazineCardManager$Stub;
.source "MagazineCardManagerService.java"


# static fields
.field private static final MSG_SEND_CARD_UPDATED_NOTIFICATION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MagazineCardManagerService"


# instance fields
.field private mCardRecordArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/magazinecard/MagazineCardRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLastAllocatedRecordId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/magazinecard/IMagazineCardManager$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mLastAllocatedRecordId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/magazinecard/MagazineCardManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/magazinecard/MagazineCardManagerService$1;-><init>(Lcom/android/server/magazinecard/MagazineCardManagerService;)V

    iput-object v0, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mContext:Landroid/content/Context;

    const-string v0, "MagazineCardManagerService"

    const-string v1, "MagazineCardManagerService(Context) "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/magazinecard/IMagazineCardManager$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mLastAllocatedRecordId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/magazinecard/MagazineCardManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/magazinecard/MagazineCardManagerService$1;-><init>(Lcom/android/server/magazinecard/MagazineCardManagerService;)V

    iput-object v0, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mContext:Landroid/content/Context;

    const-string v0, "MagazineCardManagerService"

    const-string v1, "MagazineCardManagerService(Context, WindowManagerService)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/magazinecard/MagazineCardManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private findRecordIndex(ILandroid/content/ComponentName;I)I
    .locals 6

    iget-object v3, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/magazinecard/MagazineCardRecord;

    iget-object v3, v1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget v3, v3, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCardId:I

    if-ne v3, p3, :cond_0

    iget-object v3, v1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, v1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget v3, v3, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mUserId:I

    if-ne v3, p1, :cond_0

    const-string v3, "MagazineCardManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findRecordIndex : Found U"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " C"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget v5, v5, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCardId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : R"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "MagazineCardManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findRecordIndex : Not found U"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " C"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getNewRecordId()I
    .locals 1

    iget v0, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mLastAllocatedRecordId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mLastAllocatedRecordId:I

    iget v0, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mLastAllocatedRecordId:I

    return v0
.end method

.method private sendCardUpdatedNotification(ILcom/samsung/android/magazinecard/MagazineCardRecord;)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public declared-synchronized addCard(ILandroid/content/ComponentName;Lcom/samsung/android/magazinecard/MagazineCardInfo;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v3, "MagazineCardManagerService"

    const-string v4, "addCard"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const-string v3, "MagazineCardManagerService"

    const-string v4, "addCard : empty"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget v3, p3, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCardId:I

    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/magazinecard/MagazineCardManagerService;->findRecordIndex(ILandroid/content/ComponentName;I)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v3, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/magazinecard/MagazineCardRecord;

    const/4 v3, 0x3

    invoke-direct {p0, v3, v2}, Lcom/android/server/magazinecard/MagazineCardManagerService;->sendCardUpdatedNotification(ILcom/samsung/android/magazinecard/MagazineCardRecord;)V

    :cond_2
    new-instance v0, Lcom/samsung/android/magazinecard/MagazineCardRecord;

    invoke-direct {p0}, Lcom/android/server/magazinecard/MagazineCardManagerService;->getNewRecordId()I

    move-result v3

    invoke-direct {v0, v3, p3, p2}, Lcom/samsung/android/magazinecard/MagazineCardRecord;-><init>(ILcom/samsung/android/magazinecard/MagazineCardInfo;Landroid/content/ComponentName;)V

    iget-object v3, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v3, 0x1

    invoke-direct {p0, v3, v0}, Lcom/android/server/magazinecard/MagazineCardManagerService;->sendCardUpdatedNotification(ILcom/samsung/android/magazinecard/MagazineCardRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getCard(I)Lcom/samsung/android/magazinecard/MagazineCardRecord;
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v2, "MagazineCardManagerService"

    const-string v3, "getCard"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/magazinecard/MagazineCardRecord;

    iget v2, v0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getCardRecordIdList(IZ)[I
    .locals 8

    monitor-enter p0

    :try_start_0
    const-string v5, "MagazineCardManagerService"

    const-string v6, "getCardRecordIdList"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/magazinecard/MagazineCardRecord;

    iget-object v5, v2, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget v5, v5, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mUserId:I

    if-ne v5, p1, :cond_0

    const-string v5, "MagazineCardManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCardRecordIdList : U"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget v7, v7, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mUserId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " R"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " C"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget v7, v7, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCardId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " SL"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget v7, v7, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mSecurityLevel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/samsung/android/magazinecard/MagazineCardRecord;->getAppName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    iget-object v5, v2, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget v5, v5, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mSecurityLevel:I

    sget v6, Lcom/samsung/android/magazinecard/MagazineCardInfo;->SECURITY_LEVEL_SECURE_MODE_ONLY:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    iget v5, v2, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_1
    :try_start_1
    iget-object v5, v2, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget v5, v5, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mSecurityLevel:I

    sget v6, Lcom/samsung/android/magazinecard/MagazineCardInfo;->SECURITY_LEVEL_NON_SECURE_MODE_ONLY:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    iget v5, v2, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [I

    const/4 v3, 0x0

    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized isCardExist(ILandroid/content/ComponentName;I)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/magazinecard/MagazineCardManagerService;->findRecordIndex(ILandroid/content/ComponentName;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "MagazineCardManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCardExist : C"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeAllCard(ILandroid/content/ComponentName;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v4, "MagazineCardManagerService"

    const-string v5, "removeAllCard"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v4, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/magazinecard/MagazineCardRecord;

    iget-object v4, v1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget-object v4, v1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget v4, v4, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mUserId:I

    if-ne v4, p1, :cond_0

    const-string v4, "MagazineCardManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeAllCard : Removing U"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " C"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget v6, v6, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCardId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " R"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/magazinecard/MagazineCardRecord;

    const/4 v4, 0x3

    invoke-direct {p0, v4, v3}, Lcom/android/server/magazinecard/MagazineCardManagerService;->sendCardUpdatedNotification(ILcom/samsung/android/magazinecard/MagazineCardRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized removeCard(ILandroid/content/ComponentName;I)V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v3, "MagazineCardManagerService"

    const-string v4, "removeCard"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/magazinecard/MagazineCardManagerService;->findRecordIndex(ILandroid/content/ComponentName;I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v3, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/magazinecard/MagazineCardRecord;

    const/4 v3, 0x3

    invoke-direct {p0, v3, v2}, Lcom/android/server/magazinecard/MagazineCardManagerService;->sendCardUpdatedNotification(ILcom/samsung/android/magazinecard/MagazineCardRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v3, "MagazineCardManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeCard : Cannot find the card : C"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized updateCard(ILandroid/content/ComponentName;Lcom/samsung/android/magazinecard/MagazineCardInfo;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v4, "MagazineCardManagerService"

    const-string/jumbo v5, "updateCard"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const-string v4, "MagazineCardManagerService"

    const-string/jumbo v5, "updateCard : empty"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget v4, p3, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCardId:I

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/magazinecard/MagazineCardManagerService;->findRecordIndex(ILandroid/content/ComponentName;I)I

    move-result v2

    const/4 v1, -0x1

    if-ltz v2, :cond_2

    iget-object v4, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/magazinecard/MagazineCardRecord;

    iget v1, v3, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    :cond_2
    const/4 v4, -0x1

    if-ne v1, v4, :cond_3

    invoke-direct {p0}, Lcom/android/server/magazinecard/MagazineCardManagerService;->getNewRecordId()I

    move-result v1

    :cond_3
    new-instance v0, Lcom/samsung/android/magazinecard/MagazineCardRecord;

    invoke-direct {v0, v1, p3, p2}, Lcom/samsung/android/magazinecard/MagazineCardRecord;-><init>(ILcom/samsung/android/magazinecard/MagazineCardInfo;Landroid/content/ComponentName;)V

    if-ltz v2, :cond_4

    iget-object v4, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v4, 0x2

    invoke-direct {p0, v4, v0}, Lcom/android/server/magazinecard/MagazineCardManagerService;->sendCardUpdatedNotification(ILcom/samsung/android/magazinecard/MagazineCardRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_4
    :try_start_2
    iget-object v4, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v4, 0x1

    invoke-direct {p0, v4, v0}, Lcom/android/server/magazinecard/MagazineCardManagerService;->sendCardUpdatedNotification(ILcom/samsung/android/magazinecard/MagazineCardRecord;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
