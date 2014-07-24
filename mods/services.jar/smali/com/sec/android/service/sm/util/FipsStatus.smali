.class public Lcom/sec/android/service/sm/util/FipsStatus;
.super Ljava/lang/Object;
.source "FipsStatus.java"


# static fields
.field public static final CRYPTO_PROC_PATH:Ljava/lang/String; = "/proc/sys/crypto"

.field public static final FIPS_STATUS_FILE:Ljava/lang/String; = "fips_status"

.field public static final IN_FIPS_ERROR:I = 0x1

.field public static final NOT_IN_FIPS_ERROR:I = 0x0

.field public static final TAG:Ljava/lang/String; = "SMS[Fips]"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFipsStatus()I
    .locals 11

    const/4 v7, 0x1

    new-instance v3, Ljava/io/File;

    const-string v8, "/proc/sys/crypto"

    const-string v9, "fips_status"

    invoke-direct {v3, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x1

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    move-result v8

    if-lez v8, :cond_4

    :try_start_2
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    move-result v8

    if-nez v8, :cond_1

    const/4 v5, 0x0

    :goto_0
    :try_start_3
    const-string v8, "SMS[Fips]"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "FipsStatus: getFipsStatus="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_0
    :goto_1
    return v5

    :cond_1
    move v5, v7

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_5
    const-string v8, "SMS[Fips]"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "FipsStatus: exception while parsing status="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    const/4 v5, 0x1

    goto :goto_0

    :catch_1
    move-exception v4

    const-string v7, "SMS[Fips]"

    const-string v8, "FipsStatus: close exception"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v2

    :goto_2
    :try_start_6
    const-string v8, "SMS[Fips]"

    const-string v9, "FipsStatus: getFipsStatus: status file does not exist"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_2

    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_2
    :goto_3
    const-string v8, "SMS[Fips]"

    const-string v9, "FipsStatus: getFipsStatus: returning with not in fip error"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    goto :goto_1

    :catch_3
    move-exception v4

    const-string v8, "SMS[Fips]"

    const-string v9, "FipsStatus: close exception"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_4
    move-exception v2

    :goto_4
    :try_start_8
    const-string v8, "SMS[Fips]"

    const-string v9, "FipsStatus: getFipsStatus: exception while reading status file"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v0, :cond_2

    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_3

    :catch_5
    move-exception v4

    const-string v8, "SMS[Fips]"

    const-string v9, "FipsStatus: close exception"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v0, :cond_3

    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    :cond_3
    :goto_6
    throw v7

    :catch_6
    move-exception v4

    const-string v8, "SMS[Fips]"

    const-string v9, "FipsStatus: close exception"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_4
    if-eqz v1, :cond_2

    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_3

    :catch_7
    move-exception v4

    const-string v8, "SMS[Fips]"

    const-string v9, "FipsStatus: close exception"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    const-string v8, "SMS[Fips]"

    const-string v9, "FipsStatus: getFipsStatus: unable to read status file"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_1
    move-exception v7

    move-object v0, v1

    goto :goto_5

    :catch_8
    move-exception v2

    move-object v0, v1

    goto :goto_4

    :catch_9
    move-exception v2

    move-object v0, v1

    goto :goto_2
.end method
