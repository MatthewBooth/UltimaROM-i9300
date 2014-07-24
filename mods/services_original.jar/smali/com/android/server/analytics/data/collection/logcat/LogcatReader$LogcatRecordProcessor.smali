.class public interface abstract Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordProcessor;
.super Ljava/lang/Object;
.source "LogcatReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/analytics/data/collection/logcat/LogcatReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LogcatRecordProcessor"
.end annotation


# virtual methods
.method public abstract onFinished()V
.end method

.method public abstract onStarted()V
.end method

.method public abstract processLogcatRecord(Ljava/lang/String;)V
.end method
