.class public Lcom/sec/android/service/sm/job/SecurityJob;
.super Ljava/lang/Object;
.source "SecurityJob.java"


# static fields
.field private static final CHECK_ICD_SUCCESS:Ljava/lang/String; = "1"

.field private static final ENFORCE_SECUREBOOT_OFF:I = 0x0

.field private static final ENFORCE_SECUREBOOT_ON:I = 0x1

.field private static final KNOX_INSTALLED_FILE:Ljava/lang/String; = "/data/system/edk_p_container_1"

.field private static final KNOX_MDPP_FILE:Ljava/lang/String; = "/data/system/edk_mdpp"

.field public static final MDPP_DISABLED:I = 0x8

.field public static final MDPP_EMPTY:I = 0x10

.field public static final MDPP_ENABLED:I = 0x1

.field public static final MDPP_ENFORCING:I = 0x2

.field public static final MDPP_READY:I = 0x4

.field private static final OLD_KEY_FILE:Ljava/lang/String; = "/data/system/password.key"

.field private static final PROPERTY_FIPSUI:Ljava/lang/String; = "ro.fipsui"

.field private static final PROPERTY_MDPP:Ljava/lang/String; = "security.mdpp"

.field private static final PROPERTY_MDPP_DISABLED:Ljava/lang/String; = "Disabled"

.field private static final PROPERTY_MDPP_EMPTY:Ljava/lang/String; = "None"

.field private static final PROPERTY_MDPP_ENABLED:Ljava/lang/String; = "Enabled"

.field private static final PROPERTY_MDPP_ENFORCING:Ljava/lang/String; = "Enforcing"

.field private static final PROPERTY_MDPP_READY:Ljava/lang/String; = "Ready"

.field private static final PROPERTY_MDPP_RELEASE:Ljava/lang/String; = "ro.security.mdpp.release"

.field public static final PROPERTY_MDPP_RESULT:Ljava/lang/String; = "security.mdpp.result"

.field private static final PROPERTY_MDPP_UX:Ljava/lang/String; = "ro.security.mdpp.ux"

.field private static final PROPERTY_MDPP_VER:Ljava/lang/String; = "ro.security.mdpp.ver"

.field public static final SEC_MANAGER_ERR_CCMODE_ALREADY_ENABLED:I = -0xe

.field public static final SEC_MANAGER_ERR_CCMODE_ALREADY_READY:I = -0xf

.field public static final SEC_MANAGER_ERR_CCMODE_DISABLED:I = -0xb

.field public static final SEC_MANAGER_ERR_CCMODE_ELSE:I = -0xd

.field public static final SEC_MANAGER_ERR_CCMODE_EMPTY:I = -0xc

.field public static final SEC_MANAGER_ERR_CCMODE_NOT_SUPPORT_CCMODE:I = -0x10

.field public static final SEC_MANAGER_ERR_ENFORCE_SB_FLAG_FAIL:I = -0x18

.field public static final SEC_MANAGER_ERR_GET_CCMODE_FLAG_FAIL:I = -0x1c

.field public static final SEC_MANAGER_ERR_GET_FIPS_STATUS_FAIL:I = -0x23

.field public static final SEC_MANAGER_ERR_ICD_FILE_NOT_EXIST:I = -0x16

.field public static final SEC_MANAGER_ERR_ICD_RESULT_INVALID:I = -0x17

.field public static final SEC_MANAGER_ERR_INVALID_INPUT:I = -0x1

.field public static final SEC_MANAGER_ERR_ODE_ENCRYPED_EXTERNAL:I = -0x21

.field public static final SEC_MANAGER_ERR_ODE_ENCRYPED_INTERNAL:I = -0x20

.field public static final SEC_MANAGER_ERR_ODE_ENCRYPED_NONE:I = -0x1f

.field public static final SEC_MANAGER_ERR_ODE_GETTING_STATUS_FAIL:I = -0x1e

.field public static final SEC_MANAGER_ERR_ODE_NOT_SET:I = -0x22

.field public static final SEC_MANAGER_ERR_OUT_OF_RANGE_OF_MAX_PW_COUNT:I = -0x19

