.class Lcom/android/server/analytics/data/collection/application/CrashAnrDetector$2;
.super Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter$MyPackageMonitor;
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

    iput-object p1, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector$2;->this$0:Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;

    invoke-direct {p0}, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter$MyPackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "CrashAnrDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackageAdded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector$2;->this$0:Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;

    #calls: Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->updateAppInfoList()V
    invoke-static {v0}, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->access$200(Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;)V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "CrashAnrDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackageRemoved : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector$2;->this$0:Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;

    #calls: Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->updateAppInfoList()V
    invoke-static {v0}, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->access$200(Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;)V

    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "CrashAnrDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackageUpdateFinished : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector$2;->this$0:Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;

    #calls: Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->updateAppInfoList()V
    invoke-static {v0}, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->access$200(Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;)V

    return-void
.end method
