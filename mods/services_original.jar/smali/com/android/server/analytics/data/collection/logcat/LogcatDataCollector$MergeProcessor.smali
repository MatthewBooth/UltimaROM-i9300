.class Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;
.super Ljava/lang/Object;
.source "LogcatDataCollector.java"

# interfaces
.implements Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MergeProcessor"
.end annotation


# instance fields
.field private buffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bufferSwitch:Z

.field private mFinishCondition:Landroid/os/ConditionVariable;

.field private mMergeCondition:Landroid/os/ConditionVariable;

.field private mStartCondition:Landroid/os/ConditionVariable;

.field final synthetic this$0:Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;


# direct methods
.method private constructor <init>(Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;->this$0:Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;->buffer:Ljava/util/List;

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;->mStartCondition:Landroid/os/ConditionVariable;

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;->mFinishCondition:Landroid/os/ConditionVariable;

    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;->mMergeCondition:Landroid/os/ConditionVariable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;-><init>(Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;->bufferSwitch:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;)Landroid/os/ConditionVariable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;->mStartCondition:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;)Landroid/os/ConditionVariable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;->mFinishCondition:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;)Landroid/os/ConditionVariable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;->mMergeCondition:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;->buffer:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public onFinished()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;->mFinishCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public onStarted()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;->mStartCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public processLogcatRecord(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;->bufferSwitch:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;->buffer:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;->mMergeCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;->this$0:Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;

    #calls: Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->invokeLogCollectorCallback(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->access$000(Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;Ljava/lang/String;)V

    goto :goto_0
.end method
