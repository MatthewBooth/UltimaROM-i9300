.class Lcom/android/server/MountService$MountObbAction;
.super Lcom/android/server/MountService$ObbAction;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountObbAction"
.end annotation


# instance fields
.field private final mCallingUid:I

.field private final mKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService$ObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V

    iput-object p3, p0, Lcom/android/server/MountService$MountObbAction;->mKey:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/MountService$MountObbAction;->mCallingUid:I

    return-void
.end method


# virtual methods
.method public handleError()V
    .locals 1

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/server/MountService$ObbAction;->sendNewStatusOrIgnore(I)V

    return-void
.end method

.method public handleExecute()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->waitForReady()V
    invoke-static {v12}, Lcom/android/server/MountService;->access$1200(Lcom/android/server/MountService;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->warnOnNotMounted()V
    invoke-static {v12}, Lcom/android/server/MountService;->access$2700(Lcom/android/server/MountService;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/MountService$ObbAction;->getObbInfo()Landroid/content/res/ObbInfo;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    iget-object v13, v10, Landroid/content/res/ObbInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/MountService$MountObbAction;->mCallingUid:I

    #calls: Lcom/android/server/MountService;->isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z
    invoke-static {v12, v13, v14}, Lcom/android/server/MountService;->access$2800(Lcom/android/server/MountService;Ljava/lang/String;I)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "MountService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Denied attempt to mount OBB "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v10, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " which is owned by "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v10, Landroid/content/res/ObbInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v12, 0x19

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/MountService$ObbAction;->sendNewStatusOrIgnore(I)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;
    invoke-static {v12}, Lcom/android/server/MountService;->access$2200(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v13

    monitor-enter v13

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;
    invoke-static {v12}, Lcom/android/server/MountService;->access$2300(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v14, v14, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v12, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    const-string v12, "MountService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Attempt to mount OBB which is already mounted: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v10, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v12, 0x18

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/MountService$ObbAction;->sendNewStatusOrIgnore(I)V

    goto :goto_0

    :catchall_0
    move-exception v12

    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v12

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountObbAction;->mKey:Ljava/lang/String;

    if-nez v12, :cond_3

    const-string v6, "none"

    :goto_1
    const/4 v11, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v12}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v12

    const-string v13, "obb"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "mount"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/MountService$ObbState;->voldPath:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x2

    new-instance v16, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v16, v14, v15

    const/4 v15, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/MountService$ObbState;->ownerGid:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_2
    if-nez v11, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;
    invoke-static {v12}, Lcom/android/server/MountService;->access$2200(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v13

    monitor-enter v13

    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    #calls: Lcom/android/server/MountService;->addObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    invoke-static {v12, v14}, Lcom/android/server/MountService;->access$2900(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V

    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/MountService$ObbAction;->sendNewStatusOrIgnore(I)V

    goto/16 :goto_0

    :cond_3
    :try_start_4
    const-string v12, "PBKDF2WithHmacSHA1"

    invoke-static {v12}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v5

    new-instance v9, Ljavax/crypto/spec/PBEKeySpec;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountObbAction;->mKey:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    iget-object v13, v10, Landroid/content/res/ObbInfo;->salt:[B

    const/16 v14, 0x400

    const/16 v15, 0x80

    invoke-direct {v9, v12, v13, v14, v15}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {v5, v9}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v8

    new-instance v1, Ljava/math/BigInteger;

    invoke-interface {v8}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v12

    invoke-direct {v1, v12}, Ljava/math/BigInteger;-><init>([B)V

    const/16 v12, 0x10

    invoke-virtual {v1, v12}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v6

    goto/16 :goto_1

    :catch_0
    move-exception v3

    const-string v12, "MountService"

    const-string v13, "Could not load PBKDF2 algorithm"

    invoke-static {v12, v13, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v12, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/MountService$ObbAction;->sendNewStatusOrIgnore(I)V

    goto/16 :goto_0

    :catch_1
    move-exception v3

    const-string v12, "MountService"

    const-string v13, "Invalid key spec when loading PBKDF2 algorithm"

    invoke-static {v12, v13, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v12, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/MountService$ObbAction;->sendNewStatusOrIgnore(I)V

    goto/16 :goto_0

    :catch_2
    move-exception v3

    :try_start_5
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_3

    move-result v2

    const/16 v12, 0x195

    if-eq v2, v12, :cond_2

    const/4 v11, -0x1

    goto :goto_2

    :catch_3
    move-exception v4

    const/4 v11, -0x1

    goto :goto_2

    :catchall_1
    move-exception v12

    :try_start_6
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v12

    :cond_4
    const-string v12, "MountService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Couldn\'t mount OBB file: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v12, 0x15

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/MountService$ObbAction;->sendNewStatusOrIgnore(I)V

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MountObbAction{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
