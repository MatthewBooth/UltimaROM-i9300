.class Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;
.super Lcom/sec/enterprise/knox/EnterpriseContainerCallback;
.source "EnterpriseContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PasswordCallback"
.end annotation


# instance fields
.field mContainerId:I

.field mFinished:Z

.field mResult:I

.field final synthetic this$0:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;I)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->this$0:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    invoke-direct {p0}, Lcom/sec/enterprise/knox/EnterpriseContainerCallback;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mFinished:Z

    iput v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mResult:I

    iput p2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mContainerId:I

    return-void
.end method


# virtual methods
.method public updateStatus(ILandroid/os/Bundle;)V
    .locals 5

    const/4 v4, -0x1

    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PasswordCallback:updateStatus("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    iget v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mContainerId:I

    const-string v2, "containerid"

    invoke-virtual {p2, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v1, v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expecting callback for container:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mContainerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " receieved for container:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    packed-switch p1, :pswitch_data_0

    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Password callback updateStatus Unknown errorcode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mFinished:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mResult:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Password change sucessfully for Container: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mContainerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mFinished:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mResult:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :pswitch_1
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Password change failed for Container: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mContainerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mFinished:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mResult:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :pswitch_2
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Password verified sucessfully for Container: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mContainerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mFinished:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mResult:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto :goto_0

    :catchall_2
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    :pswitch_3
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Password verification failed for Container: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mContainerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mFinished:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mResult:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto/16 :goto_0

    :catchall_3
    move-exception v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v1

    :catchall_4
    move-exception v1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x3f4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
