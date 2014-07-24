.class public Lcom/samsung/voiceshell/WakeUpUtils;
.super Ljava/lang/Object;
.source "WakeUpUtils.java"


# static fields
.field private static final VERSION:Ljava/lang/String; = "1.0.2"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.0.2"

    return-object v0
.end method

.method public static IsFileExist(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
