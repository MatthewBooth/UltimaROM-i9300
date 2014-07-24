.class Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
.super Landroid/os/Handler;
.source "EnterpriseContainerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/EnterpriseContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContainerServiceHandler"
.end annotation


# static fields
.field public static final ENTERPRISE_CONTAINER_ALL_PACKAGES_INSTALLED:I = 0x2

.field public static final ENTERPRISE_CONTAINER_ALL_PACKAGES_UNINSTALLED:I = 0x4

.field public static final ENTERPRISE_CONTAINER_CANCEL_CONTAINER_CREATION:I = 0x6

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK:I = 0x9

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK_DATA_CONTAINEROBJ:Ljava/lang/String; = "containerObj"

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK_DATA_ECRYPTFS_KEY:Ljava/lang/String; = "ecryptfskey"

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK_DATA_ERROR:Ljava/lang/String; = "errorCode"

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK_DATA_PASSWORD:Ljava/lang/String; = "password"

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK_DATA_PRIMARY:Ljava/lang/String; = "primary"

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK_DATA_RID:Ljava/lang/String; = "requestId"

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK_DATA_STATE:Ljava/lang/String; = "state"

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK_DATA_STATUS:Ljava/lang/String; = "status"

.field public static final ENTERPRISE_CONTAINER_ERASE_PARTIAL_CONTAINER:I = 0x5

.field public static final ENTERPRISE_CONTAINER_ERROR_CODE:Ljava/lang/String; = "errCode"

.field public static final ENTERPRISE_CONTAINER_EXPIRATION_TIMEOUT:I = 0xe

.field public static final ENTERPRISE_CONTAINER_HANDLE_BOOT_COMPLETE:I = 0x7

.field public static final ENTERPRISE_CONTAINER_HANDLE_PASSWORD_TIMEOUT:I = 0x8

.field public static final ENTERPRISE_CONTAINER_LOCK_TIMEOUT:I = 0xf

.field public static final ENTERPRISE_CONTAINER_PACKAGE_INSTALLED:I = 0x1

.field public static final ENTERPRISE_CONTAINER_PACKAGE_UNINSTALLED:I = 0x3

.field public static final ENTERPRISE_CONTAINER_REMOUNT_FAILURE:I = 0xb

.field public static final ENTERPRISE_CONTAINER_REMOUNT_FAILURE_DATA_RID:Ljava/lang/String; = "rid"

.field public static final ENTERPRISE_CONTAINER_REMOUNT_SUCCESS:I = 0xd

.field public static final ENTERPRISE_CONTAINER_REMOUNT_SUCCESS_DATA_RID:Ljava/lang/String; = "rid"

.field public static final ENTERPRISE_CONTAINER_SETUP_FAILURE:I = 0xa

.field public static final ENTERPRISE_CONTAINER_SETUP_SUCCESS:I = 0xc

.field public static final ENTERPRISE_CONTAINER_UNMOUNT_TIMEOUT:I = 0x10


# instance fields
.field private mParent:Lcom/sec/knox/container/EnterpriseContainerService;

.field final synthetic this$0:Lcom/sec/knox/container/EnterpriseContainerService;


