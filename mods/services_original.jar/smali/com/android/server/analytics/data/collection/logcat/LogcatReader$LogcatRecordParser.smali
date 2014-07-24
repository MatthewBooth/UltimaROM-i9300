.class public interface abstract Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordParser;
.super Ljava/lang/Object;
.source "LogcatReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/analytics/data/collection/logcat/LogcatReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LogcatRecordParser"
.end annotation


# virtual methods
.method public abstract getDate(Ljava/lang/String;)Ljava/util/Date;
.end method

.method public abstract getTagName(Ljava/lang/String;)Ljava/lang/String;
.end method
