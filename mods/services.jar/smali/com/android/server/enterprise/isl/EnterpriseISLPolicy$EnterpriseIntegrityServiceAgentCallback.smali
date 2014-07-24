.class Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;
.super Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback$Stub;
.source "EnterpriseISLPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnterpriseIntegrityServiceAgentCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-direct {p0}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addFingerPrint(ILjava/lang/String;Ljava/lang/String;[B)Z
    .locals 4

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISL addFingerPrint Uid is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Package is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "addFingerPrint"

    invoke-virtual {p0, p4, v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->print_fingerprint([BLjava/lang/String;)V

    const-string v1, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "isaPackageName"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "packageName"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fpCurrent"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v1, "fpDirty"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;
    invoke-static {v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$2200(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    move-result-object v1

    const-string v2, "EnterpriseIslFpTable"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->writeFingerPrint(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    return v1
.end method

.method public checkResult(IILjava/lang/String;[B[BI)V
    .locals 9

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "in checkResult"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #calls: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    invoke-static {v1, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1500(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #calls: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getSubscriberInstance(I)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;
    invoke-static {v1, v7}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$500(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;I)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    move-result-object v0

    if-eqz v0, :cond_1

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    :try_start_0
    invoke-interface/range {v0 .. v6}, Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;->onViolation(IILjava/lang/String;[B[BI)V

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISA reported checkResult for scan type - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v8

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public clearFingerPrintFlag(ILjava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISL ClearFingerPrintFlag "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;
    invoke-static {v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$2200(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->clearFingerPrint(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public commit()Z
    .locals 4

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ISL commit "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #calls: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    invoke-static {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1500(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$700()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->commitFingerPrint(ILjava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public commitFingerPrint(ILjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ISL commitFingerPrint "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;
    invoke-static {v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$2200(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->commitFingerPrint(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->clearFingerPrintFlag(ILjava/lang/String;)Z

    :cond_1
    return v0
.end method

.method public computeFileHash(Ljava/io/File;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;)V
    .locals 24

    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v20

    const-string v21, "computeFileHash - invalid input"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->fileCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->fileCount:I

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "File Count -- "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->fileCount:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "File -- "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :try_start_0
    #getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->fileNameDigest:Ljava/security/MessageDigest;
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->access$1200(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;)Ljava/security/MessageDigest;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    const-string v22, "UTF-8"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/security/MessageDigest;->update([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getFileAttributes(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    :try_start_1
    #getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->fileAttributeDigest:Ljava/security/MessageDigest;
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->access$1300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;)Ljava/security/MessageDigest;

    move-result-object v20

    const-string v21, "UTF-8"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/security/MessageDigest;->update([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v19

    if-eqz v19, :cond_4

    move-object/from16 v3, v19

    array-length v13, v3

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v13, :cond_5

    aget-object v18, v3, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->computeFileHash(Ljava/io/File;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :catch_0
    move-exception v6

    const-string v20, "algorithm %s does not exist"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "UTF-8"

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v20, Ljava/lang/RuntimeException;

    move-object/from16 v0, v20

    invoke-direct {v0, v14, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    :catch_1
    move-exception v6

    const-string v20, "algorithm %s does not exist"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "UTF-8"

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v20, Ljava/lang/RuntimeException;

    move-object/from16 v0, v20

    invoke-direct {v0, v14, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    :cond_4
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "directory is empty"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isFile()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->canRead()Z

    move-result v20

    if-eqz v20, :cond_8

    const/4 v11, 0x0

    :try_start_2
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    if-nez v8, :cond_6

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "FileInputStream is null -- "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance v12, Ljava/security/DigestInputStream;

    #getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->contentDigest:Ljava/security/MessageDigest;
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->access$1400(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;)Ljava/security/MessageDigest;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v12, v8, v0}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v12, :cond_b

    const/16 v20, 0x1000

    :try_start_3
    move/from16 v0, v20

    new-array v5, v0, [B

    invoke-virtual {v12, v5}, Ljava/io/InputStream;->read([B)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_b

    if-eqz v12, :cond_0

    :try_start_4
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v6

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "failed - closing file input stream: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_3
    move-exception v6

    :goto_2
    :try_start_5
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "failed - generate file digest : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_7
    if-eqz v11, :cond_8

    :try_start_6
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    :cond_8
    :goto_3
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    #calls: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    invoke-static {v0, v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1500(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v21

    #calls: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1600(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v10

    if-eqz v10, :cond_0

    :try_start_7
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1100()I

    move-result v20

    if-lez v20, :cond_0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->fileCount:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1100()I

    move-result v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v20, v16, v20

    const-wide/high16 v22, 0x4059

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v15, v0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1700()I

    move-result v20

    move/from16 v0, v20

    if-eq v0, v15, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Platform Scan Progress -- "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-static {v15}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1702(I)I

    invoke-interface {v10, v15}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->platformScanProgress(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v6

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v20

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_0
    move-exception v20

    :goto_4
    if-eqz v11, :cond_a

    :try_start_8
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_a
    :goto_5
    throw v20

    :catch_5
    move-exception v6

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v21

    if-eqz v21, :cond_a

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "failed - closing file input stream: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :catch_6
    move-exception v6

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "failed - closing file input stream: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    :goto_6
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :cond_b
    if-eqz v12, :cond_8

    :try_start_9
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto/16 :goto_3

    :catch_7
    move-exception v6

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "failed - closing file input stream: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto :goto_6

    :catchall_1
    move-exception v20

    move-object v11, v12

    goto/16 :goto_4

    :catch_8
    move-exception v6

    move-object v11, v12

    goto/16 :goto_2
.end method

.method public countFiles(Ljava/io/File;)V
    .locals 8

    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "countFiles - invalid input"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1104()I

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object v0, v4

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->countFiles(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "directory is empty"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public delete3rdPartyBaseLine(Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ISL delete3rdPartyBaseLine"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #calls: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    invoke-static {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1500(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$700()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->deleteFingerPrint(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public delete3rdPartyBaseline()Z
    .locals 10

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ISL delete3rdPartyBaseline"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v6, 0x1

    const/4 v2, 0x0

    iget-object v7, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #calls: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    invoke-static {v7, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1500(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #calls: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminISAMAPFromDB()Ljava/util/Map;
    invoke-static {v7}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$2000(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Ljava/util/Map;

    move-result-object v3

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$700()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$700()Ljava/util/Map;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #calls: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getPackageListfromDB(ILjava/lang/String;)Ljava/util/List;
    invoke-static {v7, v0, v2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$2100(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;ILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ISL delete3rdPartyBaseline--- Deleteing Baseline for PackageName:-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0, v0, v2, v5}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->deleteFingerPrint(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v6, v7

    if-nez v6, :cond_1

    :cond_3
    :goto_0
    return v6

    :cond_4
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ISL delete3rdPartyBaseline--- The package List := [ NULL ]"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #calls: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getPackageListfromDB(ILjava/lang/String;)Ljava/util/List;
    invoke-static {v7, v0, v2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$2100(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;ILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_8

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ISL delete3rdPartyBaseline--- Deleteing Baseline for PackageName:-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {p0, v0, v2, v5}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->deleteFingerPrint(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v6, v7

    if-nez v6, :cond_6

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ISL delete3rdPartyBaseline--- The package List := [ NULL ]"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_9
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ISL delete3rdPartyBaseline--- There is no entry in the DB "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public deleteFingerPrint(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x3

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISL deleteFingerPrint of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-array v1, v6, [Ljava/lang/String;

    const-string v3, "adminUid"

    aput-object v3, v1, v7

    const-string v3, "isaPackageName"

    aput-object v3, v1, v8

    const-string v3, "packageName"

    aput-object v3, v1, v9

    new-array v2, v6, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object p2, v2, v8

    aput-object p3, v2, v9

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "fpDirty"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;
    invoke-static {v3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$2200(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    move-result-object v3

    const-string v4, "EnterpriseIslFpTable"

    invoke-virtual {v3, v4, v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->updateFingerPrint(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    return v3
.end method

.method public deletePlatformBaseLine()Z
    .locals 4

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ISL deletePlatformBaseLine "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #calls: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    invoke-static {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1500(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$700()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "system"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->deleteFingerPrint(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public deletePreBaseLine()Z
    .locals 4

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ISL deletePreBaseLine "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #calls: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    invoke-static {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1500(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$700()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "prebaseLine"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->deleteFingerPrint(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public getPackageInfo(Ljava/util/List;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Landroid/content/Context;

    move-result-object v14

    const-string/jumbo v15, "user"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/UserManager;

    invoke-virtual {v12}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v13

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/UserInfo;

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " in getPackageInfo -----  Retrieving packageList For UserId: ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const/16 v15, 0x5040

    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v9

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "in getPackageInfo-- USER ID = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " Total PackageLists Size ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v9, :cond_0

    :try_start_0
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageInfo;

    iget-object v14, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v14, :cond_3

    iget-object v14, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v14, v14, 0x1

    const/4 v15, 0x1

    if-eq v14, v15, :cond_3

    iget-object v14, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v8, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_7

    :goto_3
    return-object v7

    :cond_7
    const/4 v7, 0x0

    goto :goto_3
.end method

.method public getPackageList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #calls: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAllPackagesFromUsers()Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1900(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.0"

    return-object v0
.end method

.method public performPlatformScan()[B
    .locals 10

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "in performPlatformScan"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1800()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    const/4 v5, 0x0

    :try_start_0
    invoke-static {v5}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1102(I)I

    const/4 v5, -0x1

    invoke-static {v5}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1702(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v4, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;

    invoke-direct {v4}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;-><init>()V

    const/4 v2, 0x0

    new-instance v5, Ljava/io/File;

    const-string v7, "/system"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->countFiles(Ljava/io/File;)V

    new-instance v5, Ljava/io/File;

    const-string v7, "/system"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v4}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->computeFileHash(Ljava/io/File;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;)V

    const-string v5, "SHA-256"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    #getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->fileAttributeDigest:Ljava/security/MessageDigest;
    invoke-static {v4}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->access$1300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;)Ljava/security/MessageDigest;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->update([B)V

    #getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->fileNameDigest:Ljava/security/MessageDigest;
    invoke-static {v4}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->access$1200(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;)Ljava/security/MessageDigest;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->update([B)V

    #getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->contentDigest:Ljava/security/MessageDigest;
    invoke-static {v4}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->access$1400(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;)Ljava/security/MessageDigest;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    :try_start_2
    monitor-exit v6

    return-object v2

    :catch_0
    move-exception v0

    const-string v5, "Algorithm %s does not exist"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "SHA-256"

    aput-object v9, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method public print_fingerprint([BLjava/lang/String;)V
    .locals 6

    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "fingerprint is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    aget-byte v1, p1, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Byte recieved from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public progress(II)V
    .locals 6

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "in ISA progress"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #calls: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    invoke-static {v3, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1500(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #calls: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getSubscriberInstance(I)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;
    invoke-static {v3, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$500(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;I)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v2, p1, p2}, Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;->onProgress(II)V

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISA reported progress - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "% for operation type - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public read3rdPartyBaseLine(Ljava/lang/String;)[B
    .locals 4

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ISL read3rdPartyBaseLine "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #calls: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    invoke-static {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1500(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$700()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->readFingerPrint(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    return-object v2
.end method

.method public readFingerPrint(ILjava/lang/String;Ljava/lang/String;)[B
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ISL readFingerPrint "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-array v1, v9, [Ljava/lang/String;

    const-string v4, "adminUid"

    aput-object v4, v1, v6

    const-string v4, "isaPackageName"

    aput-object v4, v1, v7

    const-string v4, "packageName"

    aput-object v4, v1, v8

    new-array v3, v9, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object p2, v3, v7

    aput-object p3, v3, v8

    new-array v2, v7, [Ljava/lang/String;

    const-string v4, "fpBaseLined"

    aput-object v4, v2, v6

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;
    invoke-static {v4}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$2200(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    move-result-object v4

    const-string v5, "EnterpriseIslFpTable"

    invoke-virtual {v4, v5, v1, v3, v2}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->readFingerPrint(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)[B

    move-result-object v0

    const-string v4, "readFingerPrint"

    invoke-virtual {p0, v0, v4}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->print_fingerprint([BLjava/lang/String;)V

    return-object v0
.end method

.method public readPlatformBaseLine()[B
    .locals 4

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ISL readPlatformBaseLine "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #calls: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    invoke-static {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1500(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$700()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "system"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->readFingerPrint(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    return-object v2
.end method

.method public readPreBaseLine()[B
    .locals 4

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ISL readPreBaseLine "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #calls: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    invoke-static {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1500(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$700()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "prebaseLine"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->readFingerPrint(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    return-object v2
.end method

.method public reportError(IILjava/lang/String;I)V
    .locals 6

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "in reportError"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #calls: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    invoke-static {v3, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1500(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #calls: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getSubscriberInstance(I)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;
    invoke-static {v3, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$500(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;I)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;->onError(IILjava/lang/String;I)V

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISA reported error for operation type - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reportSuccess(I)V
    .locals 6

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "in reportSuccess"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #calls: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    invoke-static {v3, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1500(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #calls: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getSubscriberInstance(I)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;
    invoke-static {v3, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$500(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;I)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v2, p1}, Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;->onSuccess(I)V

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISA reported success for operation type - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public rollback()Z
    .locals 4

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ISL rollback "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #calls: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    invoke-static {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1500(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$700()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->rollbackFingerPrint(ILjava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public rollbackFingerPrint(ILjava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISL rollbackFingerPrint "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;
    invoke-static {v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$2200(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->rollbackFingerPrint(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public store3rdPartyBaseLine(Ljava/lang/String;[B)Z
    .locals 4

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ISL store3rdPartyBaseLine "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #calls: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    invoke-static {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1500(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$700()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "system"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "prebaseLine"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_2
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->addFingerPrint(ILjava/lang/String;Ljava/lang/String;[B)Z

    move-result v2

    goto :goto_0
.end method

.method public storePlatformBaseLine([B)Z
    .locals 4

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ISL storePlatformBaseLine "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #calls: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    invoke-static {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1500(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$700()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "system"

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->addFingerPrint(ILjava/lang/String;Ljava/lang/String;[B)Z

    move-result v2

    return v2
.end method

.method public storePreBaseLine([B)Z
    .locals 4

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ISL storePreBaseLine "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #calls: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    invoke-static {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1500(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$700()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "prebaseLine"

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->addFingerPrint(ILjava/lang/String;Ljava/lang/String;[B)Z

    move-result v2

    return v2
.end method

.method public update3rdPartyBaseLine(Ljava/lang/String;[B)Z
    .locals 4

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ISL update3rdPartyBaseLine "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #calls: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    invoke-static {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1500(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$700()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->updateFingerPrint(ILjava/lang/String;Ljava/lang/String;[B)Z

    move-result v2

    return v2
.end method

.method public updateFingerPrint(ILjava/lang/String;Ljava/lang/String;[B)Z
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ISL updateFingerPrint "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-array v1, v8, [Ljava/lang/String;

    const-string v3, "adminUid"

    aput-object v3, v1, v6

    const-string v3, "isaPackageName"

    aput-object v3, v1, v7

    const-string v3, "packageName"

    aput-object v3, v1, v5

    new-array v2, v8, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object p2, v2, v7

    aput-object p3, v2, v5

    const-string/jumbo v3, "updateFingerPrint"

    invoke-virtual {p0, p4, v3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->print_fingerprint([BLjava/lang/String;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "fpCurrent"

    invoke-virtual {v0, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v3, "fpDirty"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;
    invoke-static {v3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$2200(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    move-result-object v3

    const-string v4, "EnterpriseIslFpTable"

    invoke-virtual {v3, v4, v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->updateFingerPrint(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    return v3
.end method

.method public updatePlatformBaseLine([B)Z
    .locals 4

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ISL updatePlatformBaseLine "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #calls: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    invoke-static {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1500(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$700()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "system"

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->updateFingerPrint(ILjava/lang/String;Ljava/lang/String;[B)Z

    move-result v2

    return v2
.end method

.method public updatePreBaseLine([B)Z
    .locals 4

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ISL updatePreBaseLine "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #calls: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    invoke-static {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1500(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$700()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "prebaseLine"

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->updateFingerPrint(ILjava/lang/String;Ljava/lang/String;[B)Z

    move-result v2

    return v2
.end method
