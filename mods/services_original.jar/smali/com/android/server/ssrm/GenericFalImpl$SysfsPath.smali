.class public Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;
.super Ljava/lang/Object;
.source "GenericFalImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/GenericFalImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SysfsPath"
.end annotation


# instance fields
.field public BUS_MAX_DEFAULT_FREQUENCY:I

.field public BUS_MAX_PATH:Ljava/lang/String;

.field public BUS_MIN_DEFAULT_FREQUENCY:I

.field public BUS_MIN_PATH:Ljava/lang/String;

.field public BUS_TABLE_PATH:Ljava/lang/String;

.field public CPU_CORE_MAX_PATH:Ljava/lang/String;

.field public CPU_CORE_MIN_PATH:Ljava/lang/String;

.field public CPU_CORE_TABLE_PATH:Ljava/lang/String;

.field public CPU_DEFAULT_CORE:I

.field public GPU_MAX_DEFAULT_FREQUENCY:I

.field public GPU_MAX_PATH:Ljava/lang/String;

.field public GPU_MIN_DEFAULT_FREQUENCY:I

.field public GPU_MIN_PATH:Ljava/lang/String;

.field public GPU_TABLE_PATH:Ljava/lang/String;

.field public LCD_FRAME_RATE_DEFAULT:I

.field public LCD_FRAME_RATE_PATH:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;Lcom/android/server/ssrm/GenericFalImpl$PlatformType;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_DEFAULT_CORE:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl$1;->$SwitchMap$com$android$server$ssrm$GenericFalImpl$PlatformType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "/sys/devices/platform/pvrsrvkm.0/sgx_dvfs_min_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    const-string v0, "/sys/devices/platform/pvrsrvkm.0/sgx_dvfs_max_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    const-string v0, "/sys/devices/platform/pvrsrvkm.0/sgx_dvfs_table"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    const-string v0, "/sys/class/graphics/fb0/lcdfreq/level"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_DEFAULT_CORE:I

    const-string v0, "/sys/class/devfreq/exynos5-busfreq-mif/min_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/devfreq/exynos5-busfreq-mif/max_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/devfreq/exynos5-busfreq-mif/freq_table"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    goto :goto_0

    :pswitch_1
    const-string v0, "/sys/devices/platform/mali.0/dvfs_min_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    const-string v0, "/sys/devices/platform/mali.0/dvfs_max_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    const-string v0, "/sys/devices/platform/mali.0/dvfs_table"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_DEFAULT_CORE:I

    const-string v0, "/sys/class/devfreq/exynos5-busfreq-mif/min_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/devfreq/exynos5-busfreq-mif/max_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/devfreq/exynos5-busfreq-mif/freq_table"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    goto :goto_0

    :pswitch_2
    const-string v0, "/sys/devices/11800000.mali/dvfs_min_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    const-string v0, "/sys/devices/11800000.mali/dvfs_max_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    const-string v0, "/sys/devices/11800000.mali/dvfs_table"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_DEFAULT_CORE:I

    const-string v0, "/sys/devices/platform/exynos5-devfreq-mif/devfreq/exynos5-devfreq-mif/min_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    const-string v0, "/sys/devices/platform/exynos5-devfreq-mif/devfreq/exynos5-devfreq-mif/max_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    const-string v0, "/sys/devices/platform/exynos5-devfreq-mif/devfreq/exynos5-devfreq-mif/available_frequencies"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    goto/16 :goto_0

    :pswitch_3
    const-string v0, "/sys/devices/14ac0000.mali/dvfs_min_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    const-string v0, "/sys/devices/14ac0000.mali/dvfs_max_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    const-string v0, "/sys/devices/14ac0000.mali/dvfs_table"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_DEFAULT_CORE:I

    const-string v0, "/sys/devices/platform/exynos5-devfreq-mif/devfreq/exynos5-devfreq-mif/min_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    const-string v0, "/sys/devices/platform/exynos5-devfreq-mif/devfreq/exynos5-devfreq-mif/max_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    const-string v0, "/sys/devices/platform/exynos5-devfreq-mif/devfreq/exynos5-devfreq-mif/available_frequencies"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    goto/16 :goto_0

    :pswitch_4
    const-string v0, "/sys/devices/platform/mali.0/dvfs_min_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    const-string v0, "/sys/devices/platform/mali.0/dvfs_max_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    const-string v0, "/sys/devices/platform/mali.0/dvfs_table"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_DEFAULT_CORE:I

    const-string v0, "/sys/class/devfreq/exynos5-devfreq-mif/min_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/devfreq/exynos5-devfreq-mif/max_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/devfreq/exynos5-devfreq-mif/available_frequencies"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    goto/16 :goto_0

    :pswitch_5
    const-string v0, "/sys/power/gpu_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    const-string v0, "/sys/class/graphics/fb0/lcdfreq/level"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    const-string v0, "/sys/devices/system/cpu/cpufreq/pegasusq/min_cpu_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    const-string v0, "/sys/devices/system/cpu/cpufreq/pegasusq/max_cpu_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    const-string v0, "/sys/devices/system/cpu/cpufreq/pegasusq/cpucore_table"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_DEFAULT_CORE:I

    const-string v0, "/sys/devices/system/cpu/busfreq/min_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    goto/16 :goto_0

    :pswitch_6
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_DEFAULT_CORE:I

    const-string v0, "/sys/class/devfreq/exynos4270-busfreq-mif/min_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/devfreq/exynos4270-busfreq-mif/max_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/devfreq/exynos4270-busfreq-mif/available_frequencies"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    const v0, 0x61a80

    iput v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
