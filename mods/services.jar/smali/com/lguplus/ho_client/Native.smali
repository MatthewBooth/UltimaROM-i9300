.class public Lcom/lguplus/ho_client/Native;
.super Ljava/lang/Object;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lguplus/ho_client/Native$OnReadLineHandler;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "lguplusHandover"

.field static isLibraryLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/lguplus/ho_client/Native;->isLibraryLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "lguplusHandover"

    const-string v1, "Native()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/lguplus/ho_client/Native;->loadLibrary()V

    return-void
.end method

.method public static declared-synchronized loadLibrary()V
    .locals 5

    const-class v2, Lcom/lguplus/ho_client/Native;

    monitor-enter v2

    :try_start_0
    const-string v1, "lguplusHandover"

    const-string v3, "loadLibrary()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/lguplus/ho_client/Native;->isLibraryLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    const-string v1, "lguplusHandover"

    const-string v3, "before loadLibrary"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "lguplusHOClient"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/lguplus/ho_client/Native;->isLibraryLoaded:Z

    const-string v1, "lguplusHandover"

    const-string v3, "after loadLibrary"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "lguplusHandover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error on loadLibrary"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static native readFile(Ljava/lang/String;Lcom/lguplus/ho_client/Native$OnReadLineHandler;)V
.end method

.method public static native readFileToStr(Ljava/lang/String;)Ljava/lang/String;
.end method


# virtual methods
.method public native changeNATTable(Ljava/lang/String;)Z
.end method

.method public native closeIptables(I)Z
.end method

.method public native getRoutes(Ljava/util/List;IZ)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IZ)I"
        }
    .end annotation
.end method

.method public native modifyMaskRule(IIZ)Z
.end method

.method public native modifyRouteRule(Ljava/lang/String;IIZ)I
.end method

.method public native modifyRouteTable(Ljava/lang/String;ILjava/lang/String;IZ)I
.end method

.method public native openIptables()I
.end method

.method public native setIptables(I[Ljava/lang/String;)I
.end method
