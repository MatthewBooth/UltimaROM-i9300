.class public Lcom/android/server/power/LibQmg;
.super Ljava/lang/Object;
.source "LibQmg.java"


# instance fields
.field private fname:Ljava/lang/String;

.field private handle:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/LibQmg;->fname:Ljava/lang/String;

    return-void
.end method

.method private alreadyOpen()Z
    .locals 1

    iget v0, p0, Lcom/android/server/power/LibQmg;->handle:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static native qmgClose(I)I
.end method

.method public static native qmgGetCurrentFrame(I)I
.end method

.method public static native qmgGetDelayTime(I)I
.end method

.method public static native qmgGetHeight(I)I
.end method

.method public static native qmgGetWidth(I)I
.end method

.method public static native qmgLoadBitmap(ILandroid/graphics/Bitmap;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native qmgOpen(Ljava/lang/String;)I
.end method

.method public static native qmgSetCurrentFrame(II)I
.end method


# virtual methods
.method public close()I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/power/LibQmg;->alreadyOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/power/LibQmg;->handle:I

    invoke-static {v0}, Lcom/android/server/power/LibQmg;->qmgClose(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ensureQmgHandle()V
    .locals 1

    iget v0, p0, Lcom/android/server/power/LibQmg;->handle:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/LibQmg;->fname:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/LibQmg;->qmgOpen(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/LibQmg;->handle:I

    :cond_0
    return-void
.end method

.method public getCurrentFrame()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    iget v0, p0, Lcom/android/server/power/LibQmg;->handle:I

    invoke-static {v0}, Lcom/android/server/power/LibQmg;->qmgGetCurrentFrame(I)I

    move-result v0

    return v0
.end method

.method public getDelayTime()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    iget v1, p0, Lcom/android/server/power/LibQmg;->handle:I

    invoke-static {v1}, Lcom/android/server/power/LibQmg;->qmgGetDelayTime(I)I

    move-result v0

    if-gtz v0, :cond_0

    const/16 v0, 0x42

    :cond_0
    return v0
.end method

.method public getHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    iget v0, p0, Lcom/android/server/power/LibQmg;->handle:I

    invoke-static {v0}, Lcom/android/server/power/LibQmg;->qmgGetHeight(I)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    iget v0, p0, Lcom/android/server/power/LibQmg;->handle:I

    invoke-static {v0}, Lcom/android/server/power/LibQmg;->qmgGetWidth(I)I

    move-result v0

    return v0
.end method

.method public loadFrame(Landroid/graphics/Bitmap;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/server/power/LibQmg;->handle:I

    invoke-static {v0, p1}, Lcom/android/server/power/LibQmg;->qmgLoadBitmap(ILandroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public setCurrentFrame(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    iget v0, p0, Lcom/android/server/power/LibQmg;->handle:I

    invoke-static {v0, p1}, Lcom/android/server/power/LibQmg;->qmgSetCurrentFrame(II)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "fname:%s, handle:%d, w:%d, h:%d, d:%d"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/LibQmg;->fname:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/power/LibQmg;->handle:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->getDelayTime()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
