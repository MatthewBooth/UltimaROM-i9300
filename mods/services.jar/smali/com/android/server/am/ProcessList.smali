.class final Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"


# static fields
.field static final BACKUP_APP_ADJ:I = 0x3

.field static final CACHED_APP_MAX_ADJ:I = 0xf

.field static final CACHED_APP_MIN_ADJ:I = 0x9

.field static DEBUG:Z = false

.field static DHA_INCREASE_THRESHOLD:J = 0x0L

.field static final DHA_MAX_MARGIN:J = 0x800000L

.field static final DHA_MIN_MARGIN:J = 0x400000L

.field static final FOREGROUND_APP_ADJ:I = 0x0

.field static final HEAVY_WEIGHT_APP_ADJ:I = 0x4

.field static final HOME_APP_ADJ:I = 0x6

.field static INIT_CACHED_APPS:I = 0x0

.field static INIT_EMPTY_APPS:I = 0x0

.field static MAX_CACHED_APPS:I = 0x0

.field static MAX_EMPTY_APPS:I = 0x0

.field static final MAX_EMPTY_TIME:J = 0x1b7740L

.field static MAX_KNOX_CACHED_APPS:I = 0x0

.field static MAX_KNOX_EMPTY_APPS:I = 0x0

.field static MID_EMPTY_APPS_FOR_DHA:I = 0x0

.field static MIN_CACHED_APPS:I = 0x0

.field static final MIN_CRASH_INTERVAL:I = 0xea60

.field static MIN_EMPTY_APPS_FOR_DHA:I = 0x0

.field static final NATIVE_ADJ:I = -0x11

.field static final PAGE_SIZE:I = 0x1000

.field static final PERCEPTIBLE_APP_ADJ:I = 0x2

.field static final PERSISTENT_PROC_ADJ:I = -0xc

.field static final PREVIOUS_APP_ADJ:I = 0x7

.field public static final PROC_MEM_CACHED:I = 0x4

.field public static final PROC_MEM_IMPORTANT:I = 0x2

.field public static final PROC_MEM_PERSISTENT:I = 0x0

.field public static final PROC_MEM_SERVICE:I = 0x3

.field public static final PROC_MEM_TOP:I = 0x1

.field public static final PSS_ALL_INTERVAL:I = 0x927c0

.field private static final PSS_FIRST_BACKGROUND_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_CACHED_INTERVAL:I = 0x7530

.field private static final PSS_FIRST_TOP_INTERVAL:I = 0x2710

.field public static final PSS_MAX_INTERVAL:I = 0x1b7740

.field public static final PSS_MIN_TIME_FROM_STATE_CHANGE:I = 0x3a98

.field private static final PSS_SAME_CACHED_INTERVAL:I = 0x1b7740

.field private static final PSS_SAME_IMPORTANT_INTERVAL:I = 0xdbba0

.field private static final PSS_SAME_SERVICE_INTERVAL:I = 0x124f80

.field private static final PSS_SHORT_INTERVAL:I = 0x1d4c0

.field static final SERVICE_ADJ:I = 0x5

.field static final SERVICE_B_ADJ:I = 0x8

.field static SMART_DHA_BG_APPS_MAX:I = 0x0

.field static final SMART_DHA_BG_APPS_MAX_HIGH:I = 0x28

.field static final SMART_DHA_BG_APPS_MAX_LOW:I = 0xf

.field static SMART_DHA_BG_APPS_MIN:I = 0x0

.field static final SMART_DHA_BG_APPS_MIN_HIGH:I = 0x1

.field static final SMART_DHA_MARGIN_MIN_HIGH:J = 0x2800000L

.field static final SMART_DHA_MARGIN_MIN_LOW:J = 0x1400000L

.field static final SYSTEM_ADJ:I = -0x10

#the value of this static final field might be set in the static constructor
.field static final TOTAL_DEVICE_MEMORY:J = 0x0L

.field static TRIM_CACHED_APPS:I = 0x0

