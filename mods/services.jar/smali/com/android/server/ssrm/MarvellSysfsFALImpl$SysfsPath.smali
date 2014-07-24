.class public Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;
.super Ljava/lang/Object;
.source "MarvellSysfsFALImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/MarvellSysfsFALImpl;
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
.method constructor <init>(Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    iput v2, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->CPU_DEFAULT_CORE:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    iput v2, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    sget-object v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$1;->$SwitchMap$com$android$server$ssrm$MarvellSysfsFALImpl$PlatformType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "/sys/devices/platform/galcore/gpu/gpu0/gpufreq/scaling_min_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    const-string v0, "/sys/devices/platform/galcore/gpu/gpu0/gpufreq/scaling_max_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    const-string v0, "/sys/devices/platform/galcore/gpu/gpu0/gpufreq/scaling_available_freqs"

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    const v0, 0x26160

    iput v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    const v0, 0x98580

    iput v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->CPU_DEFAULT_CORE:I

    const-string v0, "/sys/devices/platform/soc.2/devfreq-ddr/ddr_min"

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    const-string v0, "/sys/devices/platform/soc.2/devfreq-ddr/ddr_max"

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/devfreq/devfreq-ddr/available_frequencies"

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    iput v3, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    iput v3, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
