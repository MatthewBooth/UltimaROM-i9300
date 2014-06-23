.class public Lcom/vlingo/client/phrasespotter/SensoryJNI;
.super Ljava/lang/Object;
.source "SensoryJNI.java"


# static fields
.field public static GRAMMAR_FORMALITY_DEFAULT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/vlingo/client/phrasespotter/SensoryJNI;->GRAMMAR_FORMALITY_DEFAULT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 3

    :try_start_0
    const-string v1, "SensoryJNI"

    const-string v2, "Trying to load libWakeUpSensory.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "WakeUpSensory"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "SensoryJNI"

    const-string v2, "Loading libWakeUpSensory.so done"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SensoryJNI"

    const-string v2, "WARNING: Could not load libWakeUpSensory.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public native Initialize(Ljava/lang/String;Ljava/lang/String;IFFFFLjava/lang/String;I)Z
.end method

.method public native MakeReady()Z
.end method

.method public native ProcessShortArray([SI)I
.end method
