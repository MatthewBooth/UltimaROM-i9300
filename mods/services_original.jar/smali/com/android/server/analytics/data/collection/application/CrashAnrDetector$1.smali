.class Lcom/android/server/analytics/data/collection/application/CrashAnrDetector$1;
.super Landroid/content/BroadcastReceiver;
.source "CrashAnrDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;


# direct methods
.method constructor <init>(Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector$1;->this$0:Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string/jumbo v1, "tag"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->access$000()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector$1;->this$0:Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;

    const-string/jumbo v2, "time"

    const-wide/16 v3, -0x1

    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    #calls: Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->processDropBoxEntry(Ljava/lang/String;J)V
    invoke-static {v1, v0, v2, v3}, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->access$100(Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method
