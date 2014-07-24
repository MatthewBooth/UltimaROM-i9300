.class Lcom/android/server/ssrm/PredictedSurfaceTemperature;
.super Ljava/lang/Object;
.source "PredictedSurfaceTemperature.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final DEBUG:Z = false

.field private static final DEFAULT_TEMP:I = 0x12c

.field private static DEFAULT_WINDOW_SIZE:I = 0x0

.field private static LONG_RANGE_TEMP:I = 0x0

.field private static LONG_WINDOW_SIZE:I = 0x0

.field static final TAG:Ljava/lang/String; = "TemperatureCalculator"

.field private static initNumber:I

.field private static initWindowSize:Z

.field private static isInitComplete:Z

.field private static mCalculatedTemperature:I

.field private static mPST:I

.field private static wMean:[I

.field private static windowSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->DEBUG:Z

    const/16 v0, 0x1ea

    sput v0, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->LONG_RANGE_TEMP:I

    const/16 v0, 0x1e

    sput v0, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->LONG_WINDOW_SIZE:I

    const/16 v0, 0xa

    sput v0, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->DEFAULT_WINDOW_SIZE:I

    sget v0, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->DEFAULT_WINDOW_SIZE:I

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->wMean:[I

    sput v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->initNumber:I

    sget v0, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->DEFAULT_WINDOW_SIZE:I

    sput v0, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->windowSize:I

    sput v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mCalculatedTemperature:I

    sput v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mPST:I

    sput-boolean v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->isInitComplete:Z

    sput-boolean v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->initWindowSize:Z

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/ssrm_v2.pst_init"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->changePstInitalValues()V

    :cond_0
    return-void
.end method

.method public static checkNeedToChangeWindowSize(I)V
    .locals 6

    const/4 v5, 0x0

    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->LONG_RANGE_TEMP:I

    if-lt p0, v2, :cond_3

    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->windowSize:I

    sget v3, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->LONG_WINDOW_SIZE:I

    if-eq v2, v3, :cond_2

    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->LONG_WINDOW_SIZE:I

    sput v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->windowSize:I

    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->DEFAULT_WINDOW_SIZE:I

    new-array v1, v2, [I

    sget-object v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->wMean:[I

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    sput v5, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mCalculatedTemperature:I

    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->LONG_WINDOW_SIZE:I

    new-array v2, v2, [I

    sput-object v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->wMean:[I

    const/4 v0, 0x0

    :goto_0
    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->LONG_WINDOW_SIZE:I

    if-ge v0, v2, :cond_1

    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->DEFAULT_WINDOW_SIZE:I

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->wMean:[I

    aget v3, v1, v0

    aput v3, v2, v0

    :goto_1
    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mCalculatedTemperature:I

    sget-object v3, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->wMean:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    sput v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mCalculatedTemperature:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->wMean:[I

    aput p0, v2, v0

    goto :goto_1

    :cond_1
    sput v5, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->initNumber:I

    :cond_2
    :goto_2
    return-void

    :cond_3
    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->windowSize:I

    sget v3, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->DEFAULT_WINDOW_SIZE:I

    if-eq v2, v3, :cond_2

    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->DEFAULT_WINDOW_SIZE:I

    sput v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->windowSize:I

    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->LONG_WINDOW_SIZE:I

    new-array v1, v2, [I

    sget-object v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->wMean:[I

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    sput v5, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mCalculatedTemperature:I

    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->DEFAULT_WINDOW_SIZE:I

    new-array v2, v2, [I

    sput-object v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->wMean:[I

    const/4 v0, 0x0

    :goto_3
    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->DEFAULT_WINDOW_SIZE:I

    if-ge v0, v2, :cond_4

    sget-object v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->wMean:[I

    sget v3, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->LONG_WINDOW_SIZE:I

    sget v4, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->DEFAULT_WINDOW_SIZE:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v0

    aget v3, v1, v3

    aput v3, v2, v0

    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mCalculatedTemperature:I

    sget-object v3, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->wMean:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    sput v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mCalculatedTemperature:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    sput v5, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->initNumber:I

    goto :goto_2
.end method


# virtual methods
.method public WeightedMean(I)I
    .locals 6

    const/4 v5, 0x1

    const/16 v1, -0x64

    if-lez p1, :cond_0

    const/16 v2, 0x3e8

    if-lt p1, v2, :cond_1

    :cond_0
    const/16 v2, 0x12c

    :goto_0
    return v2

    :cond_1
    sget-boolean v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->isInitComplete:Z

    if-nez v2, :cond_5

    sget-boolean v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->initWindowSize:Z

    if-nez v2, :cond_3

    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->DEFAULT_WINDOW_SIZE:I

    new-array v2, v2, [I

    sput-object v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->wMean:[I

    const/4 v0, 0x0

    :goto_1
    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->DEFAULT_WINDOW_SIZE:I

    if-ge v0, v2, :cond_2

    sget-object v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->wMean:[I

    aput p1, v2, v0

    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mCalculatedTemperature:I

    sget-object v3, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->wMean:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    sput v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mCalculatedTemperature:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    sput-boolean v5, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->initWindowSize:Z

    :cond_3
    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mCalculatedTemperature:I

    sget-object v3, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->wMean:[I

    sget v4, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->initNumber:I

    aget v3, v3, v4

    sub-int/2addr v2, v3

    sput v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mCalculatedTemperature:I

    sget-object v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->wMean:[I

    sget v3, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->initNumber:I

    aput p1, v2, v3

    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mCalculatedTemperature:I

    add-int/2addr v2, p1

    sput v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mCalculatedTemperature:I

    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->initNumber:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->initNumber:I

    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->initNumber:I

    sget v3, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->windowSize:I

    if-ne v2, v3, :cond_4

    sput-boolean v5, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->isInitComplete:Z

    :cond_4
    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mCalculatedTemperature:I

    sget v3, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->windowSize:I

    div-int/2addr v2, v3

    goto :goto_0

    :cond_5
    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->initNumber:I

    sget v3, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->windowSize:I

    if-ne v2, v3, :cond_6

    const/4 v2, 0x0

    sput v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->initNumber:I

    :cond_6
    sget-object v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->wMean:[I

    sget v3, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->initNumber:I

    aget v1, v2, v3

    sget-object v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->wMean:[I

    sget v3, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->initNumber:I

    aput p1, v2, v3

    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mCalculatedTemperature:I

    sub-int/2addr v2, v1

    sput v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mCalculatedTemperature:I

    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mCalculatedTemperature:I

    add-int/2addr v2, p1

    sput v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mCalculatedTemperature:I

    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->initNumber:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->initNumber:I

    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mCalculatedTemperature:I

    sget v3, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->windowSize:I

    div-int/2addr v2, v3

    sput v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mPST:I

    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mPST:I

    invoke-static {v2}, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->checkNeedToChangeWindowSize(I)V

    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mPST:I

    goto/16 :goto_0
.end method

.method changePstInitalValues()V
    .locals 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/data/system/ssrm_v2.pst_init"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v3, "long_range_temp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->LONG_RANGE_TEMP:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_2
    const-string v3, "TemperatureCalculator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INIT Value change :: LONG_RANGE_TEMP = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->LONG_RANGE_TEMP:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , LONG_WINDOW_SIZE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->LONG_WINDOW_SIZE:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , DEFAULT_WINDOW_SIZE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->DEFAULT_WINDOW_SIZE:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :try_start_3
    const-string v3, "long_window_size"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->LONG_WINDOW_SIZE:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v3

    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_4
    throw v3

    :cond_4
    :try_start_5
    const-string v3, "default_window_size"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->DEFAULT_WINDOW_SIZE:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_6
    :goto_5
    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_2

    :catch_2
    move-exception v4

    goto :goto_4

    :catch_3
    move-exception v3

    goto :goto_5

    :catchall_1
    move-exception v3

    goto :goto_3

    :catch_4
    move-exception v3

    goto :goto_1
.end method

.method resetTemperature(I)V
    .locals 4

    const-string v1, "TemperatureCalculator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetTemperature:: t = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->wMean:[I

    if-eqz v1, :cond_1

    const-string v1, "TemperatureCalculator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetTemperature:: wMean.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->wMean:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->wMean:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->wMean:[I

    aput p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->windowSize:I

    mul-int/2addr v1, p1

    sput v1, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mCalculatedTemperature:I

    :cond_1
    return-void
.end method