.field public static final SEC_MANAGER_ERR_PASSWORD_HISTORY_LENGTH_SET:I = -0x25

.field public static final SEC_MANAGER_ERR_RECOVERY_PASSWORD_POLICY_SET:I = -0x24

.field public static final SEC_MANAGER_ERR_ROOTING_CHECK_FAIL:I = -0x15

.field public static final SEC_MANAGER_ERR_SCREENLOCK_NOT_SET:I = -0x1a

.field public static final SEC_MANAGER_ERR_SET_CCMODE_FLAG_FAIL:I = -0x1b

.field public static final SEC_MANAGER_ERR_SKMM_FIPS_SELFTEST_FAIL:I = -0x14

.field public static final SEC_MANAGER_OK:I

.field private static mSecurityManagerService:Lcom/sec/android/service/sm/service/SecurityManagerService;

.field private static mSecurityNativeJob:Lcom/sec/android/service/sm/job/SecurityNativeJob;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/service/sm/job/SecurityNativeJob;

    invoke-direct {v0}, Lcom/sec/android/service/sm/job/SecurityNativeJob;-><init>()V

    sput-object v0, Lcom/sec/android/service/sm/job/SecurityJob;->mSecurityNativeJob:Lcom/sec/android/service/sm/job/SecurityNativeJob;

    new-instance v0, Lcom/sec/android/service/sm/service/SecurityManagerService;

    invoke-direct {v0}, Lcom/sec/android/service/sm/service/SecurityManagerService;-><init>()V

    sput-object v0, Lcom/sec/android/service/sm/job/SecurityJob;->mSecurityManagerService:Lcom/sec/android/service/sm/service/SecurityManagerService;

    return-void
.end method

