.class public Lcom/android/server/ssrm/GenericFalImpl;
.super Ljava/lang/Object;
.source "GenericFalImpl.java"

# interfaces
.implements Lcom/android/server/ssrm/SysFileAbstraction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/GenericFalImpl$1;,
        Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;,
        Lcom/android/server/ssrm/GenericFalImpl$PlatformType;,
        Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;
    }
.end annotation


# static fields
.field private static final ADONIS_GPU_TABLE:[I = null

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final EXYNOS4_GPU_TABLE:[I = null

.field private static final HW_VENDOR:Ljava/lang/String; = null

.field private static final PEGA_BUS_TABLE:[I = null

.field private static final PEGA_PRIME_BUS_TABLE:[I = null

.field private static SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath; = null

.field private static final TAG:Ljava/lang/String; = "SSRMv2:GenericFalImpl"

.field private static final UTF8:Ljava/lang/String; = "UTF-8"

.field public static mApeOppPath:Z

.field public static mChipVendor:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

.field public static mDdrOppPath:Z

.field public static mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x6

    const/4 v2, 0x0

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/GenericFalImpl;->DEBUG:Z

    sget-object v0, Lcom/android/server/ssrm/Feature;->COMMON_HW_VENDOR_CONFIG:Ljava/lang/String;

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl;->HW_VENDOR:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    sput-boolean v2, Lcom/android/server/ssrm/GenericFalImpl;->mDdrOppPath:Z

    sput-boolean v2, Lcom/android/server/ssrm/GenericFalImpl;->mApeOppPath:Z

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl;->ADONIS_GPU_TABLE:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl;->EXYNOS4_GPU_TABLE:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl;->PEGA_PRIME_BUS_TABLE:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl;->PEGA_BUS_TABLE:[I

    return-void

    :array_0
    .array-data 0x4
        0x14t 0x2t 0x0t 0x0t
        0xe0t 0x1t 0x0t 0x0t
        0x5et 0x1t 0x0t 0x0t
        0xat 0x1t 0x0t 0x0t
        0xb1t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x9ct 0xb7t 0x6t 0x0t
        0x64t 0x79t 0x4t 0x0t
        0x38t 0x79t 0x4t 0x0t
        0x30t 0xb0t 0x2t 0x0t
        0xcbt 0x3et 0x2t 0x0t
        0x1et 0xaet 0x1t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x48t 0x1bt 0x6t 0x0t
        0xc0t 0x13t 0x4t 0x0t
        0x98t 0x13t 0x4t 0x0t
        0xa0t 0x71t 0x2t 0x0t
        0xdt 0x8t 0x2t 0x0t
        0x4t 0x87t 0x1t 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "Combination"

    sget-object v2, Lcom/android/server/ssrm/GenericFalImpl;->HW_VENDOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->QUALCOMM:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mChipVendor:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    :goto_0
    const-string v1, "ro.board.platform"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "msm8960"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->MSM8064:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    :goto_1
    new-instance v1, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    sget-object v2, Lcom/android/server/ssrm/GenericFalImpl;->mChipVendor:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    sget-object v3, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    invoke-direct {v1, v2, v3}, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;-><init>(Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;Lcom/android/server/ssrm/GenericFalImpl$PlatformType;)V

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    return-void

    :cond_0
    const-string v1, "Strawberry"

    sget-object v2, Lcom/android/server/ssrm/GenericFalImpl;->HW_VENDOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->SLSI:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mChipVendor:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    goto :goto_0

    :cond_1
    const-string v1, "Tropical"

    sget-object v2, Lcom/android/server/ssrm/GenericFalImpl;->HW_VENDOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->TI:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mChipVendor:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    goto :goto_0

    :cond_2
    const-string v1, "Raspberry"

    sget-object v2, Lcom/android/server/ssrm/GenericFalImpl;->HW_VENDOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->RENESAS:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mChipVendor:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    goto :goto_0

    :cond_3
    const-string v1, "Maple"

    sget-object v2, Lcom/android/server/ssrm/GenericFalImpl;->HW_VENDOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->MARVELL:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mChipVendor:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    goto :goto_0

    :cond_4
    const-string v1, "IslandPunch"

    sget-object v2, Lcom/android/server/ssrm/GenericFalImpl;->HW_VENDOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->INTEL:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mChipVendor:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    goto :goto_0

    :cond_5
    const-string v1, "Blueberry"

    sget-object v2, Lcom/android/server/ssrm/GenericFalImpl;->HW_VENDOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->BROADCOMM:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mChipVendor:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    goto :goto_0

    :cond_6
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->NONE:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mChipVendor:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    goto :goto_0

    :cond_7
    const-string v1, "msm8226"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->MSM8226:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    goto :goto_1

    :cond_8
    const-string v1, "msm8974"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->MSM8974:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    goto/16 :goto_1

    :cond_9
    const-string v1, "ja"

    sget-object v2, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONIS:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    goto/16 :goto_1

    :cond_a
    const-string v1, "ha"

    sget-object v2, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONISPRIME:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    goto/16 :goto_1

    :cond_b
    const-string v1, "ka"

    sget-object v2, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONISPRIME2:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    goto/16 :goto_1

    :cond_c
    const-string v1, "kq"

    sget-object v2, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->HELSINKY:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    goto/16 :goto_1

    :cond_d
    const-string v1, "kam"

    sget-object v2, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONISMINI:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    goto/16 :goto_1

    :cond_e
    const-string v1, "exynos4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->EXYNOS4:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    goto/16 :goto_1

    :cond_f
    const-string v1, "exynos3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->EXYNOS3:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    goto/16 :goto_1

    :cond_10
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->NONE:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    goto/16 :goto_1
.end method

.method private static adjustValueToSysfsValue(II)I
    .locals 2

    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONIS:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    :cond_0
    sparse-switch p1, :sswitch_data_0

    :cond_1
    :goto_0
    return p1

    :sswitch_0
    const/4 p1, 0x0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x214 -> :sswitch_0
    .end sparse-switch
.end method

.method private checkFileExistence(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isPegaPrime()Z
    .locals 13

    const-string v0, "/sys/devices/system/cpu/busfreq/curr_freq"

    const/4 v2, 0x0

    const-string v8, ""

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v8

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v2, v3

    :cond_1
    :goto_1
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl;->PEGA_PRIME_BUS_TABLE:[I

    array-length v7, v1

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v7, :cond_4

    aget v5, v1, v6

    if-eqz v8, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    :goto_3
    return v9

    :catch_0
    move-exception v4

    :goto_4
    :try_start_3
    const-string v9, "SSRMv2:GenericFalImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isPegaPrime:: e = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    const-string v9, "SSRMv2:GenericFalImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isPegaPrime:: e = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v9

    :goto_5
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_2
    :goto_6
    throw v9

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    goto :goto_3

    :catch_2
    move-exception v4

    const-string v10, "SSRMv2:GenericFalImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isPegaPrime:: e = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catch_3
    move-exception v4

    const-string v9, "SSRMv2:GenericFalImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isPegaPrime:: e = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v9

    move-object v2, v3

    goto :goto_5

    :catch_4
    move-exception v4

    move-object v2, v3

    goto/16 :goto_4
.end method

.method public static logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/ssrm/GenericFalImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private parseCpuCoreTable()[I
    .locals 11

    const-string v7, "SSRMv2:GenericFalImpl"

    const-string v8, "parseCpuCoreTable"

    invoke-static {v7, v8}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v0, 0x0

    :try_start_0
    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v7, v7, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/server/ssrm/GenericFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    sget-object v8, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v8, v8, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    :cond_0
    if-nez v0, :cond_3

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    :cond_1
    :goto_0
    move-object v7, v6

    :cond_2
    :goto_1
    return-object v7

    :cond_3
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    if-nez v4, :cond_4

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v8, "SSRMv2:GenericFalImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseCpuCoreTable:: failed by IOException, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    :try_start_4
    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v7, v5

    new-array v6, v7, [I

    const/4 v3, 0x0

    :goto_2
    array-length v7, v5

    if-ge v3, v7, :cond_8

    aget-object v7, v5, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v3

    const-string v7, "SSRMv2:GenericFalImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseCpuCoreTable:: supportedCpuCore = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v6, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_5
    sget-boolean v7, Lcom/android/server/ssrm/GenericFalImpl;->DEBUG:Z

    if-eqz v7, :cond_5

    const-string v7, "SSRMv2:GenericFalImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseCpuCoreTable:: failed by Exception, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_5
    const/4 v6, 0x0

    if-eqz v0, :cond_6

    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_6
    :goto_3
    move-object v7, v6

    goto/16 :goto_1

    :catchall_0
    move-exception v7

    if-eqz v0, :cond_7

    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_7
    :goto_4
    throw v7

    :catch_2
    move-exception v2

    const-string v8, "SSRMv2:GenericFalImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseCpuCoreTable:: failed by IOException, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_3
    move-exception v2

    const-string v7, "SSRMv2:GenericFalImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseCpuCoreTable:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_5
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_4
    move-exception v2

    const-string v7, "SSRMv2:GenericFalImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseCpuCoreTable:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    if-eqz v0, :cond_6

    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_3

    :catch_5
    move-exception v2

    const-string v7, "SSRMv2:GenericFalImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseCpuCoreTable:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_5
.end method

.method private parseGpuFreqTable()[I
    .locals 12

    const/4 v8, 0x0

    const-string v9, "SSRMv2:GenericFalImpl"

    const-string v10, "parseGpuFreqTable"

    invoke-static {v9, v10}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    :try_start_0
    sget-object v9, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v9, v9, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/server/ssrm/GenericFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    sget-object v10, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v10, v10, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    :cond_0
    if-nez v0, :cond_2

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    :cond_1
    :goto_0
    return-object v8

    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    if-nez v4, :cond_3

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v9, "SSRMv2:GenericFalImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseGpuFreqTable:: failed by IOException, msg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_1
    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :try_start_4
    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    :goto_2
    array-length v8, v6

    if-ge v3, v8, :cond_5

    aget-object v8, v6, v3

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    add-int/lit8 v5, v5, 0x1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    array-length v8, v6

    if-eq v5, v8, :cond_7

    const/4 v3, 0x0

    :goto_3
    array-length v8, v6

    if-ge v3, v8, :cond_7

    aget-object v8, v6, v3

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    add-int/lit8 v8, v3, 0x1

    array-length v9, v6

    if-ge v8, v9, :cond_6

    add-int/lit8 v8, v3, 0x1

    aget-object v8, v6, v8

    aput-object v8, v6, v3

    add-int/lit8 v8, v3, 0x1

    const-string v9, ""

    aput-object v9, v6, v8

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    new-array v7, v5, [I

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v5, :cond_b

    aget-object v8, v6, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v3

    const-string v8, "SSRMv2:GenericFalImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseGpuFreqTable:: supportedFrequency = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v7, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :catch_1
    move-exception v2

    :try_start_5
    sget-boolean v8, Lcom/android/server/ssrm/GenericFalImpl;->DEBUG:Z

    if-eqz v8, :cond_8

    const-string v8, "SSRMv2:GenericFalImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseGpuFreqTable:: failed by Exception, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_8
    const/4 v7, 0x0

    if-eqz v0, :cond_9

    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_9
    :goto_5
    move-object v8, v7

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    if-eqz v0, :cond_a

    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_a
    :goto_6
    throw v8

    :catch_2
    move-exception v2

    const-string v9, "SSRMv2:GenericFalImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseGpuFreqTable:: failed by IOException, msg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_3
    move-exception v2

    const-string v8, "SSRMv2:GenericFalImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseGpuFreqTable:: failed by IOException, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_7
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_4
    move-exception v2

    const-string v9, "SSRMv2:GenericFalImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseGpuFreqTable:: failed by IOException, msg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    :cond_b
    if-eqz v0, :cond_9

    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_5

    :catch_5
    move-exception v2

    const-string v8, "SSRMv2:GenericFalImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseGpuFreqTable:: failed by IOException, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_7
.end method

.method private parseSystemBusTable()[I
    .locals 11

    const/4 v7, 0x0

    const-string v8, "SSRMv2:GenericFalImpl"

    const-string v9, "parseSystemBusTable"

    invoke-static {v8, v9}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v0, 0x0

    :try_start_0
    sget-object v8, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v8, v8, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/server/ssrm/GenericFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    sget-object v9, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v9, v9, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    :cond_0
    if-nez v0, :cond_2

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    :cond_1
    :goto_0
    return-object v7

    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    if-nez v4, :cond_3

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v8, "SSRMv2:GenericFalImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseSystemBusTable:: failed by IOException, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_1
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :try_start_4
    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v7, v5

    new-array v6, v7, [I

    const/4 v3, 0x0

    :goto_2
    array-length v7, v5

    if-ge v3, v7, :cond_9

    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v8, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONISPRIME2:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-eq v7, v8, :cond_4

    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v8, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->HELSINKY:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-eq v7, v8, :cond_4

    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v8, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONISMINI:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-eq v7, v8, :cond_4

    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v8, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->EXYNOS3:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-ne v7, v8, :cond_5

    :cond_4
    array-length v7, v5

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v3

    :goto_3
    const-string v7, "SSRMv2:GenericFalImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSystemBusTable:: supportedFrequency = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v6, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    aget-object v7, v5, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    :try_start_5
    sget-boolean v7, Lcom/android/server/ssrm/GenericFalImpl;->DEBUG:Z

    if-eqz v7, :cond_6

    const-string v7, "SSRMv2:GenericFalImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSystemBusTable:: failed by Exception, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_6
    const/4 v6, 0x0

    if-eqz v0, :cond_7

    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_7
    :goto_4
    move-object v7, v6

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    if-eqz v0, :cond_8

    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_8
    :goto_5
    throw v7

    :catch_2
    move-exception v2

    const-string v8, "SSRMv2:GenericFalImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseSystemBusTable:: failed by IOException, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_3
    move-exception v2

    const-string v7, "SSRMv2:GenericFalImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSystemBusTable:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_6
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_4
    move-exception v2

    const-string v8, "SSRMv2:GenericFalImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseSystemBusTable:: failed by IOException, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    :cond_9
    if-eqz v0, :cond_7

    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_4

    :catch_5
    move-exception v2

    const-string v7, "SSRMv2:GenericFalImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSystemBusTable:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_6
.end method


# virtual methods
.method public checkNodeExistence(I)Z
    .locals 2

    packed-switch p1, :pswitch_data_0

    :cond_0
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->EXYNOS4:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/GenericFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/GenericFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/GenericFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/GenericFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/GenericFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/GenericFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/GenericFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public initSupportedFrequency(I)[I
    .locals 2

    packed-switch p1, :pswitch_data_0

    :cond_0
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONIS:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->ADONIS_GPU_TABLE:[I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->EXYNOS4:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->EXYNOS4_GPU_TABLE:[I

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONISPRIME:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-eq v0, v1, :cond_3

    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONISPRIME2:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-eq v0, v1, :cond_3

    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->HELSINKY:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-eq v0, v1, :cond_3

    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONISMINI:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-ne v0, v1, :cond_0

    :cond_3
    invoke-direct {p0}, Lcom/android/server/ssrm/GenericFalImpl;->parseGpuFreqTable()[I

    move-result-object v0

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->EXYNOS4:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/ssrm/GenericFalImpl;->parseCpuCoreTable()[I

    move-result-object v0

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONIS:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-eq v0, v1, :cond_4

    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONISPRIME:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-eq v0, v1, :cond_4

    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONISPRIME2:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-eq v0, v1, :cond_4

    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->HELSINKY:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-eq v0, v1, :cond_4

    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONISMINI:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-eq v0, v1, :cond_4

    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->EXYNOS3:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-ne v0, v1, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/android/server/ssrm/GenericFalImpl;->parseSystemBusTable()[I

    move-result-object v0

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->EXYNOS4:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/server/ssrm/GenericFalImpl;->isPegaPrime()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->PEGA_PRIME_BUS_TABLE:[I

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->PEGA_BUS_TABLE:[I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public modifyToValues(II)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v4, 0x0

    move v5, v4

    :goto_0
    return v5

    :pswitch_1
    sget-object v6, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->EXYNOS4:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-ne v6, v7, :cond_0

    new-instance v1, Ljava/io/File;

    sget-object v6, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_0
    :goto_1
    :pswitch_2
    invoke-static {p1, p2}, Lcom/android/server/ssrm/GenericFalImpl;->adjustValueToSysfsValue(II)I

    move-result p2

    if-eqz v1, :cond_1

    const-string v6, "SSRMv2:GenericFalImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "modifyToValues:: path = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v1, :cond_2

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_2
    move v5, v4

    goto :goto_0

    :pswitch_3
    new-instance v1, Ljava/io/File;

    sget-object v6, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    new-instance v1, Ljava/io/File;

    sget-object v6, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_5
    new-instance v1, Ljava/io/File;

    sget-object v6, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_6
    new-instance v1, Ljava/io/File;

    sget-object v6, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_7
    new-instance v1, Ljava/io/File;

    sget-object v6, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_8
    new-instance v1, Ljava/io/File;

    sget-object v6, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x28

    if-eq p2, v6, :cond_3

    const/16 v6, 0x33

    if-eq p2, v6, :cond_3

    const/16 v6, 0x32

    if-ne p2, v6, :cond_4

    :cond_3
    const/4 p2, 0x1

    goto/16 :goto_1

    :cond_4
    const/16 v6, 0x3c

    if-ne p2, v6, :cond_0

    const/4 p2, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :goto_3
    :try_start_3
    sget-boolean v6, Lcom/android/server/ssrm/GenericFalImpl;->DEBUG:Z

    if-eqz v6, :cond_5

    const-string v6, "SSRMv2:GenericFalImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "modifyToValues:: failed by IOException, msg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v6, "SSRMv2:GenericFalImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "modifyToValues:: failed by IOException, msg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_4
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v2, :cond_6

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_6
    :goto_6
    throw v6

    :catch_2
    move-exception v0

    const-string v7, "SSRMv2:GenericFalImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "modifyToValues:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_3
    move-exception v0

    const-string v6, "SSRMv2:GenericFalImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "modifyToValues:: failed by IOException, msg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :catchall_1
    move-exception v6

    move-object v2, v3

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v2, v3

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public revertToDefault(I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, -0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v5, 0x0

    move v6, v5

    :goto_0
    return v6

    :pswitch_1
    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v8, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->EXYNOS4:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-ne v7, v8, :cond_0

    new-instance v1, Ljava/io/File;

    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v7, v7, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget v4, v7, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_DEFAULT_CORE:I

    :cond_0
    :goto_1
    :pswitch_2
    if-eqz v1, :cond_1

    const-string v7, "SSRMv2:GenericFalImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "revertToDefault:: path = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", revertValue = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v1, :cond_2

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_2
    move v6, v5

    goto :goto_0

    :pswitch_3
    new-instance v1, Ljava/io/File;

    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v7, v7, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget v4, v7, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_DEFAULT_CORE:I

    goto :goto_1

    :pswitch_4
    new-instance v1, Ljava/io/File;

    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v7, v7, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget v4, v7, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    goto :goto_1

    :pswitch_5
    new-instance v1, Ljava/io/File;

    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v7, v7, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget v4, v7, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    goto :goto_1

    :pswitch_6
    new-instance v1, Ljava/io/File;

    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v7, v7, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget v4, v7, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    goto :goto_1

    :pswitch_7
    new-instance v1, Ljava/io/File;

    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v7, v7, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget v4, v7, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    goto/16 :goto_1

    :pswitch_8
    new-instance v1, Ljava/io/File;

    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v7, v7, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget v4, v7, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :goto_3
    :try_start_3
    sget-boolean v7, Lcom/android/server/ssrm/GenericFalImpl;->DEBUG:Z

    if-eqz v7, :cond_3

    const-string v7, "SSRMv2:GenericFalImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "revertToDefault:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v7, "SSRMv2:GenericFalImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "revertToDefault:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_4
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_4
    :goto_6
    throw v7

    :catch_2
    move-exception v0

    const-string v8, "SSRMv2:GenericFalImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "revertToDefault:: failed by IOException, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_3
    move-exception v0

    const-string v7, "SSRMv2:GenericFalImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "revertToDefault:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :catchall_1
    move-exception v7

    move-object v2, v3

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v2, v3

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
