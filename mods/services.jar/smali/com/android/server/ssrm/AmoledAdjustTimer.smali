.class public final Lcom/android/server/ssrm/AmoledAdjustTimer;
.super Ljava/lang/Object;
.source "AmoledAdjustTimer.java"


# static fields
.field private static currTemp:I

.field private static lastValue:I

.field private static prevTemp:I

.field private static sInstance:Lcom/android/server/ssrm/AmoledAdjustTimer;


# instance fields
.field final INPUT_PATH:Ljava/lang/String;

.field final OUTPUT_PATH:Ljava/lang/String;

.field final TAG:Ljava/lang/String;

.field TEMP_TABLE:[I

.field currentTempFile:Ljava/io/File;

.field mDevSysProperty:Lcom/android/server/ssrm/DevSysProperty;

.field mInputPathExist:Z

.field mOutputPathExist:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0xc8

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/AmoledAdjustTimer;->sInstance:Lcom/android/server/ssrm/AmoledAdjustTimer;

    sput v1, Lcom/android/server/ssrm/AmoledAdjustTimer;->prevTemp:I

    sput v1, Lcom/android/server/ssrm/AmoledAdjustTimer;->currTemp:I

    const/16 v0, 0x64

    sput v0, Lcom/android/server/ssrm/AmoledAdjustTimer;->lastValue:I

    return-void
.end method

.method private constructor <init>()V
    .locals 13

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v9, "AmoledAdjustTimer"

    iput-object v9, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->TAG:Ljava/lang/String;

    new-instance v9, Lcom/android/server/ssrm/DevSysProperty;

    invoke-direct {v9}, Lcom/android/server/ssrm/DevSysProperty;-><init>()V

    iput-object v9, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mDevSysProperty:Lcom/android/server/ssrm/DevSysProperty;

    iput-boolean v11, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mInputPathExist:Z

    iput-boolean v11, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mOutputPathExist:Z

    const-string v9, "/sys/class/power_supply/battery/temp"

    iput-object v9, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->INPUT_PATH:Ljava/lang/String;

    const-string v9, "/sys/class/lcd/panel/temperature"

    iput-object v9, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->OUTPUT_PATH:Ljava/lang/String;

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    new-instance v9, Ljava/io/File;

    const-string v12, "/sys/class/power_supply/battery/temp"

    invoke-direct {v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->currentTempFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v9, "/sys/class/power_supply/battery/temp"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v9, "/sys/class/lcd/panel/temperature"

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v9

    if-eqz v9, :cond_2

    move v9, v10

    :goto_0
    iput-boolean v9, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mInputPathExist:Z

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v9

    if-eqz v9, :cond_3

    :goto_1
    iput-boolean v10, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mOutputPathExist:Z

    iget-boolean v9, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mInputPathExist:Z

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mOutputPathExist:Z

    if-nez v9, :cond_4

    :cond_0
    const-string v9, "AmoledAdjustTimer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mInputPathExist = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mInputPathExist:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "AmoledAdjustTimer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mOutputPathExist = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mOutputPathExist:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v9, v11

    goto :goto_0

    :cond_3
    move v10, v11

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    const/4 v7, 0x0

    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    const-string v10, "/sys/class/lcd/panel/temperature"

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    if-eqz v5, :cond_5

    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_5
    :goto_3
    move-object v4, v5

    :cond_6
    :goto_4
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_9

    :cond_7
    const-string v9, "AmoledAdjustTimer"

    const-string v10, "failed to read /sys/class/lcd/panel/temperature"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v11, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mOutputPathExist:Z

    goto :goto_2

    :catch_0
    move-exception v2

    :goto_5
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_6

    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception v2

    :goto_6
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :catch_2
    move-exception v2

    :goto_7
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v4, :cond_6

    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    :catch_3
    move-exception v2

    goto :goto_6

    :catchall_0
    move-exception v9

    :goto_8
    if-eqz v4, :cond_8

    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_8
    :goto_9
    throw v9

    :cond_9
    const/4 v6, 0x0

    new-instance v8, Ljava/util/StringTokenizer;

    const-string v9, ", "

    invoke-direct {v8, v7, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_a

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    goto :goto_a

    :cond_a
    new-array v9, v6, [I

    iput-object v9, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    new-instance v8, Ljava/util/StringTokenizer;

    const-string v9, ", "

    invoke-direct {v8, v7, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_b
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v9, v3

    const-string v9, "AmoledAdjustTimer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TEMP_TABLE["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    aget v11, v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    :catchall_1
    move-exception v9

    move-object v4, v5

    goto :goto_8

    :catch_6
    move-exception v2

    move-object v4, v5

    goto :goto_7

    :catch_7
    move-exception v2

    move-object v4, v5

    goto/16 :goto_5
.end method

.method private getCurrentTemp()I
    .locals 8

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->currentTempFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v5

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v6, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mDevSysProperty:Lcom/android/server/ssrm/DevSysProperty;

    invoke-virtual {v6}, Lcom/android/server/ssrm/DevSysProperty;->getBatteryTemperature()I

    move-result v2

    const/16 v6, -0x3e7

    if-ne v2, v6, :cond_0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/sys/class/power_supply/battery/temp"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    move-result v2

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_3
    :goto_1
    move-object v0, v1

    :cond_4
    :goto_2
    move v2, v5

    goto :goto_0

    :catch_1
    move-exception v3

    :goto_3
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v0, :cond_5

    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_5
    :goto_5
    throw v5

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catchall_1
    move-exception v5

    move-object v0, v1

    goto :goto_4

    :catch_5
    move-exception v3

    move-object v0, v1

    goto :goto_3
.end method

.method public static getInstance()Lcom/android/server/ssrm/AmoledAdjustTimer;
    .locals 1

    sget-object v0, Lcom/android/server/ssrm/AmoledAdjustTimer;->sInstance:Lcom/android/server/ssrm/AmoledAdjustTimer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/ssrm/AmoledAdjustTimer;

    invoke-direct {v0}, Lcom/android/server/ssrm/AmoledAdjustTimer;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/AmoledAdjustTimer;->sInstance:Lcom/android/server/ssrm/AmoledAdjustTimer;

    :cond_0
    sget-object v0, Lcom/android/server/ssrm/AmoledAdjustTimer;->sInstance:Lcom/android/server/ssrm/AmoledAdjustTimer;

    return-object v0
.end method


# virtual methods
.method getStepByTemp(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    aget v1, v1, v0

    mul-int/lit8 v1, v1, 0xa

    if-ge p1, v1, :cond_1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method getStepByTemp2(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    aget v1, v1, v0

    mul-int/lit8 v1, v1, 0xa

    if-gt p1, v1, :cond_1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method getTempByStep(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public update()V
    .locals 7

    iget-boolean v3, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mInputPathExist:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mOutputPathExist:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/ssrm/AmoledAdjustTimer;->getCurrentTemp()I

    move-result v3

    sput v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->currTemp:I

    sget v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->prevTemp:I

    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/AmoledAdjustTimer;->getStepByTemp(I)I

    move-result v2

    sget v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->currTemp:I

    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/AmoledAdjustTimer;->getStepByTemp(I)I

    move-result v0

    const-string v3, "AmoledAdjustTimer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prevTemp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/ssrm/AmoledAdjustTimer;->prevTemp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", currTemp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/ssrm/AmoledAdjustTimer;->currTemp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", prevStep = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", currStep = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-le v2, v0, :cond_4

    sget v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->currTemp:I

    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/AmoledAdjustTimer;->getStepByTemp2(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/AmoledAdjustTimer;->getTempByStep(I)I

    move-result v1

    sget v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->lastValue:I

    if-eq v3, v1, :cond_2

    const-string v3, "AmoledAdjustTimer"

    const-string v4, "/sys/class/lcd/panel/temperature"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sput v1, Lcom/android/server/ssrm/AmoledAdjustTimer;->lastValue:I

    :cond_3
    :goto_1
    sget v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->currTemp:I

    sput v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->prevTemp:I

    goto :goto_0

    :cond_4
    if-ge v2, v0, :cond_3

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/AmoledAdjustTimer;->getTempByStep(I)I

    move-result v1

    sget v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->lastValue:I

    if-eq v3, v1, :cond_5

    const-string v3, "AmoledAdjustTimer"

    const-string v4, "/sys/class/lcd/panel/temperature"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    sput v1, Lcom/android/server/ssrm/AmoledAdjustTimer;->lastValue:I

    goto :goto_1
.end method