.method private static checkCCModeOnDevice()I
    .locals 6

    const/4 v4, 0x0

    new-instance v3, Ljava/io/File;

    const-string v5, "/data/system/password.key"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v5, "/data/system/edk_p_container_1"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v5, "/data/system/edk_mdpp"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/sec/android/service/sm/job/SecurityJob;->mSecurityNativeJob:Lcom/sec/android/service/sm/job/SecurityNativeJob;

    invoke-virtual {v5}, Lcom/sec/android/service/sm/job/SecurityNativeJob;->getCCModeFlag()I

    move-result v0

    const-string v5, "check the current status #1 ..."

    invoke-static {v5}, Lcom/sec/android/service/sm/util/Log;->d(Ljava/lang/String;)I

    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v5, 0x2

    if-ne v0, v5, :cond_1

    const/4 v4, 0x2

    goto :goto_0

    :cond_1
    const/4 v5, 0x4

    if-ne v0, v5, :cond_2

    const/4 v4, 0x4

    goto :goto_0

    :cond_2
    const/16 v5, 0x8

    if-ne v0, v5, :cond_3

    const/16 v4, 0x8

    goto :goto_0

    :cond_3
    const-string v5, "check the current status #2 ..."

    invoke-static {v5}, Lcom/sec/android/service/sm/util/Log;->d(Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v4, 0x4

    goto :goto_0

    :cond_4
    const/16 v4, 0x10

    goto :goto_0

    :cond_5
    const/4 v4, 0x4

    goto :goto_0

    :cond_6
    const/16 v4, 0x10

    goto :goto_0
.end method

.method private static checkDevicePolicy()I
    .locals 8

    const/4 v5, 0x0

    sget-object v6, Lcom/sec/android/service/sm/job/SecurityJob;->mSecurityManagerService:Lcom/sec/android/service/sm/service/SecurityManagerService;

    invoke-virtual {v6}, Lcom/sec/android/service/sm/service/SecurityManagerService;->getSamsungEncryptionStatusForCC()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed. ODE check = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    const/16 v5, -0x22

    :goto_0
    return v5

    :pswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed. ODE check = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    const/16 v5, -0x1e

    goto :goto_0

    :pswitch_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed. ODE check = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    const/16 v5, -0x1f

    goto :goto_0

    :pswitch_2
    const-string v6, "ODE check SUCCESS"

    invoke-static {v6}, Lcom/sec/android/service/sm/util/Log;->d(Ljava/lang/String;)I

    sget-object v6, Lcom/sec/android/service/sm/job/SecurityJob;->mSecurityManagerService:Lcom/sec/android/service/sm/service/SecurityManagerService;

    invoke-virtual {v6}, Lcom/sec/android/service/sm/service/SecurityManagerService;->getMaximumFailedPasswordsForWipe()I

    move-result v3

    if-lez v3, :cond_0

    const/16 v6, 0x14

    if-le v3, v6, :cond_1

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed. maximumFailedPasswordsForWipe = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    const/16 v5, -0x19

    goto :goto_0

    :pswitch_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed. ODE check = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    const/16 v5, -0x20

    goto :goto_0

    :pswitch_4
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed. ODE check = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    const/16 v5, -0x21

    goto/16 :goto_0

    :cond_1
    const-string v6, "MaxPassword check SUCCESS"

    invoke-static {v6}, Lcom/sec/android/service/sm/util/Log;->d(Ljava/lang/String;)I

    sget-object v6, Lcom/sec/android/service/sm/job/SecurityJob;->mSecurityManagerService:Lcom/sec/android/service/sm/service/SecurityManagerService;

    invoke-virtual {v6}, Lcom/sec/android/service/sm/service/SecurityManagerService;->isKeyguardSecure()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v6, "Failed. the screen is not locked."

    invoke-static {v6}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    const/16 v5, -0x1a

    goto/16 :goto_0

    :cond_2
    const-string v6, "ScreenLock check SUCCESS"

    invoke-static {v6}, Lcom/sec/android/service/sm/util/Log;->d(Ljava/lang/String;)I

    sget-object v6, Lcom/sec/android/service/sm/job/SecurityJob;->mSecurityManagerService:Lcom/sec/android/service/sm/service/SecurityManagerService;

    invoke-virtual {v6}, Lcom/sec/android/service/sm/service/SecurityManagerService;->getPasswordRecoverable()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v6, "Failed. Recovery password policy has been set."

    invoke-static {v6}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    const/16 v5, -0x24

    goto/16 :goto_0

    :cond_3
    const-string v6, "RecoveryPassword check SUCCESS"

    invoke-static {v6}, Lcom/sec/android/service/sm/util/Log;->d(Ljava/lang/String;)I

    sget-object v6, Lcom/sec/android/service/sm/job/SecurityJob;->mSecurityManagerService:Lcom/sec/android/service/sm/service/SecurityManagerService;

    invoke-virtual {v6}, Lcom/sec/android/service/sm/service/SecurityManagerService;->getPasswordHistoryLength()I

    move-result v4

    if-eqz v4, :cond_4

    const-string v6, "Failed. PasswordHistoryLength has been set."

    invoke-static {v6}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    const/16 v5, -0x25

    goto/16 :goto_0

    :cond_4
    const-string v6, "PasswordHistoryLength check SUCCESS"

    invoke-static {v6}, Lcom/sec/android/service/sm/util/Log;->d(Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static checkICD()I
    .locals 6

    const/16 v4, -0x17

    const/16 v3, -0x16

    const/4 v0, 0x0

    new-instance v2, Ljava/io/File;

    const-string v5, "/system/bin/icd"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v4, "#1 icd doesn\'t exist."

    invoke-static {v4}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    move v0, v3

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v2, Ljava/io/File;

    const-string v5, "/dev/icd"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v2}, Lcom/sec/android/service/sm/util/FileIO;->getLineInFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "1"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Failed. #2 icd : "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    move v0, v4

    goto :goto_0

    :cond_2
    const-string v4, "#2 icd doesn\'t exist."

    invoke-static {v4}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    move v0, v3

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/io/File;

    const-string v5, "/dev/icdr"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v2}, Lcom/sec/android/service/sm/util/FileIO;->getLineInFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Failed. #3 icd : "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    move v0, v4

    goto :goto_0

    :cond_4
    const-string v4, "#3 icd doesn\'t exist."

    invoke-static {v4}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    move v0, v3

    goto :goto_0
.end method

