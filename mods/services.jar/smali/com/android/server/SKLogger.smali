.class public Lcom/android/server/SKLogger;
.super Ljava/lang/Object;
.source "SKLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SKLogger$1;,
        Lcom/android/server/SKLogger$SKHandler;,
        Lcom/android/server/SKLogger$SKFormatter;
    }
.end annotation


# static fields
.field public static LOG_LEVEL_ALL:I

.field public static LOG_LEVEL_DENIALS:I

.field public static LOG_LEVEL_OFF:I

.field private static LOG_MAX_SIZE:I

.field private static LOG_NEW:Ljava/lang/String;

.field private static LOG_OLD:Ljava/lang/String;

.field private static LOG_TAG:Ljava/lang/String;

.field private static SK_VERBOSE_DEFAULT:I

.field private static SK_VERBOSE_PROP:Ljava/lang/String;

.field private static mFormatterTxt:Lcom/android/server/SKLogger$SKFormatter;

.field private static mLogger:Ljava/util/logging/Logger;

.field private static final mSKLogger:Lcom/android/server/SKLogger;

.field private static mSKTxt:Lcom/android/server/SKLogger$SKHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/server/SKLogger;->LOG_LEVEL_OFF:I

    const/4 v0, 0x1

    sput v0, Lcom/android/server/SKLogger;->LOG_LEVEL_DENIALS:I

    const/4 v0, 0x2

    sput v0, Lcom/android/server/SKLogger;->LOG_LEVEL_ALL:I

    const-string v0, "SKLogger"

    sput-object v0, Lcom/android/server/SKLogger;->LOG_TAG:Ljava/lang/String;

    const-string v0, "persist.security.ams.verbose"

    sput-object v0, Lcom/android/server/SKLogger;->SK_VERBOSE_PROP:Ljava/lang/String;

    sget v0, Lcom/android/server/SKLogger;->LOG_LEVEL_DENIALS:I

    sput v0, Lcom/android/server/SKLogger;->SK_VERBOSE_DEFAULT:I

    const-string v0, "/data/misc/audit/sk.log"

    sput-object v0, Lcom/android/server/SKLogger;->LOG_NEW:Ljava/lang/String;

    const-string v0, "/data/misc/audit/sk.old"

    sput-object v0, Lcom/android/server/SKLogger;->LOG_OLD:Ljava/lang/String;

    const v0, 0x19000

    sput v0, Lcom/android/server/SKLogger;->LOG_MAX_SIZE:I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/SKLogger;->mLogger:Ljava/util/logging/Logger;

    new-instance v0, Lcom/android/server/SKLogger;

    invoke-direct {v0}, Lcom/android/server/SKLogger;-><init>()V

    sput-object v0, Lcom/android/server/SKLogger;->mSKLogger:Lcom/android/server/SKLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCurrentLogLevel()I
    .locals 2

    sget-object v0, Lcom/android/server/SKLogger;->SK_VERBOSE_PROP:Ljava/lang/String;

    sget v1, Lcom/android/server/SKLogger;->SK_VERBOSE_DEFAULT:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized getLogger()Lcom/android/server/SKLogger;
    .locals 9

    const/4 v7, 0x0

    const-class v8, Lcom/android/server/SKLogger;

    monitor-enter v8

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/android/server/SKLogger;->mLogger:Ljava/util/logging/Logger;

    sget-object v0, Lcom/android/server/SKLogger;->mLogger:Ljava/util/logging/Logger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "SKLogger"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/server/SKLogger;->mLogger:Ljava/util/logging/Logger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    new-instance v0, Lcom/android/server/SKLogger$SKHandler;

    new-instance v1, Lcom/android/server/SKLogger;

    invoke-direct {v1}, Lcom/android/server/SKLogger;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/server/SKLogger;->LOG_NEW:Ljava/lang/String;

    sget-object v3, Lcom/android/server/SKLogger;->LOG_OLD:Ljava/lang/String;

    sget v4, Lcom/android/server/SKLogger;->LOG_MAX_SIZE:I

    int-to-long v4, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/SKLogger$SKHandler;-><init>(Lcom/android/server/SKLogger;Ljava/lang/String;Ljava/lang/String;J)V

    sput-object v0, Lcom/android/server/SKLogger;->mSKTxt:Lcom/android/server/SKLogger$SKHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    new-instance v0, Lcom/android/server/SKLogger$SKFormatter;

    new-instance v1, Lcom/android/server/SKLogger;

    invoke-direct {v1}, Lcom/android/server/SKLogger;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/SKLogger$SKFormatter;-><init>(Lcom/android/server/SKLogger;Lcom/android/server/SKLogger$1;)V

    sput-object v0, Lcom/android/server/SKLogger;->mFormatterTxt:Lcom/android/server/SKLogger$SKFormatter;

    sget-object v0, Lcom/android/server/SKLogger;->mSKTxt:Lcom/android/server/SKLogger$SKHandler;

    sget-object v1, Lcom/android/server/SKLogger;->mFormatterTxt:Lcom/android/server/SKLogger$SKFormatter;

    invoke-virtual {v0, v1}, Ljava/util/logging/Handler;->setFormatter(Ljava/util/logging/Formatter;)V

    sget-object v0, Lcom/android/server/SKLogger;->mLogger:Ljava/util/logging/Logger;

    sget-object v1, Lcom/android/server/SKLogger;->mSKTxt:Lcom/android/server/SKLogger$SKHandler;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    sget-object v0, Lcom/android/server/SKLogger;->mLogger:Ljava/util/logging/Logger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setUseParentHandlers(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_0
    :try_start_4
    sget-object v0, Lcom/android/server/SKLogger;->mSKLogger:Lcom/android/server/SKLogger;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    monitor-exit v8

    return-object v0

    :catch_0
    move-exception v6

    move-object v0, v7

    goto :goto_0

    :catch_1
    move-exception v6

    move-object v0, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method


# virtual methods
.method public log(ILjava/lang/String;Ljava/lang/String;IIZZILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/android/server/SKLogger;->getCurrentLogLevel()I

    move-result v0

    sget v3, Lcom/android/server/SKLogger;->LOG_LEVEL_OFF:I

    if-ne v0, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v3, Lcom/android/server/SKLogger;->LOG_LEVEL_DENIALS:I

    if-ne v0, v3, :cond_2

    if-gez p1, :cond_0

    :cond_2
    sget v3, Lcom/android/server/SKLogger;->LOG_LEVEL_ALL:I

    if-eq v0, v3, :cond_3

    const/4 v3, 0x1

    if-eq p7, v3, :cond_0

    :cond_3
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/text/format/Time;->set(J)V

    const-string v3, "%d.%m.%Y %H:%M:%S"

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    if-ltz p1, :cond_4

    const-string v1, "SK-Allowed <"

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%d.%m.%Y %H:%M:%S"

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "srcInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "containerAllowed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "DestInfo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "dest_service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dest_method="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/server/SKLogger;->mLogger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "SK-Denied <"

    goto/16 :goto_1
.end method
