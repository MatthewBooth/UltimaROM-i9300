.class public interface abstract Lcom/android/server/ssrm/SysFileAbstraction;
.super Ljava/lang/Object;
.source "SysFileAbstraction.java"


# static fields
.field public static final SYS_FILETYPE_BUS:I = 0x5

.field public static final SYS_FILETYPE_BUS_MAX:I = 0x6

.field public static final SYS_FILETYPE_CPU:I = 0x1

.field public static final SYS_FILETYPE_CPU_CORE_MAX:I = 0x9

.field public static final SYS_FILETYPE_CPU_CORE_MIN:I = 0x8

.field public static final SYS_FILETYPE_CPU_MAX:I = 0x2

.field public static final SYS_FILETYPE_GPU:I = 0x3

.field public static final SYS_FILETYPE_GPU_MAX:I = 0x4

.field public static final SYS_FILETYPE_LCD:I = 0x7


# virtual methods
.method public abstract checkNodeExistence(I)Z
.end method

.method public abstract initSupportedFrequency(I)[I
.end method

.method public abstract modifyToValues(II)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract revertToDefault(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
