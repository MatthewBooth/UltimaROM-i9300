.class final Lcom/android/server/analytics/data/collection/logcat/LogcatReader$1;
.super Ljava/lang/Object;
.source "LogcatReader.java"

# interfaces
.implements Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/analytics/data/collection/logcat/LogcatReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static final THREADTIME_TAG_SUFFIX:Ljava/lang/String; = ": "

.field private static final THREADTIME_TIME_STAMP_END_INDEX:I = 0x12


# instance fields
.field private final THREADTIME_DATE_FORMAT:Ljava/text/SimpleDateFormat;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$1;->THREADTIME_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4

    const/4 v2, 0x0

    const/16 v3, 0x12

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$1;->THREADTIME_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getTagName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x20

    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    :goto_0
    add-int/lit8 v3, v2, 0x1

    if-ne v0, v3, :cond_0

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
