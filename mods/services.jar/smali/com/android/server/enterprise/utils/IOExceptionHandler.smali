.class public Lcom/android/server/enterprise/utils/IOExceptionHandler;
.super Ljava/lang/Object;
.source "IOExceptionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;,
        Lcom/android/server/enterprise/utils/IOExceptionHandler$ExceptionChain;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static process(Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor",
            "<TS;>;>(TT;)V"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->open()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->process(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->flush(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    :goto_0
    :try_start_3
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->sync(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    :goto_1
    :try_start_4
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->close(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/android/server/enterprise/utils/IOExceptionHandler$ExceptionChain;

    invoke-direct {v3, v1}, Lcom/android/server/enterprise/utils/IOExceptionHandler$ExceptionChain;-><init>(Ljava/util/ArrayList;)V

    throw v3

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->flush(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :goto_3
    :try_start_7
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->sync(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :goto_4
    :try_start_8
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->close(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception v3

    :try_start_9
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->flush(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :goto_5
    :try_start_a
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->sync(Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    :goto_6
    :try_start_b
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->close(Ljava/lang/Object;)V

    throw v3

    :cond_0
    return-void

    :catch_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :catch_3
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :catch_4
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :catch_5
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :catch_6
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_7
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_1
.end method

.method public static process(Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor",
            "<TS;>;>(TT;Z)V"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/android/server/enterprise/utils/IOExceptionHandler;->process(Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;)V
    :try_end_0
    .catch Lcom/android/server/enterprise/utils/IOExceptionHandler$ExceptionChain; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    throw v0
.end method
