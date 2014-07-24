.class Lcom/android/server/power/ShutdownThread$Slog;
.super Landroid/os/Handler;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Slog"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShutdownDelay"

.field private static delayDumpRaunnable:Ljava/lang/Runnable;

.field private static delayLogLooper:Landroid/os/HandlerThread;

.field private static handler:Lcom/android/server/power/ShutdownThread$Slog;

.field private static handlerLock:Ljava/lang/Object;

.field private static lastLog:Ljava/lang/String;

.field private static logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

.field private static queuePoint:I

.field private static queueState:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread$Slog;->handlerLock:Ljava/lang/Object;

    sput-object v1, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    sput-object v1, Lcom/android/server/power/ShutdownThread$Slog;->lastLog:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$1202(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    sput-object p0, Lcom/android/server/power/ShutdownThread$Slog;->delayDumpRaunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static cancelHandler()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/power/ShutdownThread$Slog;->stopState()V

    sput-object v0, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    sput-object v0, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    return-void
.end method

.method public static closeLogFileWriter()V
    .locals 3

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1500()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    if-eqz v0, :cond_0

    const-string v0, "ShutdownDelay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logFileWriter saveAndClose logFileWriter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/power/ShutdownThread$Slog;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ShutdownDelay"

    const-string v1, "logFileWriter saveAndClose"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownThread$LogFileWriter;->saveAndClose()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread$Slog;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    goto :goto_0
.end method

.method static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v1, -0x1

    :try_start_0
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {p1}, Lcom/android/server/power/ShutdownThread$Slog;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v1, -0x1

    :try_start_0
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {p1}, Lcom/android/server/power/ShutdownThread$Slog;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    .locals 2

    const/4 v1, -0x1

    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    invoke-static {p1}, Lcom/android/server/power/ShutdownThread$Slog;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v1, -0x1

    :try_start_0
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {p1}, Lcom/android/server/power/ShutdownThread$Slog;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static onview(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x2

    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1600()Lcom/android/server/power/ShutdownDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1700()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v3, "%02d-%02d %02d:%02d:%02d : %s\n"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x3

    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    aput-object p1, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1600()Lcom/android/server/power/ShutdownDialog;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/power/ShutdownDialog;->appendTextLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static openLogFileWriter()V
    .locals 3

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1500()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "ShutdownDelay"

    const-string v1, "Shutdown logFileWriter start"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;

    const-string v1, "/data/log/"

    const-string/jumbo v2, "shutdown_profile"

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/ShutdownThread$LogFileWriter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/power/ShutdownThread$Slog;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    goto :goto_0
.end method

.method private static setMessage(Ljava/lang/String;)V
    .locals 11

    const/4 v10, 0x5

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x2

    sget-object v3, Lcom/android/server/power/ShutdownThread$Slog;->handlerLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v7, :cond_1

    :cond_0
    monitor-exit v3

    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v2, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    const/4 v4, 0x1

    const-wide/32 v5, 0x1d4c0

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v2, Lcom/android/server/power/ShutdownThread$Slog;->lastLog:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "ShutdownDelay"

    const-string v3, "duplicate log string."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_2
    sput-object p0, Lcom/android/server/power/ShutdownThread$Slog;->lastLog:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "!@delay, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v2, "%02d-%02d %02d:%02d:%02d : "

    new-array v3, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x3

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/power/ShutdownThread$Slog;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/server/power/ShutdownThread$Slog;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    const-string v3, "ShutdownThread"

    invoke-virtual {v2, v3, p0}, Lcom/android/server/power/ShutdownThread$LogFileWriter;->write(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v7, :cond_4

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x21

    if-ne v2, v3, :cond_4

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x40

    if-ne v2, v3, :cond_4

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    sget-object v2, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    sget v3, Lcom/android/server/power/ShutdownThread$Slog;->queuePoint:I

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    sget v2, Lcom/android/server/power/ShutdownThread$Slog;->queuePoint:I

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    array-length v3, v3

    rem-int/2addr v2, v3

    sput v2, Lcom/android/server/power/ShutdownThread$Slog;->queuePoint:I

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static startState()V
    .locals 4

    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->delayLogLooper:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ShutdownDelay"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/power/ShutdownThread$Slog;->delayLogLooper:Landroid/os/HandlerThread;

    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->delayLogLooper:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    if-nez v0, :cond_1

    const-string v0, "ShutdownDelay"

    const-string v1, "Start"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/power/ShutdownThread$Slog;

    sget-object v1, Lcom/android/server/power/ShutdownThread$Slog;->delayLogLooper:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/android/server/power/ShutdownThread$Slog;->queuePoint:I

    :goto_0
    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    new-instance v0, Lcom/android/server/power/ShutdownThread$Slog$1;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread$Slog$1;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread$Slog;->delayDumpRaunnable:Ljava/lang/Runnable;

    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    sget-object v1, Lcom/android/server/power/ShutdownThread$Slog;->delayDumpRaunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    const-string v0, "ShutdownDelay"

    const-string/jumbo v1, "startstate again"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static stopState()V
    .locals 3

    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "ShutdownDelay"

    const-string v1, "no more delay message"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/power/ShutdownThread$Slog;->handlerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v1, -0x1

    :try_start_0
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {p1}, Lcom/android/server/power/ShutdownThread$Slog;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v1, -0x1

    :try_start_0
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {p1}, Lcom/android/server/power/ShutdownThread$Slog;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    .locals 2

    const/4 v1, -0x1

    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    invoke-static {p1}, Lcom/android/server/power/ShutdownThread$Slog;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    sget-object v1, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    sget-object v1, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    sget v2, Lcom/android/server/power/ShutdownThread$Slog;->queuePoint:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    const-string v1, "ShutdownDelay"

    sget-object v2, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    sget v3, Lcom/android/server/power/ShutdownThread$Slog;->queuePoint:I

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget v1, Lcom/android/server/power/ShutdownThread$Slog;->queuePoint:I

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    array-length v2, v2

    rem-int/2addr v1, v2

    sput v1, Lcom/android/server/power/ShutdownThread$Slog;->queuePoint:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