.method private static enforceSB(Z)I
    .locals 5

    const/16 v2, -0x18

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p0, :cond_1

    sget-object v3, Lcom/sec/android/service/sm/job/SecurityJob;->mSecurityNativeJob:Lcom/sec/android/service/sm/job/SecurityNativeJob;

    invoke-virtual {v3}, Lcom/sec/android/service/sm/job/SecurityNativeJob;->setSBFlagOn()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed. setSBFlagOn() res = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    sget-object v3, Lcom/sec/android/service/sm/job/SecurityJob;->mSecurityNativeJob:Lcom/sec/android/service/sm/job/SecurityNativeJob;

    invoke-virtual {v3}, Lcom/sec/android/service/sm/job/SecurityNativeJob;->getSBFlag()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed. SBFlag has yet to set. current flag = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/sec/android/service/sm/job/SecurityJob;->mSecurityNativeJob:Lcom/sec/android/service/sm/job/SecurityNativeJob;

    invoke-virtual {v3}, Lcom/sec/android/service/sm/job/SecurityNativeJob;->setSBFlagOff()I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed. setSBFlagOff() res = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/sec/android/service/sm/job/SecurityJob;->mSecurityNativeJob:Lcom/sec/android/service/sm/job/SecurityNativeJob;

    invoke-virtual {v3}, Lcom/sec/android/service/sm/job/SecurityNativeJob;->getSBFlag()I

    move-result v1

    if-eqz v1, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed. SBFlag has yet to set. current flag = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_0
.end method

