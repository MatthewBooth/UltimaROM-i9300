.class Lcom/android/server/am/ActivityManagerService$3;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17

    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    const/4 v1, 0x1

    new-array v15, v1, [J

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v8, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ProcessRecord;

    add-int/lit8 v8, v8, 0x1

    if-nez v11, :cond_2

    monitor-exit v4

    goto :goto_1

    :cond_2
    iget v12, v11, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    iget-object v1, v11, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_6

    iget v1, v11, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v12, v1, :cond_6

    iget v10, v11, Lcom/android/server/am/ProcessRecord;->pid:I

    :goto_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v11, :cond_0

    invoke-static {v10, v15}, Landroid/os/Debug;->getPss(I[J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_2
    iget-object v1, v11, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_5

    iget v1, v11, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v1, v12, :cond_5

    iget v1, v11, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v1, v10, :cond_5

    add-int/lit8 v9, v9, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v11, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    iget-object v1, v11, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    const/4 v4, 0x0

    aget-wide v4, v15, v4

    const/4 v6, 0x1

    iget-object v7, v11, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/app/ProcessStats$ProcessState;->addPss(JJZLandroid/util/ArrayMap;)V

    iget-wide v4, v11, Lcom/android/server/am/ProcessRecord;->initialIdlePss:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    iput-wide v2, v11, Lcom/android/server/am/ProcessRecord;->initialIdlePss:J

    :cond_3
    iput-wide v2, v11, Lcom/android/server/am/ProcessRecord;->lastPss:J

    const/16 v1, 0x9

    if-lt v12, v1, :cond_4

    iput-wide v2, v11, Lcom/android/server/am/ProcessRecord;->lastCachedPss:J

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    #getter for: Lcom/android/server/am/ActivityManagerService;->mSmartTaskController:Lcom/android/server/am/SmartTaskController;
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService;->access$800(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/SmartTaskController;

    move-result-object v1

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    #getter for: Lcom/android/server/am/ActivityManagerService;->mSmartTaskController:Lcom/android/server/am/SmartTaskController;
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService;->access$800(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/SmartTaskController;

    move-result-object v1

    invoke-virtual {v11}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v4

    iget-wide v5, v11, Lcom/android/server/am/ProcessRecord;->lastPss:J

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/server/am/SmartTaskController;->putRecentPssMap([Ljava/lang/String;J)V

    :cond_5
    monitor-exit v16

    goto/16 :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_6
    const/4 v11, 0x0

    const/4 v10, 0x0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
