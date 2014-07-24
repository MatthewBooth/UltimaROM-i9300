.class Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;
.super Ljava/lang/Object;
.source "KnoxMUMContainerPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->onStateChange(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

.field final synthetic val$oldState:I

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    iput p2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$state:I

    iput p3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$oldState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PersonaObserver.onStateChange() inside handler state: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$state:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " old state: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$oldState:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    #calls: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    #getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v15

    if-nez v15, :cond_1

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to get persona info for user "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    #getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    #getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1300(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    #getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iget-boolean v0, v15, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    move/from16 v16, v0

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isUserManaged "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " and user"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    #getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$state:I

    if-nez v1, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$oldState:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    const/4 v1, 0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    #getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v3

    const-string v7, "com.sec.knox.containeragent.klms.created.b2c"

    #calls: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->sendIntentBroadcastForContainer(ILjava/lang/String;)V
    invoke-static {v1, v3, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1600(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;ILjava/lang/String;)V

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$oldState:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$state:I

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    #getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v3

    #calls: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getCreationParams(I)Lcom/sec/knox/container/ContainerCreationParams;
    invoke-static {v1, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1700(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;I)Lcom/sec/knox/container/ContainerCreationParams;

    move-result-object v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, v19

    #calls: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->processCreationParams(Lcom/sec/knox/container/ContainerCreationParams;)V
    invoke-static {v1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1800(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/sec/knox/container/ContainerCreationParams;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    #getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v3

    invoke-virtual/range {v19 .. v19}, Lcom/sec/knox/container/ContainerCreationParams;->getAdminUid()I

    move-result v7

    move-object/from16 v0, v19

    #calls: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateContainerCreationStatus(Lcom/sec/knox/container/ContainerCreationParams;II)V
    invoke-static {v1, v0, v3, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1900(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/sec/knox/container/ContainerCreationParams;II)V

    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$oldState:I

    #calls: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->translateStatus(I)I
    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2000(I)I

    move-result v5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$state:I

    #calls: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->translateStatus(I)I
    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2000(I)I

    move-result v6

    if-eq v6, v5, :cond_c

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$900()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    move/from16 v0, v18

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_b

    move-object/from16 v13, v20

    array-length v0, v13

    move/from16 v17, v0

    const/4 v14, 0x0

    :goto_2
    move/from16 v0, v17

    if-ge v14, v0, :cond_c

    aget-object v2, v13, v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    #getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v3

    #calls: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerStateChangeIntent(Ljava/lang/String;IIII)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2100(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    #getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v3

    const-string v7, "com.sec.knox.containeragent.klms.created.b2b"

    #calls: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->sendIntentBroadcastForContainer(ILjava/lang/String;)V
    invoke-static {v1, v3, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1600(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$state:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_7

    const/4 v1, 0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    #getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v3

    const-string v7, "com.sec.knox.containeragent.klms.removed.b2c"

    #calls: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->sendIntentBroadcastForContainer(ILjava/lang/String;)V
    invoke-static {v1, v3, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1600(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    #getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v3

    const-string v7, "com.sec.knox.containeragent.klms.removed.b2b"

    #calls: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->sendIntentBroadcastForContainer(ILjava/lang/String;)V
    invoke-static {v1, v3, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1600(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$state:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    #getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v3

    const-string v7, "com.sec.knox.containeragent.klms.mdmlocked"

    #calls: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->sendIntentBroadcastForContainer(ILjava/lang/String;)V
    invoke-static {v1, v3, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1600(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$state:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_9

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$oldState:I

    const/16 v3, 0x9

    if-eq v1, v3, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$state:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$oldState:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    #getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v3

    const-string v7, "com.sec.knox.containeragent.klms.mdmunlocked"

    #calls: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->sendIntentBroadcastForContainer(ILjava/lang/String;)V
    invoke-static {v1, v3, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1600(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    iget-object v7, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    #getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v9

    move v10, v4

    move v11, v5

    move v12, v6

    #calls: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerStateChangeIntent(Ljava/lang/String;IIII)V
    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2100(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V

    :cond_c
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$state:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$900()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    move/from16 v0, v18

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_d

    move-object/from16 v13, v20

    array-length v0, v13

    move/from16 v17, v0

    const/4 v14, 0x0

    :goto_3
    move/from16 v0, v17

    if-ge v14, v0, :cond_0

    aget-object v2, v13, v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    #getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v3

    #calls: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerAdminLockIntent(Ljava/lang/String;II)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2200(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;II)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    #getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v7

    #calls: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerAdminLockIntent(Ljava/lang/String;II)V
    invoke-static {v1, v3, v7, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2200(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;II)V

    goto/16 :goto_0
.end method