.method private static performCCModePreProcess()I
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/sec/android/service/sm/job/SecurityJob;->checkICD()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed. checkICD = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/service/sm/util/Log;->d(Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/sec/android/service/sm/util/FipsStatus;->getFipsStatus()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed. FipsStatus = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/service/sm/util/Log;->d(Ljava/lang/String;)I

    const/16 v0, -0x23

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sec/android/service/sm/job/SecurityJob;->mSecurityNativeJob:Lcom/sec/android/service/sm/job/SecurityNativeJob;

    invoke-virtual {v1}, Lcom/sec/android/service/sm/job/SecurityNativeJob;->SKMM_SelfTest()I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed. SKMM and FIPSOpenssl self test = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/service/sm/util/Log;->d(Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v1, "Pre Process OK."

    invoke-static {v1}, Lcom/sec/android/service/sm/util/Log;->d(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setCCMode(I)I
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_0

    invoke-static {v3, v3}, Lcom/sec/android/service/sm/job/SecurityJob;->setFlags(ZI)I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v3

    :sswitch_0
    invoke-static {v2, v2}, Lcom/sec/android/service/sm/job/SecurityJob;->setFlags(ZI)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "security.mdpp"

    const-string v2, "Enabled"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "security.mdpp : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "security.mdpp"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/service/sm/util/Log;->d(Ljava/lang/String;)I

    goto :goto_0

    :sswitch_1
    const/4 v1, 0x2

    invoke-static {v2, v1}, Lcom/sec/android/service/sm/job/SecurityJob;->setFlags(ZI)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "security.mdpp"

    const-string v2, "Enforcing"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_2
    const/4 v1, 0x4

    invoke-static {v3, v1}, Lcom/sec/android/service/sm/job/SecurityJob;->setFlags(ZI)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "security.mdpp"

    const-string v2, "Ready"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_3
    const/16 v1, 0x8

    invoke-static {v2, v1}, Lcom/sec/android/service/sm/job/SecurityJob;->setFlags(ZI)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "security.mdpp"

    const-string v2, "Disabled"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_4
    const/16 v1, 0x10

    invoke-static {v3, v1}, Lcom/sec/android/service/sm/job/SecurityJob;->setFlags(ZI)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "security.mdpp"

    const-string v2, "None"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v1, "security.mdpp"

    const-string v2, "None"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setCCMode default... status = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method public static setCCModeFlag(I)I
    .locals 6

    const/16 v3, -0x1b

    const/4 v2, 0x0

    move v0, p0

    sget-object v4, Lcom/sec/android/service/sm/job/SecurityJob;->mSecurityNativeJob:Lcom/sec/android/service/sm/job/SecurityNativeJob;

    invoke-virtual {v4, v0}, Lcom/sec/android/service/sm/job/SecurityNativeJob;->setCCModeFlag(I)I

    move-result v2

    if-eqz v2, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed. setCCModeFlag() res = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    move v2, v3

    :cond_0
    :goto_0
    return v2

    :cond_1
    sget-object v4, Lcom/sec/android/service/sm/job/SecurityJob;->mSecurityNativeJob:Lcom/sec/android/service/sm/job/SecurityNativeJob;

    invoke-virtual {v4}, Lcom/sec/android/service/sm/job/SecurityNativeJob;->getCCModeFlag()I

    move-result v1

    if-eq v1, v0, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed. CCMode Flag has yet to set. current flag = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    move v2, v3

    goto :goto_0
.end method

.method private static setFlags(ZI)I
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/sec/android/service/sm/job/SecurityJob;->enforceSB(Z)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed. enforceSB : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/service/sm/util/Log;->d(Ljava/lang/String;)I

    move v1, v0

    :goto_0
    return v1

    :cond_0
    invoke-static {p1}, Lcom/sec/android/service/sm/job/SecurityJob;->setCCModeFlag(I)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed. setCCModeFlag : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/service/sm/util/Log;->d(Ljava/lang/String;)I

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public enableMDFPPMode(Z)I
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/16 v6, 0x8

    const/16 v5, 0x10

    const/4 v1, 0x0

    const-string v3, "security.mdpp.result"

    const-string v4, "None"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Enabled"

    const-string v4, "ro.security.mdpp.ux"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "This model does not support CC mode."

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    const/16 v1, -0x10

    const-string v3, "security.mdpp.result"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    :goto_0
    return v2

    :cond_0
    invoke-static {}, Lcom/sec/android/service/sm/job/SecurityJob;->checkCCModeOnDevice()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "the current mode : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->d(Ljava/lang/String;)I

    if-eqz p1, :cond_c

    if-ne v0, v9, :cond_2

    const-string v3, "Failed. CCMode is already enabled."

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    const/16 v1, -0xe

    const-string v3, "security.mdpp.result"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    if-eq v0, v8, :cond_3

    if-ne v0, v7, :cond_6

    :cond_3
    invoke-static {}, Lcom/sec/android/service/sm/job/SecurityJob;->checkDevicePolicy()I

    move-result v1

    const-string v3, "security.mdpp.result"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Prerequisite policies have yet to set. res = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    invoke-static {v7}, Lcom/sec/android/service/sm/job/SecurityJob;->setCCMode(I)I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed. setCCMode. res = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/sec/android/service/sm/job/SecurityJob;->performCCModePreProcess()I

    move-result v1

    const-string v3, "security.mdpp.result"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed. CCMode Pre-Process. res = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    invoke-static {v6}, Lcom/sec/android/service/sm/job/SecurityJob;->setCCMode(I)I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed. setCCMode. res = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5
    invoke-static {v7}, Lcom/sec/android/service/sm/job/SecurityJob;->setCCMode(I)I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed. setCCMode. res = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    if-ne v0, v5, :cond_8

    invoke-static {v5}, Lcom/sec/android/service/sm/job/SecurityJob;->setCCMode(I)I

    move-result v1

    if-eqz v1, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed. setCCMode. res = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    :cond_7
    const/16 v1, -0xc

    const-string v3, "security.mdpp.result"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    if-ne v0, v6, :cond_a

    invoke-static {v6}, Lcom/sec/android/service/sm/job/SecurityJob;->setCCMode(I)I

    move-result v1

    if-eqz v1, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed. setCCMode. res = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    :cond_9
    const/16 v1, -0xb

    const-string v3, "security.mdpp.result"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    invoke-static {v5}, Lcom/sec/android/service/sm/job/SecurityJob;->setCCMode(I)I

    move-result v1

    if-eqz v1, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed. setCCMode. res = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    :cond_b
    const/16 v1, -0xd

    const-string v3, "security.mdpp.result"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    if-eq v0, v9, :cond_d

    if-ne v0, v7, :cond_f

    :cond_d
    invoke-static {v8}, Lcom/sec/android/service/sm/job/SecurityJob;->setCCMode(I)I

    move-result v1

    if-eqz v1, :cond_e

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed. setCCMode. res = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    :cond_e
    const-string v3, "security.mdpp.result"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_f
    if-ne v0, v8, :cond_10

    const-string v3, "Failed. CCMode is already ready."

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    const/16 v1, -0xf

    const-string v3, "security.mdpp.result"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    if-ne v0, v6, :cond_12

    invoke-static {v6}, Lcom/sec/android/service/sm/job/SecurityJob;->setCCMode(I)I

    move-result v1

    if-eqz v1, :cond_11

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed. setCCMode. res = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    :cond_11
    const/16 v1, -0xb

    const-string v3, "security.mdpp.result"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_12
    if-ne v0, v5, :cond_14

    invoke-static {v5}, Lcom/sec/android/service/sm/job/SecurityJob;->setCCMode(I)I

    move-result v1

    if-eqz v1, :cond_13

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed. setCCMode. res = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    :cond_13
    const/16 v1, -0xc

    const-string v3, "security.mdpp.result"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_14
    invoke-static {v5}, Lcom/sec/android/service/sm/job/SecurityJob;->setCCMode(I)I

    move-result v1

    if-eqz v1, :cond_15

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed. setCCMode. res = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    :cond_15
    const/16 v1, -0xd

    const-string v3, "security.mdpp.result"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public getCCModeStatus()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "v"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ro.security.mdpp.ver"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Release "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.security.mdpp.release"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "security.mdpp"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initCCMode()I
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0x10

    const/16 v4, 0x8

    const/4 v1, 0x0

    invoke-static {}, Lcom/sec/android/service/sm/job/SecurityJob;->checkCCModeOnDevice()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "the current mode : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/service/sm/util/Log;->d(Ljava/lang/String;)I

    if-eq v0, v6, :cond_0

    if-ne v0, v7, :cond_4

    :cond_0
    invoke-static {}, Lcom/sec/android/service/sm/job/SecurityJob;->checkDevicePolicy()I

    move-result v1

    if-eqz v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Prerequisite policies have yet to set. res = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    invoke-static {v7}, Lcom/sec/android/service/sm/job/SecurityJob;->setCCMode(I)I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed. setCCMode. res = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-static {}, Lcom/sec/android/service/sm/job/SecurityJob;->performCCModePreProcess()I

    move-result v1

    if-eqz v1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed. CCMode Pre-Process. res = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    invoke-static {v4}, Lcom/sec/android/service/sm/job/SecurityJob;->setCCMode(I)I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed. setCCMode. res = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-static {v6}, Lcom/sec/android/service/sm/job/SecurityJob;->setCCMode(I)I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed. setCCMode. res = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    if-ne v0, v8, :cond_5

    invoke-static {v8}, Lcom/sec/android/service/sm/job/SecurityJob;->setCCMode(I)I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed. setCCMode. res = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    if-ne v0, v4, :cond_7

    invoke-static {v4}, Lcom/sec/android/service/sm/job/SecurityJob;->setCCMode(I)I

    move-result v1

    if-eqz v1, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed. setCCMode. res = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    :cond_6
    const/16 v1, -0xb

    goto/16 :goto_0

    :cond_7
    if-ne v0, v5, :cond_9

    invoke-static {v5}, Lcom/sec/android/service/sm/job/SecurityJob;->setCCMode(I)I

    move-result v1

    if-eqz v1, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed. setCCMode. res = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    :cond_8
    const/16 v1, -0xc

    goto/16 :goto_0

    :cond_9
    invoke-static {v5}, Lcom/sec/android/service/sm/job/SecurityJob;->setCCMode(I)I

    move-result v1

    if-eqz v1, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed. setCCMode. res = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    :cond_a
    const/16 v1, -0xd

    goto/16 :goto_0
.end method

.method public isCCMode()Z
    .locals 2

    const-string v1, "security.mdpp"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFIPSMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public verifyVPN()I
    .locals 1

    sget-object v0, Lcom/sec/android/service/sm/job/SecurityJob;->mSecurityNativeJob:Lcom/sec/android/service/sm/job/SecurityNativeJob;

    invoke-virtual {v0}, Lcom/sec/android/service/sm/job/SecurityNativeJob;->verifyVPN()I

    move-result v0

    return v0
.end method
