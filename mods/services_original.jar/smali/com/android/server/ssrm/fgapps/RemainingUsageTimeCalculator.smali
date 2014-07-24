.class public final Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;
.super Ljava/lang/Object;
.source "RemainingUsageTimeCalculator.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field public static mFinalRemainingTime:[I


# instance fields
.field final CALCULATION_PERIOD:I

.field CURRENT_USAGE_TIME_TABLE:[I

.field private final DATABASE_PATH:Ljava/lang/String;

.field final DATA_D:I

.field final DATA_S:I

.field final DATA_T:I

.field DEFAULT_MODEL_PARAMETERS:[I

.field HIGH_LIMIT_PERCECTAGE:I

.field LOW_LIMIT_PERCECTAGE:I

.field final MAX_DATA_NUMBER:I

.field final MAX_HISTORY_NUMBER:I

.field final MODE_BASIC:I

.field final MODE_POWER_SAVING:I

.field final MODE_ULTRA_POWER_SAVING:I

.field final db:Lcom/android/server/ssrm/fgapps/UsageTimeDatabase;

.field mCheckUpdateCount:I

.field final mContext:Landroid/content/Context;

.field mCurrentMode:I

.field mEndLevel:I

.field mEndTime:J

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mIsInitialized:Z

.field mRemainingUsageTime:[[Ljava/lang/String;

.field mStartLevel:I

.field mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SSRMv2:RemainingUsageTimeCalculator"

    sput-object v0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->TAG:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mFinalRemainingTime:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v0, -0x1

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mStartLevel:I

    iput v0, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mEndLevel:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mStartTime:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mEndTime:J

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mIsInitialized:Z

    iput v2, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->MODE_BASIC:I

    iput v4, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->MODE_POWER_SAVING:I

    iput v6, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->MODE_ULTRA_POWER_SAVING:I

    iput v2, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mCurrentMode:I

    iput v2, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->DATA_D:I

    iput v4, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->DATA_S:I

    iput v6, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->DATA_T:I

    iput v5, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->MAX_DATA_NUMBER:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->MAX_HISTORY_NUMBER:I

    iput v4, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->CALCULATION_PERIOD:I

    new-array v0, v5, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->CURRENT_USAGE_TIME_TABLE:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->DEFAULT_MODEL_PARAMETERS:[I

    const/16 v0, 0x32

    iput v0, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->LOW_LIMIT_PERCECTAGE:I

    const/16 v0, 0x78

    iput v0, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->HIGH_LIMIT_PERCECTAGE:I

    const/4 v0, 0x7

    filled-new-array {v0, v5}, [I

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mRemainingUsageTime:[[Ljava/lang/String;

    const-string v0, "/data/system/rut.db"

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->DATABASE_PATH:Ljava/lang/String;

    new-instance v0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator$1;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator$1;-><init>(Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mContext:Landroid/content/Context;

    iput v2, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mCheckUpdateCount:I

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/UsageTimeDatabase;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/fgapps/UsageTimeDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->db:Lcom/android/server/ssrm/fgapps/UsageTimeDatabase;

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->initRemainingTimeHistoryDatabase()V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    nop

    :array_0
    .array-data 0x4
        0x49t 0x1t 0x0t 0x0t
        0xb0t 0x2t 0x0t 0x0t
        0x38t 0x3t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0xb0t 0x2t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getRemainUsageTime(I)I
    .locals 1

    sget-object v0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mFinalRemainingTime:[I

    aget v0, v0, p0

    return v0
.end method


# virtual methods
.method calculationRemainingUsageTime()V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x2

    const/4 v10, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v5, 0x7

    if-ge v0, v5, :cond_0

    iget-object v5, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mRemainingUsageTime:[[Ljava/lang/String;

    aget-object v5, v5, v0

    aget-object v5, v5, v12

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mRemainingUsageTime:[[Ljava/lang/String;

    aget-object v7, v7, v0

    aget-object v7, v7, v11

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    mul-long/2addr v5, v7

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mRemainingUsageTime:[[Ljava/lang/String;

    aget-object v5, v5, v0

    aget-object v5, v5, v12

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    div-long v5, v3, v1

    iget-object v7, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->CURRENT_USAGE_TIME_TABLE:[I

    aget v7, v7, v10

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    sget-object v5, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mFinalRemainingTime:[I

    iget-object v6, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->CURRENT_USAGE_TIME_TABLE:[I

    aget v6, v6, v10

    iget v7, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mEndLevel:I

    mul-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x3c

    aput v6, v5, v10

    :goto_1
    sget-object v5, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mFinalRemainingTime:[I

    sget-object v6, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mFinalRemainingTime:[I

    aget v6, v6, v10

    iget-object v7, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->DEFAULT_MODEL_PARAMETERS:[I

    aget v7, v7, v11

    mul-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x64

    aput v6, v5, v12

    sget-object v5, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mFinalRemainingTime:[I

    sget-object v6, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mFinalRemainingTime:[I

    aget v6, v6, v10

    iget-object v7, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->DEFAULT_MODEL_PARAMETERS:[I

    const/4 v8, 0x3

    aget v7, v7, v8

    mul-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x64

    aput v6, v5, v11

    const-wide/16 v3, 0x0

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    :goto_2
    sget-object v5, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mFinalRemainingTime:[I

    array-length v5, v5

    if-ge v0, v5, :cond_3

    sget-object v5, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mFinalRemainingTime["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mFinalRemainingTime:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mFinalRemainingTime:[I

    aget v7, v7, v0

    div-int/lit16 v7, v7, 0x5a0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " days : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mFinalRemainingTime:[I

    aget v7, v7, v0

    rem-int/lit16 v7, v7, 0x5a0

    div-int/lit8 v7, v7, 0x3c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " hours : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mFinalRemainingTime:[I

    aget v7, v7, v0

    rem-int/lit16 v7, v7, 0x5a0

    rem-int/lit8 v7, v7, 0x3c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " minutes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    div-long v5, v3, v1

    iget-object v7, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->CURRENT_USAGE_TIME_TABLE:[I

    aget v7, v7, v11

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    sget-object v5, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mFinalRemainingTime:[I

    iget-object v6, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->CURRENT_USAGE_TIME_TABLE:[I

    aget v6, v6, v11

    iget v7, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mEndLevel:I

    mul-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x3c

    aput v6, v5, v10

    goto/16 :goto_1

    :cond_2
    sget-object v5, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mFinalRemainingTime:[I

    iget v6, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mEndLevel:I

    int-to-long v6, v6

    mul-long/2addr v6, v3

    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v1

    div-long/2addr v6, v8

    long-to-int v6, v6

    aput v6, v5, v10

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method checkCurrentMode()Z
    .locals 2

    const/4 v0, -0x1

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isPowerSavingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mCurrentMode:I

    if-ne v1, v0, :cond_2

    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_0
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isUltraPowerSavingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iput v0, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mCurrentMode:I

    const/4 v1, 0x1

    goto :goto_1
.end method

.method createRemainUsageTimeHistory()V
    .locals 7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x7

    if-ge v1, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0001-01-01,100,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->CURRENT_USAGE_TIME_TABLE:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mRemainingUsageTime:[[Ljava/lang/String;

    aput-object v3, v4, v1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->db:Lcom/android/server/ssrm/fgapps/UsageTimeDatabase;

    invoke-virtual {v4, v2}, Lcom/android/server/ssrm/fgapps/UsageTimeDatabase;->writeLog(Ljava/util/ArrayList;)V

    return-void
.end method

.method initDefaultModeParameters()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->CURRENT_USAGE_TIME_TABLE:[I

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->DEFAULT_MODEL_PARAMETERS:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->DEFAULT_MODEL_PARAMETERS:[I

    aget v2, v2, v3

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    aput v1, v0, v3

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->CURRENT_USAGE_TIME_TABLE:[I

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->CURRENT_USAGE_TIME_TABLE:[I

    aget v1, v1, v3

    iget v2, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->LOW_LIMIT_PERCECTAGE:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    aput v1, v0, v4

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->CURRENT_USAGE_TIME_TABLE:[I

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->CURRENT_USAGE_TIME_TABLE:[I

    aget v2, v2, v3

    iget v3, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->HIGH_LIMIT_PERCECTAGE:I

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x64

    aput v2, v0, v1

    return-void
.end method

.method initRemainingTimeHistoryDatabase()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->initDefaultModeParameters()V

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/rut.db"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->createRemainUsageTimeHistory()V

    :goto_0
    :try_start_0
    sget-object v4, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->TAG:Ljava/lang/String;

    const-string v5, "/sys/class/power_supply/battery/capacity"

    invoke-static {v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mStartLevel:I

    iput v0, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mEndLevel:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mEndTime:J

    iput-wide v4, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mStartTime:J

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->calculationRemainingUsageTime()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->readRemainUsageTimeHistory()V

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method initStartChecking(I)V
    .locals 2

    iput p1, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mStartLevel:I

    iput p1, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mEndLevel:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mEndTime:J

    iput-wide v0, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mStartTime:J

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->calculationRemainingUsageTime()V

    return-void
.end method

.method public onBatteryChange(I)V
    .locals 6

    const-wide/16 v0, -0x1

    iget v2, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mEndLevel:I

    iput v2, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mStartLevel:I

    iput p1, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mEndLevel:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mEndTime:J

    iget-wide v2, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mEndTime:J

    iget-wide v4, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mStartTime:J

    sub-long/2addr v2, v4

    iget v4, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mStartLevel:I

    iget v5, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mEndLevel:I

    sub-int/2addr v4, v5

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    div-long v0, v2, v4

    iget-wide v2, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mEndTime:J

    iput-wide v2, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->updateRemainUsageTimeWithHistory(J)V

    goto :goto_0
.end method

.method readRemainUsageTimeHistory()V
    .locals 10

    const/4 v9, 0x7

    const/4 v0, 0x0

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->db:Lcom/android/server/ssrm/fgapps/UsageTimeDatabase;

    invoke-virtual {v7}, Lcom/android/server/ssrm/fgapps/UsageTimeDatabase;->readLog()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v7, v5

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    const/4 v7, 0x0

    aget-object v7, v5, v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    aget-object v7, v5, v7

    if-eqz v7, :cond_0

    const/4 v7, 0x2

    aget-object v7, v5, v7

    if-nez v7, :cond_2

    :cond_0
    if-eq v0, v9, :cond_1

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->createRemainUsageTimeHistory()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    if-ge v0, v9, :cond_3

    iget-object v7, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mRemainingUsageTime:[[Ljava/lang/String;

    aput-object v5, v7, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/io/File;

    const-string v7, "/data/system/rut.db"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->createRemainUsageTimeHistory()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method updateRemainTimeHistoryFile()V
    .locals 6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget v3, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mCheckUpdateCount:I

    rem-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mCheckUpdateCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mCheckUpdateCount:I

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const/4 v3, 0x7

    if-ge v1, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mRemainingUsageTime:[[Ljava/lang/String;

    aget-object v4, v4, v1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mRemainingUsageTime:[[Ljava/lang/String;

    aget-object v4, v4, v1

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mRemainingUsageTime:[[Ljava/lang/String;

    aget-object v4, v4, v1

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mCheckUpdateCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mCheckUpdateCount:I

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->db:Lcom/android/server/ssrm/fgapps/UsageTimeDatabase;

    invoke-virtual {v3, v2}, Lcom/android/server/ssrm/fgapps/UsageTimeDatabase;->writeLog(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method updateRemainUsageTimeWithHistory(J)V
    .locals 18

    const/4 v5, 0x0

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v11, "yyyy-MM-dd"

    invoke-direct {v2, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mEndTime:J

    invoke-direct {v4, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mCurrentMode:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    const-wide/16 v11, 0x64

    mul-long v11, v11, p1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->DEFAULT_MODEL_PARAMETERS:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    int-to-long v13, v13

    div-long p1, v11, v13

    :cond_0
    :goto_0
    sget-object v11, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "curEndDate = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", Level Diff = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mEndLevel:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mStartLevel:I

    sub-int/2addr v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mDuration = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p1

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    :goto_1
    const/4 v11, 0x7

    if-ge v6, v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mRemainingUsageTime:[[Ljava/lang/String;

    aget-object v11, v11, v6

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mRemainingUsageTime:[[Ljava/lang/String;

    aget-object v11, v11, v6

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mRemainingUsageTime:[[Ljava/lang/String;

    aget-object v11, v11, v6

    const/4 v12, 0x2

    aget-object v11, v11, v12

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mRemainingUsageTime:[[Ljava/lang/String;

    aget-object v11, v11, v6

    const/4 v12, 0x0

    aput-object v3, v11, v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mRemainingUsageTime:[[Ljava/lang/String;

    aget-object v11, v11, v6

    const/4 v12, 0x1

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v14, 0x1

    add-long/2addr v14, v7

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mRemainingUsageTime:[[Ljava/lang/String;

    aget-object v11, v11, v6

    const/4 v12, 0x2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    mul-long v14, v9, v7

    add-long v14, v14, p1

    const-wide/16 v16, 0x1

    add-long v16, v16, v7

    div-long v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->calculationRemainingUsageTime()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->updateRemainTimeHistoryFile()V

    :cond_1
    if-nez v5, :cond_5

    const/4 v6, 0x1

    :goto_2
    const/4 v11, 0x7

    if-ge v6, v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mRemainingUsageTime:[[Ljava/lang/String;

    add-int/lit8 v12, v6, -0x1

    aget-object v11, v11, v12

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mRemainingUsageTime:[[Ljava/lang/String;

    aget-object v14, v14, v6

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v13, v11, v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mRemainingUsageTime:[[Ljava/lang/String;

    add-int/lit8 v12, v6, -0x1

    aget-object v11, v11, v12

    const/4 v12, 0x1

    new-instance v13, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mRemainingUsageTime:[[Ljava/lang/String;

    aget-object v14, v14, v6

    const/4 v15, 0x1

    aget-object v14, v14, v15

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v13, v11, v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mRemainingUsageTime:[[Ljava/lang/String;

    add-int/lit8 v12, v6, -0x1

    aget-object v11, v11, v12

    const/4 v12, 0x2

    new-instance v13, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mRemainingUsageTime:[[Ljava/lang/String;

    aget-object v14, v14, v6

    const/4 v15, 0x2

    aget-object v14, v14, v15

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v13, v11, v12

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mCurrentMode:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    const-wide/16 v11, 0x64

    mul-long v11, v11, p1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->DEFAULT_MODEL_PARAMETERS:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    int-to-long v13, v13

    div-long p1, v11, v13

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mRemainingUsageTime:[[Ljava/lang/String;

    const/4 v12, 0x6

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aput-object v3, v11, v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mRemainingUsageTime:[[Ljava/lang/String;

    const/4 v12, 0x6

    aget-object v11, v11, v12

    const/4 v12, 0x1

    const-string v13, "1"

    aput-object v13, v11, v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mRemainingUsageTime:[[Ljava/lang/String;

    const/4 v12, 0x6

    aget-object v11, v11, v12

    const/4 v12, 0x2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p1

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->calculationRemainingUsageTime()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->updateRemainTimeHistoryFile()V

    :cond_5
    return-void
.end method