# direct methods
.method public constructor <init>(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/os/Looper;Lcom/sec/knox/container/EnterpriseContainerService;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->mParent:Lcom/sec/knox/container/EnterpriseContainerService;

    iput-object p3, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->mParent:Lcom/sec/knox/container/EnterpriseContainerService;

    return-void
.end method


# virtual methods
.method public addContainer(IZIILcom/sec/knox/container/EnterpriseContainerObjectParam;Ljava/lang/String;)Z
    .locals 19

    const/16 v18, 0x0

    if-nez p1, :cond_2

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p5

    move/from16 v1, p4

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->addOrUpdateContainerToDB(Lcom/sec/knox/container/EnterpriseContainerObjectParam;I)Z
    invoke-static {v2, v0, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5600(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerObjectParam;I)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_CREATION_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    move-object/from16 v0, p5

    move/from16 v1, p4

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->addContainerToCache(Lcom/sec/knox/container/EnterpriseContainerObjectParam;II)V
    invoke-static {v2, v0, v1, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5700(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerObjectParam;II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-result-object v2

    move/from16 v0, p4

    move-object/from16 v1, p6

    invoke-virtual {v2, v0, v1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->storeUserCredentials(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move/from16 v0, p4

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->removeUntrustedContainerApps(I)V
    invoke-static {v2, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5800(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    :try_start_0
    new-instance v14, Ljava/io/File;

    const-string v2, "/system/containers"

    invoke-direct {v14, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sec_container_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v14, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->getApksFromFolder(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_0

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v11, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual/range {p5 .. p5}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getApkInstallPath()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v14, :cond_1

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sec_container_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v14, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->getApksFromFolder(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_1

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v11, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v2, "apksCount"

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v3, 0x1

    const/16 v5, 0x3f3

    const/4 v7, 0x0

    move/from16 v4, p4

    invoke-virtual/range {v2 .. v7}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    new-instance v7, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v10

    const/4 v12, 0x1

    const/4 v13, 0x1

    move/from16 v9, p4

    invoke-direct/range {v7 .. v13}, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;ILandroid/os/Handler;Ljava/util/List;ZI)V

    invoke-virtual {v7}, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->start()V

    const/16 v18, 0x1

    :cond_2
    :goto_2
    return v18

    :catch_0
    move-exception v16

    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addContainer() Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v16

    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addContainer() Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, p4

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->unmount(III)V
    invoke-static {v2, v0, v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4500(Lcom/sec/knox/container/EnterpriseContainerService;III)V

    const-string v2, "EnterpriseContainerService"

    const-string v3, "Failed after mount cannot add to DB"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 72

    const-string v3, "EnterpriseContainerService"

    const-string v4, "Message received "

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->toString(I)V

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "EnterpriseContainerService"

    const-string v4, "Cache object is null returning from handleMessage()"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v36, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/Bundle;

    const/16 v63, 0x0

    const/16 v70, 0x0

    const/16 v53, 0x0

    const/16 v61, 0x0

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_2
    :pswitch_0
    move/from16 v25, v36

    goto :goto_0

    :pswitch_1
    const-string v3, "EnterpriseContainerService"

    const-string v4, "ENTERPRISE_CONTAINER_HANDLE_BOOT_COMPLETE called. Starting everything from here."

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$100(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/knox/container/manager/StateManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v4

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1002(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/manager/StateManager;)Lcom/sec/knox/container/manager/StateManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->mParent:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-virtual {v3, v4}, Lcom/sec/knox/container/manager/StateManager;->registerClientCallback(Lcom/sec/knox/container/manager/IStateManagerCallback;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v4, Lcom/sec/knox/container/contentprovider/ContainerDatabase;

    invoke-direct {v4}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;-><init>()V

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mDatabase:Lcom/sec/knox/container/contentprovider/ContainerDatabase;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2202(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/contentprovider/ContainerDatabase;)Lcom/sec/knox/container/contentprovider/ContainerDatabase;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v4, Lcom/sec/knox/container/EnterpriseContainerService$WakeLockHandler;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {v4, v8}, Lcom/sec/knox/container/EnterpriseContainerService$WakeLockHandler;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;)V

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLockHandler:Landroid/os/Handler;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$202(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/os/Handler;)Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v4, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;

    const/4 v8, 0x1

    sget-object v9, Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;->PACKAGE_INSTALLED:Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;

    invoke-virtual {v9}, Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;->getIntArrayValues()[I

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/container/util/StringUtil;->getRegisteringKey(I[I)[Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;-><init>([Ljava/lang/String;)V

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mCallbackMgr:Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2302(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;)Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v4, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {v4, v8}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;)V

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2402(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v4, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {v4, v8}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;)V

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2502(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v4, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {v4, v8}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;)V

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mChangeContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2602(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v4, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {v4, v8}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;)V

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2702(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v4, Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/knox/container/EnterpriseContainerService;->access$100(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->mParent:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v11}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v11

    invoke-direct {v4, v8, v9, v11}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;-><init>(Landroid/content/Context;Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/manager/StateManager;)V

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2802(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerPasswordService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->initializeDPMActiveAdminList()V
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2900(Lcom/sec/knox/container/EnterpriseContainerService;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->registerReciever()V
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3000(Lcom/sec/knox/container/EnterpriseContainerService;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v4, Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/knox/container/EnterpriseContainerService;->access$100(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3102(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/dirEncryption/DirEncryptionManager;)Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$100(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    const-string v8, "power"

    invoke-virtual {v3, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v4, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3202(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/os/PowerManager;)Landroid/os/PowerManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3200(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/os/PowerManager;

    move-result-object v3

    const/4 v4, 0x1

    const-string v8, "EnterpriseContainerService"

    invoke-virtual {v3, v4, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3302(Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    invoke-static {}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3300()Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->bindRedexService()V
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$400(Lcom/sec/knox/container/EnterpriseContainerService;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->getVpnService()Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3500(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v4

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mVpnService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3402(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;)Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->getGenericVpnService()Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3700(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy;

    move-result-object v4

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mGenericVpnService:Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3602(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mRIdGenerator:Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1400(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;

    move-result-object v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v4, Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {v4, v8}, Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;)V

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mRIdGenerator:Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1402(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;)Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->initialiseContainer()V
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3800(Lcom/sec/knox/container/EnterpriseContainerService;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/knox/container/manager/StateManager;->getContainers()Ljava/util/List;

    move-result-object v56

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "List of objects:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v56

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v56, :cond_4

    const-string v3, "EnterpriseContainerService"

    const-string v4, "List of objects not null"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v56 .. v56}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v51

    :goto_1
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    const-string v3, "EnterpriseContainerService"

    const-string v4, "At least one container is there"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    invoke-virtual/range {v59 .. v59}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerId()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v8}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v8

    invoke-virtual/range {v59 .. v59}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v8

    sget-object v9, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_REBOOT:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v3, v4, v8, v9}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    goto :goto_1

    :cond_4
    const-string v3, "EnterpriseContainerService"

    const-string v4, "List is null, nothing to set"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x1

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->isServiceInitialized:Z
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3902(Lcom/sec/knox/container/EnterpriseContainerService;Z)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3, v4}, Lcom/sec/knox/container/manager/StateManager;->getContainers(Lcom/sec/knox/container/constants/CSState;)Ljava/util/List;

    move-result-object v65

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "List of objects:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v65

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v65, :cond_7

    const-string v3, "EnterpriseContainerService"

    const-string v4, "removeList of objects not null"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v65 .. v65}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v51

    :goto_2
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-virtual/range {v59 .. v59}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerId()I

    move-result v4

    const/4 v8, 0x0

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->removeContainerHelper(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    invoke-static {v3, v4, v8}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4000(Lcom/sec/knox/container/EnterpriseContainerService;ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    goto :goto_2

    :cond_6
    move/from16 v25, v36

    goto/16 :goto_0

    :cond_7
    const-string v3, "EnterpriseContainerService"

    const-string v4, "createInprogresslist is null, nothing to set"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v25, v36

    goto/16 :goto_0

    :pswitch_2
    const-string v3, "containerid"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v3, "rid"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Container remount successfully: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-virtual {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->killAllApps(I)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2700(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v4

    sget-object v8, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_VERIFY_PWD_SUCCESS:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v3, v10, v4, v8}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v4}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v4

    if-eq v3, v4, :cond_a

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Container remount successfully: New state is "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v8}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->changePasswordIfPasswordHasExpired(I)Z
    invoke-static {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4100(Lcom/sec/knox/container/EnterpriseContainerService;I)Z

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v3, "containerid"

    invoke-virtual {v7, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x4

    const/16 v6, 0x3f6

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    :cond_8
    new-instance v66, Landroid/content/Intent;

    const-string v3, "enterprise.container.remount.success"

    move-object/from16 v0, v66

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "containerid"

    move-object/from16 v0, v66

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$100(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v66

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    if-eq v3, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_VERIFY_PWD:Lcom/sec/knox/container/constants/CSState;

    if-eq v3, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ADMIN_PWD_RESET:Lcom/sec/knox/container/constants/CSState;

    if-eq v3, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    if-ne v3, v4, :cond_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->sendContainerSetupSuccessMessage(I)V
    invoke-static {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4200(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    move/from16 v25, v36

    goto/16 :goto_0

    :cond_a
    const-string v3, "EnterpriseContainerService"

    const-string v4, "Container remount successfully: transitState failed. State still invalid"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_3
    const-string v3, "containerid"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->loadPasswordInfoToCache(I)V
    invoke-static {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4300(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setExpirationAlarmCheck(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$100(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v4

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->scheduleTimer(Landroid/content/Context;I)V
    invoke-static {v3, v4, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2000(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->startContainerEventsRelayManager()V
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4400(Lcom/sec/knox/container/EnterpriseContainerService;)V

    new-instance v42, Landroid/content/Intent;

    const-string v3, "enterprise.container.setup.success"

    move-object/from16 v0, v42

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "containerid"

    move-object/from16 v0, v42

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$100(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move/from16 v25, v36

    goto/16 :goto_0

    :pswitch_4
    const-string v3, "containerid"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v3, "rid"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v3, "errCode"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_b

    const/16 v6, 0x3f7

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x2

    const/4 v8, 0x0

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->unmount(III)V
    invoke-static {v3, v10, v4, v8}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4500(Lcom/sec/knox/container/EnterpriseContainerService;III)V

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ">>> Container remount failed: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " <<<<"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2700(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "EnterpriseContainerService"

    const-string v4, "    Calling callback container remount failure"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v3, "containerid"

    invoke-virtual {v7, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x4

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    :cond_c
    new-instance v46, Landroid/content/Intent;

    const-string v3, "enterprise.container.remount.failed"

    move-object/from16 v0, v46

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "containerid"

    move-object/from16 v0, v46

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$100(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v46

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v3, "containerid"

    invoke-virtual {v7, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v3

    const/16 v4, 0xa

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v3, v4, v8, v9, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v58

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v3

    move-object/from16 v0, v58

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->sendMessage(Landroid/os/Message;)Z

    move/from16 v25, v36

    goto/16 :goto_0

    :pswitch_5
    const-string v3, "containerid"

    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    const-string v3, "errCode"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ">>> Container create failed: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " <<<<"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "EnterpriseContainerService"

    const-string v4, "    Calling callback container set up failure"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_d

    const/16 v6, 0x3ea

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v4

    sget-object v8, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_CREATION_FAILURE:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v3, v10, v4, v8}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v3, "containerid"

    invoke-virtual {v7, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v9, 0x1

    const/4 v13, 0x1

    move v11, v6

    move-object v12, v7

    invoke-virtual/range {v8 .. v13}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    new-instance v46, Landroid/content/Intent;

    const-string v3, "enterprise.container.setup.failure"

    move-object/from16 v0, v46

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$100(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v46

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move/from16 v25, v36

    goto/16 :goto_0

    :pswitch_6
    const-string/jumbo v3, "state"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    const-string v3, "containerid"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v3, "requestId"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v3, "errorCode"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v3, "primary"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v54

    const-string/jumbo v3, "status"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    const-string v3, "password"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v3, "ecryptfskey"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v3, "containerObj"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v22

    check-cast v22, Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    new-instance v57, Landroid/os/Bundle;

    invoke-direct/range {v57 .. v57}, Landroid/os/Bundle;-><init>()V

    if-eqz v18, :cond_e

    const/4 v3, 0x2

    move/from16 v0, v18

    if-ne v0, v3, :cond_18

    :cond_e
    const/4 v3, 0x1

    move/from16 v0, v54

    if-ne v0, v3, :cond_13

    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_11

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v3, "primaryMountStatus"

    const-string/jumbo v4, "success"

    invoke-virtual {v7, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v9, 0x1

    const/16 v11, 0x3f2

    const/4 v13, 0x0

    move-object v12, v7

    invoke-virtual/range {v8 .. v13}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    move-object/from16 v11, p0

    move/from16 v12, v18

    move v13, v5

    move v14, v10

    invoke-virtual/range {v11 .. v16}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->mountSecondStorage(IIILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    const/4 v3, 0x2

    move/from16 v0, v18

    if-ne v0, v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x0

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerRemountFailureMessage(III)V
    invoke-static {v3, v10, v5, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4600(Lcom/sec/knox/container/EnterpriseContainerService;III)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x0

    const/4 v8, 0x0

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->unmount(III)V
    invoke-static {v3, v10, v4, v8}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4500(Lcom/sec/knox/container/EnterpriseContainerService;III)V

    :cond_f
    :goto_4
    move/from16 v25, v36

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x0

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(II)V
    invoke-static {v3, v10, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4700(Lcom/sec/knox/container/EnterpriseContainerService;II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V
    invoke-static {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4800(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    goto :goto_4

    :cond_11
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ContainerEncryptionCallbackupdateStatus"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed for mounting primary partition: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    move/from16 v0, v18

    if-ne v0, v3, :cond_12

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Container remount failed: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x0

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerRemountFailureMessage(III)V
    invoke-static {v3, v10, v5, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4600(Lcom/sec/knox/container/EnterpriseContainerService;III)V

    move/from16 v25, v36

    goto/16 :goto_0

    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x0

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(II)V
    invoke-static {v3, v10, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4700(Lcom/sec/knox/container/EnterpriseContainerService;II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V
    invoke-static {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4800(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    move/from16 v25, v36

    goto/16 :goto_0

    :cond_13
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ContainerEncryptionCallbackupdateStatus"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_16

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v3, "secondaryMountStatus"

    const-string/jumbo v4, "success"

    invoke-virtual {v7, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v9, 0x1

    const/16 v11, 0x3f2

    const/4 v13, 0x0

    move-object v12, v7

    invoke-virtual/range {v8 .. v13}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mMountCallBackData:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4900(Lcom/sec/knox/container/EnterpriseContainerService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    move-object/from16 v22, v39

    const/4 v3, 0x2

    move/from16 v0, v18

    if-ne v0, v3, :cond_15

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Remount success for : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "containerid"

    move-object/from16 v0, v57

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "rid"

    move-object/from16 v0, v57

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v3

    const/16 v4, 0xd

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v57

    invoke-static {v3, v4, v8, v9, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v58

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v3

    move-object/from16 v0, v58

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_14
    :goto_5
    move/from16 v25, v36

    goto/16 :goto_0

    :cond_15
    move-object/from16 v17, p0

    move/from16 v20, v6

    move/from16 v21, v10

    move-object/from16 v23, v15

    invoke-virtual/range {v17 .. v23}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->addContainer(IZIILcom/sec/knox/container/EnterpriseContainerObjectParam;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x0

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(II)V
    invoke-static {v3, v10, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4700(Lcom/sec/knox/container/EnterpriseContainerService;II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V
    invoke-static {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4800(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    goto :goto_5

    :cond_16
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed for mounting secondary partition: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x0

    const/4 v8, 0x0

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->unmount(III)V
    invoke-static {v3, v10, v4, v8}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4500(Lcom/sec/knox/container/EnterpriseContainerService;III)V

    const/4 v3, 0x2

    move/from16 v0, v18

    if-ne v0, v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x0

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerRemountFailureMessage(III)V
    invoke-static {v3, v10, v5, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4600(Lcom/sec/knox/container/EnterpriseContainerService;III)V

    move/from16 v25, v36

    goto/16 :goto_0

    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x0

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(II)V
    invoke-static {v3, v10, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4700(Lcom/sec/knox/container/EnterpriseContainerService;II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V
    invoke-static {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4800(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    move/from16 v25, v36

    goto/16 :goto_0

    :cond_18
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_1a

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ContainerEncryptionCallbackupdateStatus"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_19

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unmount is success "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v25, v36

    goto/16 :goto_0

    :cond_19
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v3, "containerid"

    invoke-virtual {v7, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v9, 0x2

    const/16 v11, 0x3ed

    const/4 v13, 0x1

    move-object v12, v7

    invoke-virtual/range {v8 .. v13}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    new-instance v71, Landroid/content/Intent;

    const-string v3, "enterprise.container.unmountfailure"

    move-object/from16 v0, v71

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "containerid"

    move-object/from16 v0, v71

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$100(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v71

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move/from16 v25, v36

    goto/16 :goto_0

    :cond_1a
    const/4 v3, 0x4

    move/from16 v0, v18

    if-ne v0, v3, :cond_1e

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ContainerEncryptionCallbackENCRYPTION_STATE_PRIMARY_UNMOUNT:updateStatus"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_1d

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unmount is success "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_DOESNOT_EXISTS:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v4}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v4

    if-eq v3, v4, :cond_1b

    invoke-virtual/range {v41 .. v41}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v4}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v4

    if-ne v3, v4, :cond_1c

    :cond_1b
    const-string v3, "EnterpriseContainerService"

    const-string v4, "Deleting the .container_1 forcibly "

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ctl.start"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "containersetup:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v8, 0x3

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "EnterpriseContainerService"

    const-string v4, "After Deleting the .container_1 forcibly "

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    move/from16 v25, v36

    goto/16 :goto_0

    :cond_1d
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v3, "containerid"

    invoke-virtual {v7, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v9, 0x2

    const/16 v11, 0x3ed

    const/4 v13, 0x1

    move-object v12, v7

    invoke-virtual/range {v8 .. v13}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    new-instance v71, Landroid/content/Intent;

    const-string v3, "enterprise.container.unmountfailure"

    move-object/from16 v0, v71

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "containerid"

    move-object/from16 v0, v71

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$100(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v71

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move/from16 v25, v36

    goto/16 :goto_0

    :cond_1e
    const/4 v3, 0x3

    move/from16 v0, v18

    if-ne v0, v3, :cond_2

    const-string v3, "EnterpriseContainerService"

    const-string v4, "Change Password callback"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_21

    const-string v3, "EnterpriseContainerService"

    const-string v4, "changePassword success"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "EnterpriseContainerService"

    const-string v4, "Change Password storing the new password"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-result-object v3

    invoke-virtual {v3, v10, v15}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->updatePassword(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->onChangePasswordSuccess(I)V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v3, "containerid"

    invoke-virtual {v7, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    const/16 v26, 0x3f4

    const/16 v28, 0x1

    move/from16 v25, v5

    move-object/from16 v27, v7

    invoke-virtual/range {v23 .. v28}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v4

    sget-object v8, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_CHANGE_PWD:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v3, v10, v4, v8}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v4}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v4

    if-eq v3, v4, :cond_20

    const-string v3, "EnterpriseContainerService"

    const-string v4, "ContainerEncryptionCallback.updateStatus(): restarting password expiry timeout"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mActiveAdminList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5000(Lcom/sec/knox/container/EnterpriseContainerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v51

    :goto_6
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-result-object v3

    move-object/from16 v0, v37

    invoke-virtual {v3, v10, v0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->updatePasswordExpirationTimeout(ILandroid/content/ComponentName;)V

    goto :goto_6

    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->loadPasswordInfoToCache(I)V
    invoke-static {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4300(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setExpirationAlarmCheck(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$100(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v4

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->scheduleTimer(Landroid/content/Context;I)V
    invoke-static {v3, v4, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2000(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/content/Context;I)V

    const-string v3, "EnterpriseContainerService"

    const-string v4, "ContainerEncryptionCallback.updateStatus(): firing intent: com.samsung.redex.proxy.activity.close_dialog"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v64, Landroid/content/Intent;

    const-string v3, "com.samsung.redex.proxy.activity.close_dialog"

    move-object/from16 v0, v64

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "containerid"

    move-object/from16 v0, v64

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$100(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v64

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_20
    move/from16 v25, v36

    goto/16 :goto_0

    :cond_21
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Change Password failed cannot update the cache error code:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v3, "containerid"

    invoke-virtual {v7, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    const/16 v26, 0x3f5

    const/16 v28, 0x1

    move/from16 v25, v5

    move-object/from16 v27, v7

    invoke-virtual/range {v23 .. v28}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    move/from16 v25, v36

    goto/16 :goto_0

    :pswitch_7
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Binder UID :"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "package_install_name"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    const-string v3, "containerid"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v25

    const-string v3, "package_install_uid"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v70

    const-string v3, "package_install_source"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v53

    const-string v3, "package_original_signature"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v61

    const-string v60, "NA"

    const/16 v44, 0x0

    if-eqz v61, :cond_22

    const-string v3, ","

    move-object/from16 v0, v61

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v60

    :cond_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$100(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v63

    invoke-virtual {v3, v4, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_24

    new-instance v43, Landroid/content/ContentValues;

    invoke-direct/range {v43 .. v43}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "containerid"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v43

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "packages"

    move-object/from16 v0, v43

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "original_signature"

    move-object/from16 v0, v43

    move-object/from16 v1, v60

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "installation_source"

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v43

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "app_uid"

    invoke-static/range {v70 .. v70}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v43

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$100(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v4

    sget-object v8, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v43

    invoke-virtual {v3, v4, v0, v8}, Lcom/sec/knox/container/manager/StateManager;->insert(Landroid/content/Context;Landroid/content/ContentValues;Landroid/net/Uri;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerObjectFromCache(I)Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerAdmin()I

    move-result v34

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setApplicationUninstallationDisabledBySystem to true :"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5100(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v3

    if-eqz v3, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5100(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v3

    const/4 v4, 0x1

    move/from16 v0, v34

    move-object/from16 v1, v63

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V

    :cond_23
    new-instance v52, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;

    invoke-direct/range {v52 .. v52}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;-><init>()V

    move-object/from16 v0, v52

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setContainerId(I)V

    move-object/from16 v0, v52

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setAppPackage(Ljava/lang/String;)V

    move-object/from16 v0, v52

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setSignature(Ljava/lang/String;)V

    invoke-virtual/range {v52 .. v53}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setInstallationSource(I)V

    move-object/from16 v0, v52

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setUid(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, v52

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/manager/StateManager;->updateContainerPackageCache(Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;)Z

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v63

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " INSTALLED SUCCESSFULLY in container: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;->PACKAGE_INSTALLED:Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;->getIntValue()I

    move-result v44

    :goto_7
    new-instance v45, Landroid/os/Bundle;

    invoke-direct/range {v45 .. v45}, Landroid/os/Bundle;-><init>()V

    const-string v3, "containerid"

    move-object/from16 v0, v45

    move/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "package"

    move-object/from16 v0, v45

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move/from16 v0, v25

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v3, v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerService;->updateEventToListners(IILandroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move/from16 v0, v25

    move-object/from16 v1, v63

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->getOriginalPackageNameInternal(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5200(Lcom/sec/knox/container/EnterpriseContainerService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v68

    if-eqz v68, :cond_0

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v3, "packageName"

    move-object/from16 v0, v68

    invoke-virtual {v7, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "packageInstallStatus"

    const-string/jumbo v4, "success"

    invoke-virtual {v7, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v26, 0x3f3

    const/16 v28, 0x0

    move-object/from16 v27, v7

    invoke-virtual/range {v23 .. v28}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    goto/16 :goto_0

    :cond_24
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v63

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " UPDATED SUCCESSFULLY in container: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;->PACKAGE_UPDATED:Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;->getIntValue()I

    move-result v44

    goto/16 :goto_7

    :pswitch_8
    new-instance v57, Landroid/os/Bundle;

    invoke-direct/range {v57 .. v57}, Landroid/os/Bundle;-><init>()V

    const/16 v58, 0x0

    const-string v3, "containerid"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v25

    const-string v3, "package_install_name"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1200(Lcom/sec/knox/container/EnterpriseContainerService;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/knox/container/manager/StateManager;->isContainerCanceled(I)Z

    move-result v3

    if-eqz v3, :cond_25

    const-string v3, "EnterpriseContainerService"

    const-string v4, "Cancel Container: All packages will be uninstalled"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v4

    sget-object v8, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UNINSTALL_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

    move/from16 v0, v25

    invoke-virtual {v3, v0, v4, v8}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x0

    move/from16 v0, v25

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->removeContainerHelper(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    invoke-static {v3, v0, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4000(Lcom/sec/knox/container/EnterpriseContainerService;ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    goto/16 :goto_0

    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerObjectFromCache(I)Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerAdmin()I

    move-result v34

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setApplicationUninstallationDisabledBySystem to true :"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v48, :cond_27

    const/16 v49, 0x0

    :goto_8
    if-eqz v49, :cond_28

    move-object/from16 v35, v49

    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v55, v0

    const/16 v51, 0x0

    :goto_9
    move/from16 v0, v51

    move/from16 v1, v55

    if-ge v0, v1, :cond_28

    aget-object v50, v35, v51

    invoke-virtual/range {v50 .. v50}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_26

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5100(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v3

    if-eqz v3, :cond_26

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5100(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v3

    const/4 v4, 0x1

    move/from16 v0, v34

    move-object/from16 v1, v50

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V

    :cond_26
    add-int/lit8 v51, v51, 0x1

    goto :goto_9

    :cond_27
    const-string v3, ";"

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v49

    goto :goto_8

    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$100(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "framework.pkgName.key"

    move-object/from16 v0, v48

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v4

    sget-object v8, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_CREATION_SUCCESS:Lcom/sec/knox/container/constants/CSEvent;

    move/from16 v0, v25

    invoke-virtual {v3, v0, v4, v8}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v4}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v4

    if-ne v3, v4, :cond_29

    const-string v3, "containerid"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1200(Lcom/sec/knox/container/EnterpriseContainerService;)I

    move-result v4

    move-object/from16 v0, v57

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v3

    const/4 v4, 0x5

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v57

    invoke-static {v3, v4, v8, v9, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v58

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v3

    move-object/from16 v0, v58

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/manager/StateManager;->getFeatureFlagForContainer(I)I

    move-result v47

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "container flag value "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v26, 0x3e9

    const/16 v28, 0x1

    invoke-virtual/range {v23 .. v28}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    and-int/lit8 v3, v47, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2b

    const-string v3, "EnterpriseContainerService"

    const-string v4, "Container activation flow is enabled......"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move/from16 v0, v25

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->sendContainerCreationIntent(I)V
    invoke-static {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5300(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    :goto_a
    const-string v38, "B2B"

    invoke-virtual {v7}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2c

    const-string v38, "B2B"

    :cond_2a
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const-string v4, "[ECS] createContainerInternal()"

    move-object/from16 v0, v38

    invoke-virtual {v3, v4, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->WriteContainerHistory(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2b
    const-string v3, "EnterpriseContainerService"

    const-string v4, "Container activation flow is disabled......"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->activateContainer(I)Z

    goto :goto_a

    :cond_2c
    invoke-virtual {v7}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerType()I

    move-result v3

    if-nez v3, :cond_2a

    const-string v38, "B2C"

    goto :goto_b

    :pswitch_9
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Binder UID :"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "package_install_name"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    const-string v3, "containerid"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$100(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v4

    sget-object v8, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v63

    move/from16 v1, v25

    invoke-virtual {v3, v4, v0, v1, v8}, Lcom/sec/knox/container/manager/StateManager;->delete(Landroid/content/Context;Ljava/lang/String;ILandroid/net/Uri;)Z

    new-instance v52, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;

    invoke-direct/range {v52 .. v52}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;-><init>()V

    move-object/from16 v0, v52

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setContainerId(I)V

    move-object/from16 v0, v52

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setAppPackage(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, v52

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/manager/StateManager;->updateContainerPackageCache(Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;)Z

    new-instance v45, Landroid/os/Bundle;

    invoke-direct/range {v45 .. v45}, Landroid/os/Bundle;-><init>()V

    const-string v3, "containerid"

    move-object/from16 v0, v45

    move/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "package"

    move-object/from16 v0, v45

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    sget-object v4, Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;->PACKAGE_UNINSTALLED:Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;->getIntValue()I

    move-result v4

    move/from16 v0, v25

    move-object/from16 v1, v45

    invoke-virtual {v3, v0, v4, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->updateEventToListners(IILandroid/os/Bundle;)V

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v63

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " UNINSTALLED SUCCESSFULLY in container: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a
    const-string v3, "EnterpriseContainerService"

    const-string v4, "handleMessage() All Packages Uninstalled Part of Remove Container"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "containerid"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v25

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const/16 v40, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/manager/StateManager;->isContainerCanceled(I)Z

    move-result v3

    if-eqz v3, :cond_2d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/manager/StateManager;->getRequestIdForContainer(I)I

    move-result v5

    const-string v3, "containerid"

    move/from16 v0, v25

    invoke-virtual {v7, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "requestid"

    invoke-virtual {v7, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v28, v0

    const/16 v29, 0x5

    const/16 v31, 0x3f8

    const/16 v33, 0x1

    move/from16 v30, v25

    move-object/from16 v32, v7

    invoke-virtual/range {v28 .. v33}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    new-instance v40, Landroid/content/Intent;

    const-string v3, "enterprise.container.cancelled"

    move-object/from16 v0, v40

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Container Cancelled intent Container id: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "containerid"

    move-object/from16 v0, v40

    move/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "requestid"

    move-object/from16 v0, v40

    move/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v4

    sget-object v8, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UNINSTALL_COMPLETED:Lcom/sec/knox/container/constants/CSEvent;

    move/from16 v0, v25

    invoke-virtual {v3, v0, v4, v8}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move/from16 v0, v25

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V
    invoke-static {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4800(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$100(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "framework.pkgName.key"

    const-string v8, ""

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$100(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_2d
    const-string v3, "containerid"

    move/from16 v0, v25

    invoke-virtual {v7, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    const/16 v31, 0x3eb

    const/16 v33, 0x1

    move/from16 v30, v25

    move-object/from16 v32, v7

    invoke-virtual/range {v28 .. v33}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    new-instance v40, Landroid/content/Intent;

    const-string v3, "enterprise.container.uninstalled"

    move-object/from16 v0, v40

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Container removed intent Container id: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "containerid"

    move-object/from16 v0, v40

    move/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_c

    :pswitch_b
    const-string v3, "EnterpriseContainerService"

    const-string v4, "handleMessage() ENTERPRISE_CONTAINER_ERASE_PARTIAL_CONTAINER"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "containerid"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v25

    const-string v3, "package_install_name"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    if-eqz v48, :cond_2e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$100(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "framework.pkgName.key"

    move-object/from16 v0, v48

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x0

    move/from16 v0, v25

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(II)V
    invoke-static {v3, v0, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4700(Lcom/sec/knox/container/EnterpriseContainerService;II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v4

    sget-object v8, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UNINSTALL_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

    move/from16 v0, v25

    invoke-virtual {v3, v0, v4, v8}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x0

    move/from16 v0, v25

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->removeContainerHelper(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    invoke-static {v3, v0, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4000(Lcom/sec/knox/container/EnterpriseContainerService;ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    goto/16 :goto_0

    :pswitch_c
    const-string v3, "EnterpriseContainerService"

    const-string v4, "handleMessage() ENTERPRISE_CONTAINER_CANCEL_CONTAINER_CREATION"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "containerid"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v4

    sget-object v8, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UNINSTALL_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

    move/from16 v0, v25

    invoke-virtual {v3, v0, v4, v8}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x0

    move/from16 v0, v25

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->removeContainerHelper(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    invoke-static {v3, v0, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4000(Lcom/sec/knox/container/EnterpriseContainerService;ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    goto/16 :goto_0

    :pswitch_d
    const-string v3, "EnterpriseContainerService"

    const-string v4, "handleMessage() ENTERPRISE_CONTAINER_EXPIRATION_TIMEOUT"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "containerid"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move/from16 v0, v25

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->changePasswordIfPasswordHasExpired(I)Z
    invoke-static {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4100(Lcom/sec/knox/container/EnterpriseContainerService;I)Z

    move-result v3

    if-eqz v3, :cond_2f

    new-instance v62, Landroid/content/Intent;

    const-string v3, "com.samsung.redex.proxy.activity.show_dialog"

    move-object/from16 v0, v62

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "EnterpriseContainerService"

    const-string v4, "Password is expired. Fire a change password intent"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "containerid"

    move-object/from16 v0, v62

    move/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$100(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v62

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_2f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setExpirationAlarmCheck(I)V

    goto/16 :goto_0

    :pswitch_e
    const-string v3, "EnterpriseContainerService"

    const-string v4, "handleMessage() ENTERPRISE_CONTAINER_UNMOUNT_TIMEOUT"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "containerid"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v4

    sget-object v8, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_HIBERNATE_UNMOUNT_TIMEOUT:Lcom/sec/knox/container/constants/CSEvent;

    move/from16 v0, v25

    invoke-virtual {v3, v0, v4, v8}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v4}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v4

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->killAllApps(I)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move/from16 v0, v25

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->killUnmountTimer(I)V
    invoke-static {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5400(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x2

    const/4 v8, 0x1

    move/from16 v0, v25

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->unmount(III)V
    invoke-static {v3, v0, v4, v8}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4500(Lcom/sec/knox/container/EnterpriseContainerService;III)V

    goto/16 :goto_0

    :pswitch_f
    const-string v3, "EnterpriseContainerService"

    const-string v4, "handleMessage() ENTERPRISE_CONTAINER_LOCK_TIMEOUT"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "containerid"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->executeTimeout(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_d
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method public mountSecondStorage(IIILjava/lang/String;Ljava/lang/String;)Z
    .locals 14

    const-string v2, "EnterpriseContainerService"

    const-string v3, "mountSecondStorage()"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move/from16 v0, p3

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->isContainerPartition(I)Z
    invoke-static {v2, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5500(Lcom/sec/knox/container/EnterpriseContainerService;I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "EnterpriseContainerService"

    const-string v3, "Error create container: sdcard directory"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/storage/container/.sdcontainer_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/mnt_1/sdcard_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz p5, :cond_1

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v1, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v7, 0x0

    move v3, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;IILjava/lang/String;Ljava/lang/String;Z)V

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->setRequestId(I)V

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3100(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/dirEncryption/DirEncryptionManager;

    move-result-object v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x2

    move-object v3, v12

    move-object v4, v11

    move-object/from16 v5, p5

    move/from16 v8, p3

    move-object v10, v1

    invoke-virtual/range {v2 .. v10}, Landroid/dirEncryption/DirEncryptionManager;->mountEcryptfsStorage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIILandroid/dirEncryption/IDirEncryptionManagerCallBack;)I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_2

    const-string v2, "EnterpriseContainerService"

    const-string v3, "Error create container: DirEncryptionManager secondary mount failed"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v6, 0x0

    move v3, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;IILjava/lang/String;Z)V

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->setRequestId(I)V

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3100(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/dirEncryption/DirEncryptionManager;

    move-result-object v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x2

    move-object v3, v12

    move-object v4, v11

    move-object/from16 v5, p4

    move/from16 v8, p3

    move-object v10, v1

    invoke-virtual/range {v2 .. v10}, Landroid/dirEncryption/DirEncryptionManager;->mountEcryptfsStorage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIILandroid/dirEncryption/IDirEncryptionManagerCallBack;)I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_2

    const-string v2, "EnterpriseContainerService"

    const-string v3, "Error create container: DirEncryptionManager secondary mount failed"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public toString(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message parameter : Unknown return - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_PACKAGE_INSTALLED"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_ALL_PACKAGES_INSTALLED"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_PACKAGE_UNINSTALLED"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_ALL_PACKAGES_UNINSTALLED"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_ERASE_PARTIAL_CONTAINER"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_CANCEL_CONTAINER_CREATION"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_HANDLE_BOOT_COMPLETE"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_HANDLE_PASSWORD_TIMEOUT"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_8
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_SETUP_FAILURE"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_9
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_REMOUNT_FAILURE"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_a
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_SETUP_SUCCESS"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_b
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_REMOUNT_SUCCESS"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_c
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_d
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_EXPIRATION_TIMEOUT"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_e
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_LOCK_TIMEOUT"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_f
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_UNMOUNT_TIMEOUT"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_c
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
