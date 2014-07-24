.class public Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;
.super Ljava/lang/Object;
.source "MarvellFALImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/MarvellFALImpl;
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
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->CPU_DEFAULT_CORE:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    const-string v0, "/sys/devices/platform/galcore/gpu/gpu0/gpufreq/scaling_available_freqs"

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    const-string v0, "/sys/devices/system/cpu/possible"

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->CPU_DEFAULT_CORE:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/devfreq/devfreq-ddr/available_freqs"

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    return-void
.end method
