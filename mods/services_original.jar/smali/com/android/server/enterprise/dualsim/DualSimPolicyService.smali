.class public Lcom/android/server/enterprise/dualsim/DualSimPolicyService;
.super Landroid/app/enterprise/dualsim/IDualSimPolicy$Stub;
.source "DualSimPolicyService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "DualSimPolicyService"

.field private static mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/app/enterprise/dualsim/IDualSimPolicy$Stub;-><init>()V

    const-string v0, "DualSimPolicyService"

    const-string v1, "DualSimPolicy Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getInstance()Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    return-void
.end method

.method private enforceDualSimPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_DUAL_SIM"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndDualSimPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_DUAL_SIM"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method


# virtual methods
.method public addPhoneToWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceOwnerOnlyAndDualSimPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v2, v1, p2, p3}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->addPhoneToSimcardWhiteList(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public checkPrivilegedNumber(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)I
    .locals 16

    const-string v13, "DualSimPolicyService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "checkPrivilegedNumber ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable(Landroid/app/enterprise/ContextInfo;)Z

    move-result v13

    if-eqz v13, :cond_5

    sget-object v13, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    const/4 v13, 0x0

    invoke-static {v13}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->hasIccCard(I)Z

    move-result v13

    if-nez v13, :cond_0

    sget-object v13, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    const/4 v13, 0x1

    invoke-static {v13}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->hasIccCard(I)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    const/16 p3, 0x1

    :cond_0
    sget-object v13, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getIccId(I)Ljava/lang/String;

    move-result-object v3

    const-string v13, "DualSimPolicyService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "checkPrivilegedNumber iccID= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v13, v3}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(Ljava/lang/String;)Z

    move-result v4

    const/4 v7, 0x0

    const-string v13, "DualSimPolicyService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Checking "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " with sim card slot = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Icc id ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " coporate="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "SIM inserted ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getInsertedSimCount()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v11, p3

    const/4 v12, 0x0

    :goto_0
    :try_start_0
    sget-object v13, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getInsertedSimCount()I

    move-result v13

    if-ge v12, v13, :cond_4

    const-string v13, "DualSimPolicyService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Loop check - SIM "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    const/4 v14, -0x1

    sget-object v15, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v11}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getIccId(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->getWhiteListForSimcard(ILjava/lang/String;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2

    if-eqz p2, :cond_2

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    const-string v13, "DualSimPolicyService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Compiled regex was "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "and the number is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " found at simSlot= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v13, "DualSimPolicyService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found at sim list =>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    move/from16 p3, v11

    move/from16 v10, p3

    :goto_1
    return v10

    :cond_2
    add-int/lit8 v11, v11, 0x1

    sget-object v13, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getInsertedSimCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    if-ne v11, v13, :cond_3

    const/4 v11, 0x0

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v13, "DualSimPolicyService"

    const-string v14, ">>> checkPrivilegedNumber - exception"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v4, :cond_5

    if-nez v7, :cond_5

    const/16 p3, 0xff

    const-string v13, "DualSimPolicyService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Corporate SIM and number not found at any list, block call "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move/from16 v10, p3

    goto :goto_1
.end method

.method public clearWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceOwnerOnlyAndDualSimPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->clearWhiteList(ILjava/lang/String;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public forceDataSim(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable(Landroid/app/enterprise/ContextInfo;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "DualSimPolicyService"

    const-string v6, "forceDataSim - Begin"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceOwnerOnlyAndDualSimPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v5}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->getForcedDataSimcard()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_5

    iget-object v5, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v5, v4, p2}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v5, v4, v0}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    if-eqz v0, :cond_2

    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    :cond_2
    sget-object v5, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getInsertedSimCount()I

    move-result v5

    if-ge v1, v5, :cond_3

    sget-object v5, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v5, v4, p2}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->switchToSimDataNetwork(I)Z

    sget-object v5, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->setActiveSimForData(I)V

    const/4 v3, 0x1

    :cond_3
    const/4 v5, 0x1

    if-ne v3, v5, :cond_4

    iget-object v5, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v5, p2}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->forceDataThroughSimcard(Ljava/lang/String;)Z

    move-result v3

    :cond_4
    :goto_1
    move v5, v3

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v5, v4, v0}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    if-nez v0, :cond_4

    :cond_6
    iget-object v5, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v5}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->disableForceData()Z

    move-result v3

    goto :goto_1
