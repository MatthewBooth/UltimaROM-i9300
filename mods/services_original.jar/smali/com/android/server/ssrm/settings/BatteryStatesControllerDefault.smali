.class public Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;
.super Lcom/android/server/ssrm/settings/BatteryStatesController;
.source "BatteryStatesControllerDefault.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault$TopDumpThread;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final MAX_BUFFER_SIZE:I = 0x190

.field private static final TAG:Ljava/lang/String; = "SSRMv2:BatteryStatesControllerDefault"

.field static final mDumpThreadSyncObject:Ljava/lang/Object;

.field static sArrayCircularBuffer:Lcom/android/server/ssrm/CircularBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/ssrm/CircularBuffer",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActiveId:I

.field private mActiveLevel:I

.field private mActiveState:Lcom/android/server/ssrm/settings/BatteryState;

.field mHandler:Landroid/os/Handler;

.field private mPrevId:I

.field private mStates:Lcom/android/server/ssrm/settings/SortedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/ssrm/settings/SortedArrayList",
            "<",
            "Lcom/android/server/ssrm/settings/BatteryState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/ssrm/CircularBuffer;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Lcom/android/server/ssrm/CircularBuffer;-><init>(I)V

    sput-object v0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->sArrayCircularBuffer:Lcom/android/server/ssrm/CircularBuffer;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mDumpThreadSyncObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/ssrm/settings/BatteryStatesController;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveLevel:I

    const/16 v0, -0x63

    iput v0, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveId:I

    iget v0, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveId:I

    iput v0, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mPrevId:I

    return-void
.end method

.method private createHandler(Landroid/os/Looper;)V
    .locals 1

    new-instance v0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault$1;-><init>(Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public addState(Lcom/android/server/ssrm/settings/BatteryState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mStates:Lcom/android/server/ssrm/settings/SortedArrayList;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/ssrm/settings/SortedArrayList;

    invoke-direct {v0}, Lcom/android/server/ssrm/settings/SortedArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mStates:Lcom/android/server/ssrm/settings/SortedArrayList;

    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mStates:Lcom/android/server/ssrm/settings/SortedArrayList;

    invoke-virtual {v0, p1}, Lcom/android/server/ssrm/settings/SortedArrayList;->insertSorted(Ljava/lang/Object;)V

    return-void
.end method

.method protected dumpStateChangeData()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TOP DUMP Based on SIOP Level"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n================================================"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->sArrayCircularBuffer:Lcom/android/server/ssrm/CircularBuffer;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->sArrayCircularBuffer:Lcom/android/server/ssrm/CircularBuffer;

    invoke-virtual {v3}, Lcom/android/server/ssrm/CircularBuffer;->get()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected findAndSetActive(I)V
    .locals 5

    iget-object v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mStates:Lcom/android/server/ssrm/settings/SortedArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveState:Lcom/android/server/ssrm/settings/BatteryState;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveState:Lcom/android/server/ssrm/settings/BatteryState;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/ssrm/settings/BatteryState;->setActive(Z)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->findStateIndexByTemperature(I)Lcom/android/server/ssrm/settings/BatteryState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveState:Lcom/android/server/ssrm/settings/BatteryState;

    iget-object v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveState:Lcom/android/server/ssrm/settings/BatteryState;

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mStates:Lcom/android/server/ssrm/settings/SortedArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/settings/BatteryState;

    iget-object v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveState:Lcom/android/server/ssrm/settings/BatteryState;

    invoke-virtual {v3}, Lcom/android/server/ssrm/settings/BatteryState;->temperature()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/server/ssrm/settings/BatteryState;->temperature()I

    move-result v4

    if-ne v3, v4, :cond_3

    iput v2, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveLevel:I

    iget-object v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveState:Lcom/android/server/ssrm/settings/BatteryState;

    invoke-virtual {v3}, Lcom/android/server/ssrm/settings/BatteryState;->getId()I

    move-result v3

    iput v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveId:I

    :cond_1
    iget-object v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveState:Lcom/android/server/ssrm/settings/BatteryState;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/ssrm/settings/BatteryState;->setActive(Z)V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected findStateIndexByTemperature(I)Lcom/android/server/ssrm/settings/BatteryState;
    .locals 6

    const/4 v0, 0x0

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mStates:Lcom/android/server/ssrm/settings/SortedArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_0

    iget-object v4, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mStates:Lcom/android/server/ssrm/settings/SortedArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/settings/BatteryState;

    invoke-virtual {v0}, Lcom/android/server/ssrm/settings/BatteryState;->temperature()I

    move-result v4

    if-lt p1, v4, :cond_1

    move v3, v2

    :cond_0
    if-nez v0, :cond_2

    const/4 v4, 0x0

    :goto_1
    return-object v4

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveLevel:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    iget v4, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveLevel:I

    if-le v4, v3, :cond_3

    invoke-virtual {v0}, Lcom/android/server/ssrm/settings/BatteryState;->temperature()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-lt p1, v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mStates:Lcom/android/server/ssrm/settings/SortedArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/settings/BatteryState;

    :cond_3
    iget v4, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveId:I

    iput v4, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mPrevId:I

    move-object v4, v0

    goto :goto_1
.end method

.method public getActiveBatteryState(Z)Lcom/android/server/ssrm/settings/BatteryState;
    .locals 5

    if-eqz p1, :cond_2

    iget v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mPrevId:I

    iget v4, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveId:I

    if-eq v3, v4, :cond_2

    sget-object v3, Lcom/android/server/ssrm/Monitor;->sHandlerThread:Landroid/os/HandlerThread;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mHandler:Landroid/os/Handler;

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/server/ssrm/Monitor;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->createHandler(Landroid/os/Looper;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mPrevId:I

    iput v3, v0, Landroid/os/Message;->arg1:I

    iget v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveId:I

    iput v3, v0, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    iget v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveId:I

    iput v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mPrevId:I

    :cond_2
    iget-object v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveState:Lcom/android/server/ssrm/settings/BatteryState;

    return-object v3
.end method

.method public removeState(Lcom/android/server/ssrm/settings/BatteryState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mStates:Lcom/android/server/ssrm/settings/SortedArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mStates:Lcom/android/server/ssrm/settings/SortedArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected setActiveState(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mStates:Lcom/android/server/ssrm/settings/SortedArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SSRM. There are no states in battery state machine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->findAndSetActive(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Battery states:\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mStates:Lcom/android/server/ssrm/settings/SortedArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/settings/BatteryState;

    invoke-virtual {v2}, Lcom/android/server/ssrm/settings/BatteryState;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/android/server/ssrm/settings/Util;->indentText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
