.class final Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;
.super Landroid/os/FileObserver;
.source "EnterpriseISLPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IntegrityObserver"
.end annotation


# instance fields
.field private final mPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;->mPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 8

    iget-object v5, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->convertEventToString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1000()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    :goto_0
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1000()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1000()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v5, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #calls: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getSubscriberInstance(I)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;
    invoke-static {v5, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$500(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;I)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IntegrityObserver - Path = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AdminID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;->onRuntimeViolation(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    return-void
.end method