.end method

.method public getActiveSimForCall(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getDefaultSimForVoiceCalls()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "DualSimPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActiveSimForCall() >> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getDefaultSimForVoiceCalls()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->hasIccCard(I)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v5}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->hasIccCard(I)Z

    move-result v2

    if-ne v2, v5, :cond_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    sget-object v2, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getIccId(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getActiveSimForData(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "DualSimPolicyService"

    const-string v3, "getActiveDataSim - Begin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getActiveSimForData()I

    move-result v1

    sget-object v2, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getIccId(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getActiveSimForMessage(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceDualSimPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "DualSimPolicyService"

    const-string v3, "getActiveSimForMessage() "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v2}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->getActiveSimcardForMessaging()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getForcedDataSim(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DualSimPolicyService"

    const-string v2, "getForcedDataSim - Begin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceDualSimPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isDataForced(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->getActiveSimForData(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getIccId(Landroid/app/enterprise/ContextInfo;I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {p2}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getIccId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWhiteListForSimcard(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceDualSimPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->getWhiteListForSimcard(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public isDataForced(Landroid/app/enterprise/ContextInfo;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DualSimPolicyService"

    const-string v2, "isDataForced()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isDataForced()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public isMdmDualSimAvailable(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->isMultiSimEnabled()Z

    move-result v0

    return v0
.end method

.method public isSimCardCorporate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DualSimPolicyService"

    const-string v1, "isSimCardCorporate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceDualSimPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v1

    iget v1, v1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1, p2}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(ILjava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 2

    const-string v0, "DualSimPolicyService"

    const-string v1, "onAdminAdded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 2

    const-string v0, "DualSimPolicyService"

    const-string v1, "onAdminRemoved"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 2

    const-string v0, "DualSimPolicyService"

    const-string v1, "onPreAdminRemoval"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removePhoneFromWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceOwnerOnlyAndDualSimPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v2, v1, p2, p3}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->removePhoneFromSimcardWhiteList(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public setActiveSimForCall(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable(Landroid/app/enterprise/ContextInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceOwnerOnlyAndDualSimPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget-object v3, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v3, v2, p2}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {p2}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getIccSlot(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0xff

    if-eq v0, v3, :cond_0

    const-string v3, "DualSimPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setActiveSimForCall() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->setDefaultSimForVoiceCalls(I)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public setActiveSimForData(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable(Landroid/app/enterprise/ContextInfo;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "DualSimPolicyService"

    const-string v5, "setDataSim - Begin"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceOwnerOnlyAndDualSimPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isDataForced(Landroid/app/enterprise/ContextInfo;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v4, v3, p2}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :cond_2
    sget-object v4, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getInsertedSimCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    sget-object v4, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v4, v3, p2}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->switchToSimDataNetwork(I)Z

    sget-object v4, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->setActiveSimForData(I)V

    const/4 v2, 0x1

    :cond_3
    move v4, v2

    goto :goto_0
.end method

.method public setActiveSimForMessage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceOwnerOnlyAndDualSimPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "DualSimPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setActiveSimForMessage() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v2, p2}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->setActiveSimcardForMessaging(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "DualSimPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDualSimDBProxy.setActiveSimcardForMessaging() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public setCorporateSimCard(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable(Landroid/app/enterprise/ContextInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "DualSimPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCorporateSimCard "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceOwnerOnlyAndDualSimPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    sget-object v4, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {p2}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getIccSlot(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xff

    if-ne v4, v5, :cond_0

    const-string v4, "DualSimPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "returning "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    :goto_0
    return v2

    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v4, v3, p2}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(ILjava/lang/String;)Z

    move-result v0

    const-string v4, "DualSimPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " isCorporate? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p3, v0, :cond_2

    move v1, p3

    :goto_1
    const-string v4, "DualSimPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    iget-object v4, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v4, v3, p2}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->addCorporateSimcard(ILjava/lang/String;)Z

    move-result v1

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v4, v3, p2}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->removeCorporateSimcard(ILjava/lang/String;)Z

    move-result v1

    goto :goto_1
.end method

.method public systemReady()V
    .locals 2

    const-string v0, "DualSimPolicyService"

    const-string/jumbo v1, "systemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
