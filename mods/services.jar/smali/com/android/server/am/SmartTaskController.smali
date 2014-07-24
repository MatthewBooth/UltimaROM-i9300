.class public Lcom/android/server/am/SmartTaskController;
.super Ljava/lang/Object;
.source "SmartTaskController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/SmartTaskController$1;,
        Lcom/android/server/am/SmartTaskController$TaskKillTracer;,
        Lcom/android/server/am/SmartTaskController$SmartTaskControllerConfiguration;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field static final SAFE_DEBUG:Z = false

.field private static final STC_WORKING_GAP:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "SmartTaskControler"


# instance fields
.field private MAX_RECENT_TASK:I

.field private isHomeDead:Z

.field mAms:Lcom/android/server/am/ActivityManagerService;

.field mSTCConf:Lcom/android/server/am/SmartTaskController$SmartTaskControllerConfiguration;

.field memInfo:Lcom/android/internal/util/MemInfoReader;

.field packageName:Ljava/lang/String;

.field final recentPssMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private stcCheckedTime:J

.field private taskKillTracer:Lcom/android/server/am/SmartTaskController$TaskKillTracer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    const-string/jumbo v1, "true"

    const-string v2, "persist.task_debug"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/SmartTaskController;->DEBUG:Z

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/am/SmartTaskController;->SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;J)V
    .locals 3

    const/16 v0, 0xa

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/SmartTaskController;->stcCheckedTime:J

    iput v0, p0, Lcom/android/server/am/SmartTaskController;->MAX_RECENT_TASK:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/SmartTaskController;->isHomeDead:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/SmartTaskController;->recentPssMap:Ljava/util/HashMap;

    sget-boolean v1, Lcom/android/server/am/SmartTaskController;->SAFE_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SmartTaskControler"

    const-string v2, "SmartTaskControler()"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v1}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/SmartTaskController;->memInfo:Lcom/android/internal/util/MemInfoReader;

    iput-object p2, p0, Lcom/android/server/am/SmartTaskController;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iput v0, p0, Lcom/android/server/am/SmartTaskController;->MAX_RECENT_TASK:I

    new-instance v0, Lcom/android/server/am/SmartTaskController$SmartTaskControllerConfiguration;

    invoke-direct {v0, p0, p3, p4}, Lcom/android/server/am/SmartTaskController$SmartTaskControllerConfiguration;-><init>(Lcom/android/server/am/SmartTaskController;J)V

    iput-object v0, p0, Lcom/android/server/am/SmartTaskController;->mSTCConf:Lcom/android/server/am/SmartTaskController$SmartTaskControllerConfiguration;

    sget-boolean v0, Lcom/android/server/am/SmartTaskController;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/server/am/SmartTaskController$TaskKillTracer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/SmartTaskController$TaskKillTracer;-><init>(Lcom/android/server/am/SmartTaskController;Lcom/android/server/am/SmartTaskController$1;)V

    iput-object v0, p0, Lcom/android/server/am/SmartTaskController;->taskKillTracer:Lcom/android/server/am/SmartTaskController$TaskKillTracer;

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x14

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/server/am/SmartTaskController;)J
    .locals 2

    invoke-direct {p0}, Lcom/android/server/am/SmartTaskController;->getAvailableMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method private final getAvailableMemory()J
    .locals 6

    iget-object v4, p0, Lcom/android/server/am/SmartTaskController;->memInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    iget-object v4, p0, Lcom/android/server/am/SmartTaskController;->memInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/am/SmartTaskController;->memInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v0

    add-long v4, v2, v0

    return-wide v4
.end method