.field static TRIM_CRITICAL_THRESHOLD:I = 0x0

.field static TRIM_EMPTY_APPS:I = 0x0

.field static TRIM_LOW_THRESHOLD:I = 0x0

.field static final UNKNOWN_ADJ:I = 0x10

.field static final VISIBLE_APP_ADJ:I = 0x1

.field private static mInfo:Lcom/android/internal/util/MemInfoReader;

.field static mMaxCached:I

.field private static final sFirstAwakePssTimes:[J

.field private static final sProcStateToProcMem:[I

.field private static final sSameAwakePssTimes:[J


# instance fields
.field private mCachedRestoreLevel:J

.field private mHaveDisplaySize:Z

.field private final mOomAdj:[I

.field private final mOomMinFree:[J

.field private final mOomMinFreeHigh:[J

.field private final mOomMinFreeLow:[J

.field private mSmartDHADefaultMargin:J

.field private mSmartDHAKswapdWatermark:J

.field private mSz2ndDHAThreshold:J

.field private mSzDHADefendThreshold:J

.field private mSzDHAStep:I

.field private mSzDHAThreshold:J

.field private mSzDHAThresholdRate:F

.field private mSzMidDHA:I

.field private mSzMidDHA2nd:I

.field private mSzMidDHA2ndStep:I

.field private mSzMidDHAStep:I

.field private mSzUpdateDHACount:I

.field private mSzUpdateDHAMaxCount:I

.field private final mTotalMemMb:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0xe

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/ProcessList;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-static {}, Lcom/android/server/am/ProcessList;->totalDeviceMemory()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-string v0, "ro.config.dha_cached_max"

    const-string v1, "6"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->INIT_CACHED_APPS:I

    const-string v0, "ro.config.dha_cached_min"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MIN_CACHED_APPS:I

    const-string v0, "ro.config.dha_cached_max"

    const-string v1, "6"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    const-string v0, "ro.config.dha_cached_max_knox"

    const-string v1, "6"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MAX_KNOX_CACHED_APPS:I

    const-string v0, "ro.config.dha_empty_init"

    const-string v1, "30"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->INIT_EMPTY_APPS:I

    const-string v0, "ro.config.dha_empty_min"

    const-string v1, "6"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    const-string v0, "ro.config.dha_empty_mid"

    const-string v1, "9"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MID_EMPTY_APPS_FOR_DHA:I

    const-string v0, "ro.config.dha_empty_max"

    const-string v1, "30"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    const-string v0, "ro.config.dha_empty_max_knox"

    const-string v1, "60"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MAX_KNOX_EMPTY_APPS:I

    sget v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    div-int/lit8 v0, v0, 0x3

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_EMPTY_APPS:I

    sget v0, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    div-int/lit8 v0, v0, 0x3

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_CACHED_APPS:I

    const/4 v0, 0x3

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_CRITICAL_THRESHOLD:I

    const/4 v0, 0x5

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_LOW_THRESHOLD:I

    sget v0, Lcom/android/server/am/ProcessList;->INIT_CACHED_APPS:I

    sput v0, Lcom/android/server/am/ProcessList;->mMaxCached:I

    const-wide/32 v0, 0x200000

    sput-wide v0, Lcom/android/server/am/ProcessList;->DHA_INCREASE_THRESHOLD:J

    const/16 v0, 0x28

    sput v0, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MAX:I

    const/4 v0, 0x1

    sput v0, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MIN:I

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    new-array v0, v2, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    new-array v0, v2, [J

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x8
        0xc0t 0xd4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc0t 0xd4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x10t 0x27t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x20t 0x4et 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x20t 0x4et 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x20t 0x4et 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x20t 0x4et 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x20t 0x4et 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x30t 0x75t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x30t 0x75t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x30t 0x75t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x30t 0x75t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x30t 0x75t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x30t 0x75t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x8
        0xa0t 0xbbt 0xdt 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xbbt 0xdt 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc0t 0xd4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xbbt 0xdt 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xbbt 0xdt 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xbbt 0xdt 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xbbt 0xdt 0x0t 0x0t 0x0t 0x0t 0x0t
        0x80t 0x4ft 0x12t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x80t 0x4ft 0x12t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0x77t 0x1bt 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0x77t 0x1bt 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0x77t 0x1bt 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0x77t 0x1bt 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0x77t 0x1bt 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    new-array v1, v3, [J

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[J

    new-array v1, v3, [J

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[J

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    const-wide/32 v1, 0x2000000

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    const-wide/32 v1, 0x1000000

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mSz2ndDHAThreshold:J

    const-wide/32 v1, 0x800000

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    iput v5, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    const/4 v1, 0x7

    iput v1, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHAMaxCount:I

    iput v3, p0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    iput v3, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sget v1, Lcom/android/server/am/ProcessList;->INIT_EMPTY_APPS:I

    iget v2, p0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v1, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v2, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2nd:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    const/high16 v1, 0x4000

    iput v1, p0, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    const-wide/32 v1, 0x1400000

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mSmartDHAKswapdWatermark:J

    const-wide/32 v1, 0x2800000

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mSmartDHADefaultMargin:J

    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v1

    const-wide/32 v3, 0x100000

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    invoke-direct {p0, v5, v5, v5}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x8
        0x0t 0x20t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x30t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x60t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x70t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x8
        0x0t 0xc0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0xf0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x20t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x50t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x80t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0xe0t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static appendRamKb(Ljava/lang/StringBuilder;J)V
    .locals 4

    const/4 v1, 0x0

    const/16 v0, 0xa

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    int-to-long v2, v0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    if-ne p2, p3, :cond_1

    if-nez p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-int v1, p2, p3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static computeNextPssTime(IZZJ)J
    .locals 3

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    :goto_0
    aget-wide v1, v0, p0

    add-long/2addr v1, p3

    return-wide v1

    :cond_0
    sget-object v0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    goto :goto_0
.end method

.method public static makeOomAdjString(I)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    const/16 v4, -0xc

    const/16 v3, -0x10

    const/16 v1, -0x11

    const/4 v2, 0x0

    const/16 v0, 0x9

    if-lt p0, v0, :cond_0

    const-string v0, "cch"

    const-string v1, "  "

    const/16 v2, 0x9

    invoke-static {v0, v1, p0, v2}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x8

    if-lt p0, v0, :cond_1

    const-string/jumbo v0, "svcb "

    const/16 v1, 0x8

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    if-lt p0, v0, :cond_2

    const-string v0, "prev "

    const/4 v1, 0x7

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    if-lt p0, v0, :cond_3

    const-string v0, "home "

    const/4 v1, 0x6

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    if-lt p0, v0, :cond_4

    const-string/jumbo v0, "svc  "

    const/4 v1, 0x5

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    if-lt p0, v0, :cond_5

    const-string v0, "hvy  "

    const/4 v1, 0x4

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    if-lt p0, v0, :cond_6

    const-string v0, "bkup "

    const/4 v1, 0x3

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const/4 v0, 0x2

    if-lt p0, v0, :cond_7

    const-string v0, "prcp "

    const/4 v1, 0x2

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    if-lt p0, v5, :cond_8

    const-string/jumbo v0, "vis  "

    invoke-static {v0, v2, p0, v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_8
    if-ltz p0, :cond_9

    const-string v0, "fore "

    const/4 v1, 0x0

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_9
    if-lt p0, v4, :cond_a

    const-string v0, "pers "

    invoke-static {v0, v2, p0, v4}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_a
    if-lt p0, v3, :cond_b

    const-string/jumbo v0, "sys  "

    invoke-static {v0, v2, p0, v3}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_b
    if-lt p0, v1, :cond_c

    const-string v0, "ntv  "

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static makeProcStateString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "??"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "N "

    goto :goto_0

    :pswitch_1
    const-string v0, "P "

    goto :goto_0

    :pswitch_2
    const-string v0, "PU"

    goto :goto_0

    :pswitch_3
    const-string v0, "T "

    goto :goto_0

    :pswitch_4
    const-string v0, "IF"

    goto :goto_0

    :pswitch_5
    const-string v0, "IB"

    goto :goto_0

    :pswitch_6
    const-string v0, "BU"

    goto :goto_0

    :pswitch_7
    const-string v0, "HW"

    goto :goto_0

    :pswitch_8
    const-string v0, "S "

    goto :goto_0

    :pswitch_9
    const-string v0, "R "

    goto :goto_0

    :pswitch_a
    const-string v0, "HO"

    goto :goto_0

    :pswitch_b
    const-string v0, "LA"

    goto :goto_0

    :pswitch_c
    const-string v0, "CA"

    goto :goto_0

    :pswitch_d
    const-string v0, "Ca"

    goto :goto_0

    :pswitch_e
    const-string v0, "CE"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public static procStatesDifferForMem(II)Z
    .locals 2

    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v0, v0, p0

    sget-object v1, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v1, v1, p1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static totalDeviceMemory()J
    .locals 4

    sget-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    :cond_0
    sget-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    sget-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private updateOomLevels(IIZ)V
    .locals 31

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x12c

    sub-long v25, v25, v27

    move-wide/from16 v0, v25

    long-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x43c8

    div-float v24, v25, v26

    const v15, 0x5dc00

    const v13, 0xfa000

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v25

    if-nez v25, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x600

    cmp-long v25, v25, v27

    if-gez v25, :cond_1

    mul-int v25, p1, p2

    const v26, 0xfa000

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x12c

    sub-long v25, v25, v27

    move-wide/from16 v0, v25

    long-to-float v0, v0

    move/from16 v25, v0

    const v26, 0x44b54000

    div-float v24, v25, v26

    const v15, 0x25800

    const v13, 0x1fa400

    :cond_1
    mul-int v25, p1, p2

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    int-to-float v0, v15

    move/from16 v26, v0

    sub-float v25, v25, v26

    sub-int v26, v13, v15

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v23, v25, v26

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    cmpl-float v25, v24, v23

    if-lez v25, :cond_4

    move/from16 v22, v24

    :goto_0
    const-string v25, "ro.config.dha_lmk_scale"

    const-string v26, "-1"

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    const/high16 v25, -0x4080

    cmpl-float v25, v6, v25

    if-eqz v25, :cond_2

    move/from16 v22, v6

    :cond_2
    const/16 v25, 0x0

    cmpg-float v25, v22, v25

    if-gez v25, :cond_5

    const/16 v22, 0x0

    :cond_3
    :goto_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x10e0009

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x10e0008

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v16

    const/4 v9, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v9, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[J

    move-object/from16 v25, v0

    aget-wide v10, v25, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[J

    move-object/from16 v25, v0

    aget-wide v7, v25, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v25, v0

    long-to-float v0, v10

    move/from16 v26, v0

    sub-long v27, v7, v10

    move-wide/from16 v0, v27

    long-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v22

    add-float v26, v26, v27

    move/from16 v0, v26

    float-to-long v0, v0

    move-wide/from16 v26, v0

    aput-wide v26, v25, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    move/from16 v22, v23

    goto :goto_0

    :cond_5
    const/high16 v25, 0x3f80

    cmpl-float v25, v22, v25

    if-lez v25, :cond_3

    const/high16 v22, 0x3f80

    goto :goto_1

    :cond_6
    if-ltz v16, :cond_7

    const/4 v9, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v9, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v25, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v27, v0

    aget-wide v27, v27, v9

    move-wide/from16 v0, v27

    long-to-float v0, v0

    move/from16 v27, v0

    mul-float v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    aget-wide v27, v27, v28

    move-wide/from16 v0, v27

    long-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    move/from16 v0, v26

    float-to-long v0, v0

    move-wide/from16 v26, v0

    aput-wide v26, v25, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_7
    if-eqz v17, :cond_9

    const/4 v9, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v9, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v25, v0

    aget-wide v26, v25, v9

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v29, v0

    aget-wide v29, v29, v9

    move-wide/from16 v0, v29

    long-to-float v0, v0

    move/from16 v29, v0

    mul-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x1

    aget-wide v29, v29, v30

    move-wide/from16 v0, v29

    long-to-float v0, v0

    move/from16 v29, v0

    div-float v28, v28, v29

    move/from16 v0, v28

    float-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v26, v26, v28

    aput-wide v26, v25, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v25, v0

    aget-wide v25, v25, v9

    const-wide/16 v27, 0x0

    cmp-long v25, v25, v27

    if-gez v25, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v25, v0

    const-wide/16 v26, 0x0

    aput-wide v26, v25, v9

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_9
    const/16 v25, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v25

    const-wide/16 v27, 0x400

    div-long v25, v25, v27

    const-wide/16 v27, 0x3

    div-long v25, v25, v27

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    const/4 v9, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v9, v0, :cond_b

    if-lez v9, :cond_a

    const/16 v25, 0x2c

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v25, 0x2c

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v25, v0

    aget v25, v25, v9

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v25, v0

    aget-wide v25, v25, v9

    const-wide/16 v27, 0x400

    mul-long v25, v25, v27

    const-wide/16 v27, 0x1000

    div-long v25, v25, v27

    move-wide/from16 v0, v25

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_b
    mul-int v25, p1, p2

    mul-int/lit8 v25, v25, 0x4

    mul-int/lit8 v25, v25, 0x3

    move/from16 v0, v25

    div-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x10e000b

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v21

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x10e000a

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v20

    if-ltz v20, :cond_c

    move/from16 v19, v20

    :cond_c
    if-eqz v21, :cond_d

    add-int v19, v19, v21

    if-gez v19, :cond_d

    const/16 v19, 0x0

    :cond_d
    if-eqz p3, :cond_e

    const-string v25, "/sys/module/lowmemorykiller/parameters/adj"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ProcessList;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    const-string v25, "/sys/module/lowmemorykiller/parameters/minfree"

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ProcessList;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v25, "sys.sysctl.extra_free_kbytes"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    const/16 v25, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    const/16 v25, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mSz2ndDHAThreshold:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[J

    move-object/from16 v25, v0

    const/16 v26, 0x3

    aget-wide v25, v25, v26

    const-wide/16 v27, 0x400

    mul-long v25, v25, v27

    move-wide/from16 v0, v25

    long-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, v22

    move/from16 v0, v25

    float-to-long v0, v0

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    const-string v25, "ro.com.google.gmsversion"

    const-string v26, "none"

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v26, "none"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_f

    const-string v25, "ro.config.dha_empty_max"

    const-string v26, "30"

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    add-int/lit8 v25, v25, 0xc

    sput v25, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    const-string v25, "DHA_PROPERTY"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "No GMS,  MAX_EMPTY_APPS = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget v27, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v5

    const-string v25, "persona"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/PersonaManager;

    invoke-virtual {v12}, Landroid/os/PersonaManager;->getPersonas()Ljava/util/List;

    move-result-object v18

    if-eqz v18, :cond_10

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v25

    if-lez v25, :cond_10

    sget v25, Lcom/android/server/am/ProcessList;->MAX_KNOX_CACHED_APPS:I

    sput v25, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    sget v25, Lcom/android/server/am/ProcessList;->MAX_KNOX_EMPTY_APPS:I

    sput v25, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    const-string v25, "DHA_PROPERTY"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "KNOX is installed. MAX_CACHED_APPS = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget v27, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " , MAX_EMPTY_APPS = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget v27, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const-string v25, "ro.config.dha_update_max_count"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzUpdateDHAMaxCount:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ProcessList;->mSzUpdateDHAMaxCount:I

    const-string v25, "ro.config.dha_mid_step"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    const-string v25, "ro.config.dha_mid_2nd_step"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    const-string v25, "ro.config.dha_step"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    const-string v25, "ro.config.dha_th_rate"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    const-string v25, "ro.config.dha_th_level"

    const-string v26, "15"

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    const-string v25, "ro.config.dha_th_2nd_level"

    const-string v26, "3"

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mSz2ndDHAThreshold:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[J

    move-object/from16 v25, v0

    const-string v26, "ro.config.dha_defend_th_level"

    const-string v27, "3"

    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    aget-wide v25, v25, v26

    const-wide/16 v27, 0x400

    mul-long v25, v25, v27

    move-wide/from16 v0, v25

    long-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, v22

    move/from16 v0, v25

    float-to-long v0, v0

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    const-string v25, "ro.config.dha_increase_th"

    sget-wide v26, Lcom/android/server/am/ProcessList;->DHA_INCREASE_THRESHOLD:J

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v25

    sput-wide v25, Lcom/android/server/am/ProcessList;->DHA_INCREASE_THRESHOLD:J

    const-string v25, "DHA_PROPERTY"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "DHA UPDATE MAX COUNT "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzUpdateDHAMaxCount:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v25, "DHA_PROPERTY"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "DHA MID STEP "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v25, "DHA_PROPERTY"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "DHA MID 2ND STEP "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v25, "DHA_PROPERTY"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "DHA STEP "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v25, "DHA_PROPERTY"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "DHA TH RATE "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v25, "DHA_PROPERTY"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "DHA mSzDHAThreshold "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v25, "DHA_PROPERTY"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "DHA mSz2ndDHAThreshold "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mSz2ndDHAThreshold:J

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v25, "DHA_PROPERTY"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "DHA mSzDHADefendThreshold "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v25, "DHA_PROPERTY"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "DHA DHA_INCREASE_THRESHOLD "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-wide v27, Lcom/android/server/am/ProcessList;->DHA_INCREASE_THRESHOLD:J

    invoke-virtual/range {v26 .. v28}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v25, "Smart_DHA"

    const-string v26, "SMART_DHA_DISABLED"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v3

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_1
    :try_start_3
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v3

    goto :goto_0

    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1
    :goto_3
    throw v3

    :catch_3
    move-exception v4

    goto :goto_3

    :catchall_1
    move-exception v3

    move-object v1, v2

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method


# virtual methods
.method applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    if-nez v1, :cond_0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    iput-boolean v3, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    :cond_0
    return-void
.end method

.method decrementEmptyAppCount(II)I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    sub-int v0, p1, v1

    sget v1, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    if-ge v0, v1, :cond_0

    sget v0, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    :cond_0
    sget v1, Lcom/android/server/am/ProcessList;->MIN_CACHED_APPS:I

    if-le p2, v1, :cond_1

    add-int/lit8 v1, p2, -0x1

    sput v1, Lcom/android/server/am/ProcessList;->mMaxCached:I

    :cond_1
    return v0
.end method

.method getCachedRestoreThresholdKb()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    return-wide v0
.end method

.method getKswapdWatermark()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mSmartDHAKswapdWatermark:J

    return-wide v0
.end method

.method getLMKThreshold(I)J
    .locals 2

    const/16 v0, 0xf

    if-ge p1, v0, :cond_0

    const/16 v0, 0x9

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxMinfree()J
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method getMemLevel(I)J
    .locals 5

    const-wide/16 v3, 0x400

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    aget-wide v1, v1, v0

    mul-long/2addr v1, v3

    :goto_1
    return-wide v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-wide v1, v1, v2

    mul-long/2addr v1, v3

    goto :goto_1
.end method

.method getSmartDHADefaultMargin()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mSmartDHADefaultMargin:J

    return-wide v0
.end method

.method public setTrimCachedApps(I)V
    .locals 0

    sput p1, Lcom/android/server/am/ProcessList;->TRIM_CACHED_APPS:I

    return-void
.end method

.method public setTrimCriticalTH(I)V
    .locals 0

    sput p1, Lcom/android/server/am/ProcessList;->TRIM_CRITICAL_THRESHOLD:I

    return-void
.end method

.method public setTrimEmptyApps(I)V
    .locals 0

    sput p1, Lcom/android/server/am/ProcessList;->TRIM_EMPTY_APPS:I

    return-void
.end method

.method public setTrimLowlTH(I)V
    .locals 0

    sput p1, Lcom/android/server/am/ProcessList;->TRIM_LOW_THRESHOLD:I

    return-void
.end method

.method public updateHiddenAppNum(III)I
    .locals 15

    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    iget v10, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHAMaxCount:I

    if-ge v9, v10, :cond_3

    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    :goto_0
    move/from16 v3, p1

    sget-object v9, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    if-eqz v9, :cond_8

    sget-object v9, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    sget-object v9, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v7

    sget-object v9, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v9

    sget-object v11, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v11}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v11

    add-long v5, v9, v11

    move/from16 v2, p1

    div-int/lit8 v9, v2, 0x2

    sput v9, Lcom/android/server/am/ProcessList;->mMaxCached:I

    sget v9, Lcom/android/server/am/ProcessList;->mMaxCached:I

    sget v10, Lcom/android/server/am/ProcessList;->MIN_CACHED_APPS:I

    if-ge v9, v10, :cond_0

    sget v9, Lcom/android/server/am/ProcessList;->MIN_CACHED_APPS:I

    sput v9, Lcom/android/server/am/ProcessList;->mMaxCached:I

    :cond_0
    sget v9, Lcom/android/server/am/ProcessList;->mMaxCached:I

    sget v10, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    if-le v9, v10, :cond_1

    sget v9, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    sput v9, Lcom/android/server/am/ProcessList;->mMaxCached:I

    :cond_1
    sget-boolean v9, Lcom/android/server/am/ProcessList;->DEBUG:Z

    if-eqz v9, :cond_2

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AvailableMem = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/16 v11, 0x400

    div-long v11, v5, v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "kB (Free: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v11}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v11

    const-wide/16 v13, 0x400

    div-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "kB, Cached: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v11}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v11

    const-wide/16 v13, 0x400

    div-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "kB) "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Threshold = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    const-wide/16 v13, 0x400

    div-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "kB [MaxHidden: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/server/am/ProcessList;->mMaxCached:I

    add-int v11, v11, p1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Current Hidden"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Current Empty"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-gtz v9, :cond_6

    move v4, v3

    :goto_1
    return v4

    :cond_3
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    sub-int v9, p1, v9

    sget v10, Lcom/android/server/am/ProcessList;->MID_EMPTY_APPS_FOR_DHA:I

    if-ge v9, v10, :cond_4

    sget v9, Lcom/android/server/am/ProcessList;->MID_EMPTY_APPS_FOR_DHA:I

    :goto_2
    iput v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v10, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sub-int/2addr v9, v10

    sget v10, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    if-ge v9, v10, :cond_5

    sget v9, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    :goto_3
    iput v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2nd:I

    goto/16 :goto_0

    :cond_4
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    sub-int v9, p1, v9

    goto :goto_2

    :cond_5
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v10, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sub-int/2addr v9, v10

    goto :goto_3

    :cond_6
    long-to-float v9, v5

    iget-wide v10, p0, Lcom/android/server/am/ProcessList;->mSz2ndDHAThreshold:J

    long-to-float v10, v10

    iget v11, p0, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    mul-float/2addr v10, v11

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_7

    iget-wide v9, p0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    cmp-long v9, v7, v9

    if-gez v9, :cond_9

    :cond_7
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    if-gt v3, v9, :cond_9

    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2nd:I

    if-le v3, v9, :cond_9

    move/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessList;->decrementEmptyAppCount(II)I

    move-result v3

    sget-boolean v9, Lcom/android/server/am/ProcessList;->DEBUG:Z

    if-eqz v9, :cond_8

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Decrease Hidden App1 Number from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_4
    move v4, v3

    goto :goto_1

    :cond_9
    long-to-float v9, v5

    iget-wide v10, p0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    long-to-float v10, v10

    iget v11, p0, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    mul-float/2addr v10, v11

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_a

    iget-wide v9, p0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    cmp-long v9, v7, v9

    if-gez v9, :cond_b

    :cond_a
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    if-le v3, v9, :cond_b

    move/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessList;->decrementEmptyAppCount(II)I

    move-result v3

    sget-boolean v9, Lcom/android/server/am/ProcessList;->DEBUG:Z

    if-eqz v9, :cond_8

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Decrease Hidden App2 Number from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_b
    long-to-float v9, v5

    iget-wide v10, p0, Lcom/android/server/am/ProcessList;->mSz2ndDHAThreshold:J

    long-to-float v10, v10

    iget v11, p0, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    mul-float/2addr v10, v11

    sget-wide v11, Lcom/android/server/am/ProcessList;->DHA_INCREASE_THRESHOLD:J

    long-to-float v11, v11

    add-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-lez v9, :cond_f

    iget-wide v9, p0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    cmp-long v9, v7, v9

    if-lez v9, :cond_f

    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    if-ge v3, v9, :cond_f

    move/from16 v0, p3

    if-lt v0, v2, :cond_f

    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    add-int/2addr v3, v9

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    if-gt v9, v3, :cond_c

    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    sub-int v9, v3, v9

    sget v10, Lcom/android/server/am/ProcessList;->MID_EMPTY_APPS_FOR_DHA:I

    if-ge v9, v10, :cond_d

    sget v9, Lcom/android/server/am/ProcessList;->MID_EMPTY_APPS_FOR_DHA:I

    :goto_5
    iput v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v10, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sub-int/2addr v9, v10

    sget v10, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    if-ge v9, v10, :cond_e

    sget v9, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    :goto_6
    iput v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2nd:I

    :cond_c
    sget-boolean v9, Lcom/android/server/am/ProcessList;->DEBUG:Z

    if-eqz v9, :cond_8

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Increase Hidden App1 Number from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_d
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    sub-int v9, v3, v9

    goto :goto_5

    :cond_e
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v10, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sub-int/2addr v9, v10

    goto :goto_6

    :cond_f
    long-to-float v9, v5

    iget-wide v10, p0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    long-to-float v10, v10

    iget v11, p0, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    mul-float/2addr v10, v11

    sget-wide v11, Lcom/android/server/am/ProcessList;->DHA_INCREASE_THRESHOLD:J

    long-to-float v11, v11

    add-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-lez v9, :cond_8

    iget-wide v9, p0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    cmp-long v9, v7, v9

    if-lez v9, :cond_8

    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    if-lt v3, v9, :cond_8

    sget v9, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    if-ge v3, v9, :cond_8

    move/from16 v0, p3

    if-lt v0, v2, :cond_8

    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    add-int/2addr v3, v9

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    if-gt v9, v3, :cond_10

    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    sub-int v9, v3, v9

    sget v10, Lcom/android/server/am/ProcessList;->MID_EMPTY_APPS_FOR_DHA:I

    if-ge v9, v10, :cond_11

    sget v9, Lcom/android/server/am/ProcessList;->MID_EMPTY_APPS_FOR_DHA:I

    :goto_7
    iput v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v10, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sub-int/2addr v9, v10

    sget v10, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    if-ge v9, v10, :cond_12

    sget v9, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    :goto_8
    iput v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2nd:I

    :cond_10
    sget-boolean v9, Lcom/android/server/am/ProcessList;->DEBUG:Z

    if-eqz v9, :cond_8

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Increase Hidden App2 Number from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_11
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    sub-int v9, v3, v9

    goto :goto_7

    :cond_12
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v10, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sub-int/2addr v9, v10

    goto :goto_8
.end method