.method private getBackgroundTasks(I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/android/server/am/SmartTaskController;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v4, Ljava/util/ArrayList;

    if-ge p1, v0, :cond_2

    move v6, p1

    :goto_0
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_5

    if-lez p1, :cond_5

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    sget-boolean v6, Lcom/android/server/am/SmartTaskController;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "SmartTaskControler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "recent task =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v6, "com.salab.act"

    iget-object v7, v5, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v6, v0

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    iget-object v6, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->isApplicationTask()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_5
    return-object v4
.end method

.method private isHeavyApp(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/SmartTaskController;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/SmartTaskController;->recentPssMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/am/SmartTaskController;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "SmartTaskControler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startTaskCleanUp lunch packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is contained Heavy Map"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isTooEarly()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/SmartTaskController;->stcCheckedTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iput-wide v0, p0, Lcom/android/server/am/SmartTaskController;->stcCheckedTime:J

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private final killProcessTask(Lcom/android/server/am/TaskRecord;)V
    .locals 10

    move-object v5, p1

    iget-object v6, p0, Lcom/android/server/am/SmartTaskController;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v5}, Lcom/android/server/am/ActivityManagerService;->getTaskProcess(Lcom/android/server/am/TaskRecord;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v6, p0, Lcom/android/server/am/SmartTaskController;->mSTCConf:Lcom/android/server/am/SmartTaskController$SmartTaskControllerConfiguration;

    iget-wide v3, v6, Lcom/android/server/am/SmartTaskController$SmartTaskControllerConfiguration;->HEAVY_PROCESS:J

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    sget-boolean v6, Lcom/android/server/am/SmartTaskController;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "SmartTaskControler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Process = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Adj = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , lastPss = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v1, Lcom/android/server/am/ProcessRecord;->lastPss:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", threthold="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", hasStartedServices = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v1, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-wide v6, v1, Lcom/android/server/am/ProcessRecord;->lastPss:J

    cmp-long v6, v6, v3

    if-lez v6, :cond_1

    iget v6, v1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/4 v7, 0x6

    if-le v6, v7, :cond_1

    const-string v6, "kill remove process by STC "

    invoke-direct {p0, v1, v6}, Lcom/android/server/am/SmartTaskController;->killUnneededProcessLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private killUnneededProcessLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/SmartTaskController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SmartTaskControler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Killing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (adj "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x7547

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iput-boolean v4, p1, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0}, Landroid/os/Process;->killProcessQuiet(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final cleanUpTask(I)V
    .locals 7

    sget-boolean v4, Lcom/android/server/am/SmartTaskController;->DEBUG:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/SmartTaskController;->taskKillTracer:Lcom/android/server/am/SmartTaskController$TaskKillTracer;

    invoke-virtual {v4}, Lcom/android/server/am/SmartTaskController$TaskKillTracer;->start()V

    :cond_0
    iget v4, p0, Lcom/android/server/am/SmartTaskController;->MAX_RECENT_TASK:I

    invoke-direct {p0, v4}, Lcom/android/server/am/SmartTaskController;->getBackgroundTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_0
    if-ltz v1, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget-object v4, v3, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    if-gt v4, p1, :cond_1

    iget-object v4, p0, Lcom/android/server/am/SmartTaskController;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, v3}, Lcom/android/server/am/SmartTaskController;->killProcessTask(Lcom/android/server/am/TaskRecord;)V

    sget-boolean v4, Lcom/android/server/am/SmartTaskController;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "SmartTaskControler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LEVEL Yellow Remove task = Task ID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Kill Process all task"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/am/SmartTaskController;->taskKillTracer:Lcom/android/server/am/SmartTaskController$TaskKillTracer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Task : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/SmartTaskController$TaskKillTracer;->pushLog(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    sget-boolean v4, Lcom/android/server/am/SmartTaskController;->DEBUG:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/am/SmartTaskController;->taskKillTracer:Lcom/android/server/am/SmartTaskController$TaskKillTracer;

    invoke-virtual {v4}, Lcom/android/server/am/SmartTaskController$TaskKillTracer;->end()V

    iget-object v4, p0, Lcom/android/server/am/SmartTaskController;->taskKillTracer:Lcom/android/server/am/SmartTaskController$TaskKillTracer;

    invoke-virtual {v4}, Lcom/android/server/am/SmartTaskController$TaskKillTracer;->print()V

    :cond_3
    return-void
.end method

.method public final killHeavyProcess()V
    .locals 14

    const/4 v13, 0x0

    invoke-direct {p0}, Lcom/android/server/am/SmartTaskController;->getAvailableMemory()J

    move-result-wide v0

    iget-object v9, p0, Lcom/android/server/am/SmartTaskController;->mSTCConf:Lcom/android/server/am/SmartTaskController$SmartTaskControllerConfiguration;

    iget-wide v9, v9, Lcom/android/server/am/SmartTaskController$SmartTaskControllerConfiguration;->RED_MEMORY:J

    cmp-long v9, v0, v9

    if-gtz v9, :cond_0

    iget-boolean v9, p0, Lcom/android/server/am/SmartTaskController;->isHomeDead:Z

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v9, p0, Lcom/android/server/am/SmartTaskController;->MAX_RECENT_TASK:I

    invoke-direct {p0, v9}, Lcom/android/server/am/SmartTaskController;->getBackgroundTasks(I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-gtz v9, :cond_2

    sget-boolean v9, Lcom/android/server/am/SmartTaskController;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "SmartTaskControler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "trList is empty count = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget v9, p0, Lcom/android/server/am/SmartTaskController;->MAX_RECENT_TASK:I

    invoke-direct {p0, v9}, Lcom/android/server/am/SmartTaskController;->getBackgroundTasks(I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/TaskRecord;

    iget-object v9, p0, Lcom/android/server/am/SmartTaskController;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9, v7}, Lcom/android/server/am/ActivityManagerService;->getTaskProcess(Lcom/android/server/am/TaskRecord;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v9, p0, Lcom/android/server/am/SmartTaskController;->mSTCConf:Lcom/android/server/am/SmartTaskController$SmartTaskControllerConfiguration;

    iget-wide v5, v9, Lcom/android/server/am/SmartTaskController$SmartTaskControllerConfiguration;->HEAVY_PROCESS:J

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_0

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    sget-boolean v9, Lcom/android/server/am/SmartTaskController;->DEBUG:Z

    if-eqz v9, :cond_3

    const-string v9, "SmartTaskControler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Process = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Adj = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v3, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , lastPss = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v3, Lcom/android/server/am/ProcessRecord;->lastPss:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", threthold="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", hasStartedServices = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, v3, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-wide v9, v3, Lcom/android/server/am/ProcessRecord;->lastPss:J

    cmp-long v9, v9, v5

    if-lez v9, :cond_4

    iget v9, v3, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/4 v10, 0x6

    if-le v9, v10, :cond_4

    iget-boolean v9, v3, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    if-eqz v9, :cond_5

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const-string v9, "kill heavy process by STC"

    invoke-direct {p0, v3, v9}, Lcom/android/server/am/SmartTaskController;->killUnneededProcessLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    iput-boolean v13, p0, Lcom/android/server/am/SmartTaskController;->isHomeDead:Z

    goto :goto_2
.end method

.method public putRecentPssMap([Ljava/lang/String;J)V
    .locals 5

    sget-boolean v2, Lcom/android/server/am/SmartTaskController;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SmartTaskControler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Process = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", nowPss="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/SmartTaskController;->mSTCConf:Lcom/android/server/am/SmartTaskController$SmartTaskControllerConfiguration;

    iget-wide v2, v2, Lcom/android/server/am/SmartTaskController$SmartTaskControllerConfiguration;->HEAVY_PROCESS:J

    cmp-long v2, p2, v2

    if-lez v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/android/server/am/SmartTaskController;->recentPssMap:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v2, Lcom/android/server/am/SmartTaskController;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "SmartTaskControler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add To Recent Heavy PSS List Package = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", nowPss="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setHomeProcessDead(Lcom/android/server/am/ProcessRecord;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/android/server/am/SmartTaskController;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v6, p0, Lcom/android/server/am/SmartTaskController;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    iget-object v6, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v1, v5

    :cond_0
    if-nez v1, :cond_2

    iput-boolean v8, p0, Lcom/android/server/am/SmartTaskController;->isHomeDead:Z

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/server/am/SmartTaskController;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v1}, Lcom/android/server/am/ActivityManagerService;->getTaskProcess(Lcom/android/server/am/TaskRecord;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    iget v6, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v7, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v6, v7, :cond_3

    iput-boolean v8, p0, Lcom/android/server/am/SmartTaskController;->isHomeDead:Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/am/SmartTaskController;->isHomeDead:Z

    goto :goto_1
.end method

.method public final startTaskCleanUp()V
    .locals 5

    sget-boolean v3, Lcom/android/server/am/SmartTaskController;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SmartTaskControler"

    const-string/jumbo v4, "startTaskCleanUp "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/SmartTaskController;->isTooEarly()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/server/am/SmartTaskController;->getAvailableMemory()J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/server/am/SmartTaskController;->mSTCConf:Lcom/android/server/am/SmartTaskController$SmartTaskControllerConfiguration;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/am/SmartTaskController$SmartTaskControllerConfiguration;->getMemoryLevels(J)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/SmartTaskController;->mSTCConf:Lcom/android/server/am/SmartTaskController$SmartTaskControllerConfiguration;

    const/4 v3, 0x5

    if-gt v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/server/am/SmartTaskController;->cleanUpTask(I)V

    goto :goto_0
.end method

.method public final startTaskCleanUp(Landroid/content/Intent;)V
    .locals 5

    sget-boolean v3, Lcom/android/server/am/SmartTaskController;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SmartTaskControler"

    const-string/jumbo v4, "startTaskCleanUp "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/SmartTaskController;->isHeavyApp(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/server/am/SmartTaskController;->getAvailableMemory()J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/server/am/SmartTaskController;->mSTCConf:Lcom/android/server/am/SmartTaskController$SmartTaskControllerConfiguration;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/am/SmartTaskController$SmartTaskControllerConfiguration;->getMemoryLevels(J)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/SmartTaskController;->mSTCConf:Lcom/android/server/am/SmartTaskController$SmartTaskControllerConfiguration;

    const/4 v3, 0x5

    if-gt v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/server/am/SmartTaskController;->cleanUpTask(I)V

    goto :goto_0
.end method
