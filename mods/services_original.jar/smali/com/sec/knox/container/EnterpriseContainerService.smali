.class public Lcom/sec/knox/container/EnterpriseContainerService;
.super Lcom/sec/knox/container/IEnterpriseContainerService$Stub;
.source "EnterpriseContainerService.java"

# interfaces
.implements Lcom/sec/knox/container/EnterpriseContainerConstants;
.implements Lcom/sec/knox/container/manager/IStateManagerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/knox/container/EnterpriseContainerService$4;,
        Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;,
        Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;,
        Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;,
        Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;,
        Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;,
        Lcom/sec/knox/container/EnterpriseContainerService$PackageDeleteObserver;,
        Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;,
        Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;,
        Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;,
        Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;,
        Lcom/sec/knox/container/EnterpriseContainerService$WakeLockHandler;,
        Lcom/sec/knox/container/EnterpriseContainerService$TimeoutRunnableStartAfterStop;,
        Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;,
        Lcom/sec/knox/container/EnterpriseContainerService$DeathBinder;,
        Lcom/sec/knox/container/EnterpriseContainerService$SecuritySpec;
    }
.end annotation


# static fields
.field private static final ACTION_REDEX_SERVICE:Ljava/lang/String; = "com.samsung.redexmobile.ReDexService"

.field private static ADD_EMAILID:I = 0x0

.field private static final APKPATH:Ljava/lang/String; = "/system/containers"

.field private static final B2B_CONTAINER:Ljava/lang/String; = "B2B_CONTAINER"

.field private static final B2C_CONTAINER:Ljava/lang/String; = "B2C_CONTAINER"

.field private static final CACHE_NULL:I = 0x38d

.field private static final CANCEL_REQUEST:I = 0x5

.field private static final CHANGE_PWD_REQUEST:I = 0x3

.field private static final CONTAINER:Ljava/lang/String; = "CONTAINER"

.field private static final CONTAINER_AGENT:Ljava/lang/String; = "com.sec.knox.containeragent"

.field private static final CONTAINER_FRAMEWORK_APK_PACKAGES_KEY:Ljava/lang/String; = "framework.pkgName.key"

.field private static final CONTAINER_FRAMEWORK_APK_PATH:Ljava/lang/String; = "/system/containers/framework"

.field private static final CONTAINER_PREFIX:Ljava/lang/String; = "sec_container_"

.field private static final CREATE_REQUEST:I = 0x1

.field private static final CUSTOM_CONTAINER_CATEGORY:Ljava/lang/String; = "sec_container_1.android.intent.category.LAUNCHER"

.field private static final DAY_MILISECONDS:J = 0x5265c00L

.field private static final DEFAULT_CONTAINER_ID:I = 0x0

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final ENCRYPTION_STATE_CHANGE_PASSWORD:I = 0x3

.field private static final ENCRYPTION_STATE_MOUNT:I = 0x0

.field private static final ENCRYPTION_STATE_PRIMARY_UNMOUNT:I = 0x4

.field private static final ENCRYPTION_STATE_REMOUNT:I = 0x2

.field private static final ENCRYPTION_STATE_UNMOUNT:I = 0x1

.field private static final EXCL_MEDIA_TYPES:I = 0x0

.field private static final FAILURE:I = 0x0

.field private static final INTENT_CONTAINER_CREATE_FROM_MDM:Ljava/lang/String; = "com.sec.knox.containeragent.createcontainer"

.field private static final INTENT_CONTAINER_EVENTS_MANAGER_SERVICE:Ljava/lang/String; = "com.sec.knox.eventsmanager.ContainerEventsRelayManager"

.field private static final INTENT_REMOVE_B2C_CONTAINER_FROM_SERVICE:Ljava/lang/String; = "com.sec.knox.containeragent.remove.b2ccontainer"

.field private static final INVALID_CONTAINER_ID:I = -0x1

.field private static final INVALID_UID:I = -0x1

.field private static final IS_PRIMARY:Ljava/lang/String; = "primary"

.field private static final KNOXPublickey:Ljava/lang/String; = "OpenSSLRSAPublicKey{modulus=94cbce4ea26fe955e571de283c5834a6ddb8161348775f654f1d629784460ecc2a50d690d98dc59edc9b6e5aade8eb469f49d18fc647abee1a84c45e40fb74aa97f1d6678ef31142790465a89449405e2e499e47b34fd84aa8aed32123a280cb238a20864428cec46e175b9f2c9f313de0e7e37720a211226e736424638eab865174cdebcb6008ec0cf37fbda0c1e73dfef84996d53c6324cecf4f977c1443826a793ad8853d20cc5285220b885280b11c46aba587797c1510cf5f13656bcabb2db2e0f11d340c3f48ef7ecd76644c1c3e0dd9e8aa62c23df68891f60c96df1bb83074893cc043b58d8a2d83f1c425353f5d85abb586631eadb839b0bca9fa13,publicExponent=10001}"

.field private static final KNOX_LAUNCHER:Ljava/lang/String; = "sec_container_1.com.sec.android.app.knoxlauncher"

.field private static final MAX_LENGTH:I = 0x20

.field private static final MILISECONDS:J = 0x3e8L

.field private static final MOUNT_PATH:Ljava/lang/String; = "/data/data"

.field private static final MOUNT_PATH_SD:Ljava/lang/String; = "/mnt_1/sdcard_"

.field private static final MOUNT_UNMOUNT_ERROR_CODE:Ljava/lang/String; = "mount-unmount"

.field private static final NOTIFICATION_TAG:Ljava/lang/String; = "ENTERPRISE_CONTAINER_NOTIFICATION"

.field private static final OUT_PATH:Ljava/lang/String; = "/data/system/container/signedout"

.field private static final OnPremisePublickey:Ljava/lang/String; = "OpenSSLRSAPublicKey{modulus=c71e9ce440601350a3035ff34718c1e273869334ca6a4b574130dd82b2d60500342bcd3f52a42da3d1d63fe7ad6d688e59bbcba7de73ed2f78fc2c055e3449f221976e9eff415440ce3799cb1c8f892c8c13645a50026c80f8cfc4261eb6260d8b30c8fb6ee28c1065219d693bcef409e647949534056fac0fc5ea79e0f9b7cb,publicExponent=10001}"

.field private static final PACKAGE_INSTALL_NAME:Ljava/lang/String; = "package_install_name"

.field private static final PACKAGE_INSTALL_SOURCE:Ljava/lang/String; = "package_install_source"

.field private static final PACKAGE_INSTALL_STATE:Ljava/lang/String; = "package_install_state"

.field private static final PACKAGE_INSTALL_UID:Ljava/lang/String; = "package_install_uid"

.field private static final PACKAGE_ORIGINAL_SIGNATURE:Ljava/lang/String; = "package_original_signature"

.field private static final PACKAGE_UNINSTALL_NAME:Ljava/lang/String; = "package_uninstall_name"

.field private static final PACKAGE_UNINSTALL_STATE:Ljava/lang/String; = "package_uninstall_state"

.field private static final PACKAGE_UNINSTALL_UID:Ljava/lang/String; = "package_uninstall_uid"

.field private static final PASSWORD:Ljava/lang/String; = "password"

.field private static final PASSWORDID:Ljava/lang/String; = "password"

.field private static REMOVE_EMAILID:I = 0x0

.field private static final REMOVE_REQUEST:I = 0x2

.field private static final SRC_PATH:Ljava/lang/String; = "/data/.container_"

.field private static final SRC_PATH_SD:Ljava/lang/String; = "/storage/container/.sdcontainer_"

.field private static final STAGE_PATH:Ljava/lang/String; = "/data/system/container/redexcache"

.field private static final SUCCESS:I = 0x1

.field private static final SYSTEM_CERT_REFERENCE_PACKAGE:Ljava/lang/String; = "com.android.phone"

.field private static final TAG:Ljava/lang/String; = "EnterpriseContainerService"

.field private static final TIMA_STORE_INDEX:I = 0x0

.field private static final UNINSTALL_WHITELIST:[Ljava/lang/String; = null

.field private static final UNMOUNT_BOTH:I = 0x2

.field private static final UNMOUNT_CONTAINER_STOP:I = 0x1

.field private static final UNMOUNT_CONTAINER_UNINSTALL:I = 0x0

.field private static final UNMOUNT_PRIMARY:I = 0x0

.field private static final UNMOUNT_SECONDARY:I = 0x1

.field private static final VERIFY_PASSWORD_ACTION:Ljava/lang/String; = "com.sec.knox.container.VerifyContainerPassword"

.field private static final VERIFY_PWD_REQUEST:I = 0x4

.field private static final WHITELISTED_APPS:[Ljava/lang/String; = null

.field private static final WIPE_PRIVATE_BACKUP_DATA:I = 0x3

.field private static final WIPE_SDCARD:I = 0x1

.field private static final WIPE_SDCARD_DATA:I = 0x2

.field private static mB2BCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

.field private static mDownloadWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private gLastReqContainerId:I

.field private gLastReqUid:I

.field private handlerThread:Landroid/os/HandlerThread;

.field private isServiceInitialized:Z

.field private isTimaServiceExist:Z

.field private knoxLauncherName:Ljava/lang/String;

.field private mActiveAdminList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mAppService:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field private mBroadCastReciever:Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;

.field private mCallbackMgr:Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList",
            "<",
            "Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private mChangeContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

.field private mContainerId:I

.field private mContext:Landroid/content/Context;

.field private mCreateContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

.field private mCreateContainerRequestId:I

.field private mDPMStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mDatabase:Lcom/sec/knox/container/contentprovider/ContainerDatabase;

.field private mDeathCallbackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/IBinder$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mGenericVpnService:Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy;

.field private mIBinderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mMountCallBackData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/knox/container/EnterpriseContainerObjectParam;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPasswordChangeResult:Z

.field private mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRIdGenerator:Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;

.field private mRedexService:Lcom/samsung/redexmobile/IReDexService;

.field private mRemoveAdminMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRemoveContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

.field private mStateManager:Lcom/sec/knox/container/manager/StateManager;

.field private mSyncObject:Ljava/lang/Object;

.field private mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

.field private mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

.field private mVpnService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

.field private mWakeLockHandler:Landroid/os/Handler;

.field redexServiceConnect:Landroid/content/ServiceConnection;

.field private refCountWakeLock:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    sput v3, Lcom/sec/knox/container/EnterpriseContainerService;->ADD_EMAILID:I

    sput v4, Lcom/sec/knox/container/EnterpriseContainerService;->REMOVE_EMAILID:I

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.sec.knox.containeragent"

    aput-object v1, v0, v5

    const-string v1, "sec_container_1.com.sec.android.app.knoxlauncher"

    aput-object v1, v0, v3

    const-string v1, "sec_container_1.com.sec.android.app.knoxapps"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "com.sec.knox.seandroid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/knox/container/EnterpriseContainerService;->WHITELISTED_APPS:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "sec_container_1.com.sec.android.app.knoxlauncher"

    aput-object v1, v0, v5

    const-string v1, "sec_container_1.com.lookout"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/knox/container/EnterpriseContainerService;->UNINSTALL_WHITELIST:[Ljava/lang/String;

    sput-object v6, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    sput-object v6, Lcom/sec/knox/container/EnterpriseContainerService;->mDownloadWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;-><init>()V

    iput v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerRequestId:I

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mDatabase:Lcom/sec/knox/container/contentprovider/ContainerDatabase;

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mBroadCastReciever:Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCallbackMgr:Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mChangeContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mMountCallBackData:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mActiveAdminList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveAdminMap:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mNotificationManager:Landroid/app/NotificationManager;

    iput v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mSyncObject:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordChangeResult:Z

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRedexService:Lcom/samsung/redexmobile/IReDexService;

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mVpnService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mGenericVpnService:Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy;

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRIdGenerator:Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPowerManager:Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mAppService:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string v0, "com.sec.android.app.knoxlauncher"

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->knoxLauncherName:Ljava/lang/String;

    iput v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->refCountWakeLock:I

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLockHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mDeathCallbackMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mIBinderMap:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->handlerThread:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    iput-boolean v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->isServiceInitialized:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->isTimaServiceExist:Z

    iput v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->gLastReqUid:I

    iput v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->gLastReqContainerId:I

    new-instance v0, Lcom/sec/knox/container/EnterpriseContainerService$1;

    invoke-direct {v0, p0}, Lcom/sec/knox/container/EnterpriseContainerService$1;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;)V

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->redexServiceConnect:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/sec/knox/container/EnterpriseContainerService$3;

    invoke-direct {v0, p0}, Lcom/sec/knox/container/EnterpriseContainerService$3;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;)V

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mDPMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "EnterpriseContainerService"

    const-string v1, "EnterpriseContainerService Constructor"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    return-void
.end method

.method private OnAdminRemoval(Landroid/content/ComponentName;)V
    .locals 10

    const-string v7, "EnterpriseContainerService"

    const-string v8, "EnterpriseContainerService: OnAdminRemoval()"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveAdminMap:Ljava/util/HashMap;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveAdminMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_4

    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveAdminMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveAdminMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveAdminMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveAdminMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveAdminMap:Ljava/util/HashMap;

    :cond_1
    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->get(I)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->removeContainerNow(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveAdminMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v7, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->removeActiveAdmin(Landroid/content/ComponentName;)Z

    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/knox/container/manager/StateManager;->getContainerId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_5

    invoke-direct {p0, v5}, Lcom/sec/knox/container/EnterpriseContainerService;->loadPasswordInfoToCache(I)V

    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7, v5}, Lcom/sec/knox/container/EnterpriseContainerService;->scheduleTimer(Landroid/content/Context;I)V

    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v7, v5}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setExpirationAlarmCheck(I)V

    :cond_5
    return-void
.end method

.method static synthetic access$000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/samsung/redexmobile/IReDexService;
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRedexService:Lcom/samsung/redexmobile/IReDexService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/samsung/redexmobile/IReDexService;)Lcom/samsung/redexmobile/IReDexService;
    .locals 0

    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRedexService:Lcom/samsung/redexmobile/IReDexService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/manager/StateManager;)Lcom/sec/knox/container/manager/StateManager;
    .locals 0

    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/content/Context;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerService;->scheduleTimer(Landroid/content/Context;IZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/knox/container/EnterpriseContainerService;)I
    .locals 1

    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/knox/container/EnterpriseContainerService;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getWakeLockCounter()I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRIdGenerator:Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;)Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;
    .locals 0

    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRIdGenerator:Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/sec/knox/container/EnterpriseContainerService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mIBinderMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/knox/container/EnterpriseContainerService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mDeathCallbackMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/knox/container/EnterpriseContainerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->incrementWakeLock()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/knox/container/EnterpriseContainerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->killTimer(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/knox/container/EnterpriseContainerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->decrementWakeLock()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLockHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->scheduleTimer(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$202(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLockHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sec/knox/container/EnterpriseContainerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->cleanUpBinder()V

    return-void
.end method

.method static synthetic access$2202(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/contentprovider/ContainerDatabase;)Lcom/sec/knox/container/contentprovider/ContainerDatabase;
    .locals 0

    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mDatabase:Lcom/sec/knox/container/contentprovider/ContainerDatabase;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;)Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;
    .locals 0

    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCallbackMgr:Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    .locals 0

    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    .locals 0

    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    .locals 0

    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mChangeContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    .locals 0

    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerPasswordService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    .locals 0

    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/sec/knox/container/EnterpriseContainerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->initializeDPMActiveAdminList()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/knox/container/EnterpriseContainerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->checkIfAdminHasBeenRemoved()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/sec/knox/container/EnterpriseContainerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->registerReciever()V

    return-void
.end method

.method static synthetic access$3100(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/dirEncryption/DirEncryptionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/dirEncryption/DirEncryptionManager;)Landroid/dirEncryption/DirEncryptionManager;
    .locals 0

    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/os/PowerManager;)Landroid/os/PowerManager;
    .locals 0

    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPowerManager:Landroid/os/PowerManager;

    return-object p1
.end method

.method static synthetic access$3300()Landroid/os/PowerManager$WakeLock;
    .locals 1

    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3302(Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    sput-object p0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic access$3402(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;)Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;
    .locals 0

    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mVpnService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;
    .locals 1

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getVpnService()Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3602(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy;
    .locals 0

    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mGenericVpnService:Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy;
    .locals 1

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getGenericVpnService()Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/sec/knox/container/EnterpriseContainerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->initialiseContainer()V

    return-void
.end method

.method static synthetic access$3902(Lcom/sec/knox/container/EnterpriseContainerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->isServiceInitialized:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/knox/container/EnterpriseContainerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->bindRedexService()V

    return-void
.end method

.method static synthetic access$4000(Lcom/sec/knox/container/EnterpriseContainerService;ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->removeContainerHelper(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/sec/knox/container/EnterpriseContainerService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->changePasswordIfPasswordHasExpired(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/sec/knox/container/EnterpriseContainerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->sendContainerSetupSuccessMessage(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/sec/knox/container/EnterpriseContainerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->loadPasswordInfoToCache(I)V

    return-void
.end method

.method static synthetic access$4400(Lcom/sec/knox/container/EnterpriseContainerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->startContainerEventsRelayManager()V

    return-void
.end method

.method static synthetic access$4500(Lcom/sec/knox/container/EnterpriseContainerService;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerService;->unmount(III)V

    return-void
.end method

.method static synthetic access$4600(Lcom/sec/knox/container/EnterpriseContainerService;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerRemountFailureMessage(III)V

    return-void
.end method

.method static synthetic access$4700(Lcom/sec/knox/container/EnterpriseContainerService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(II)V

    return-void
.end method

.method static synthetic access$4800(Lcom/sec/knox/container/EnterpriseContainerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/sec/knox/container/EnterpriseContainerService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mMountCallBackData:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/knox/container/EnterpriseContainerService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->checkExistence(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/sec/knox/container/EnterpriseContainerService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mActiveAdminList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/android/server/enterprise/application/ApplicationPolicy;
    .locals 1

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5200(Lcom/sec/knox/container/EnterpriseContainerService;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->getOriginalPackageNameInternal(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5300(Lcom/sec/knox/container/EnterpriseContainerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->sendContainerCreationIntent(I)V

    return-void
.end method

.method static synthetic access$5400(Lcom/sec/knox/container/EnterpriseContainerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->killUnmountTimer(I)V

    return-void
.end method

.method static synthetic access$5500(Lcom/sec/knox/container/EnterpriseContainerService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->isContainerPartition(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerObjectParam;I)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->addOrUpdateContainerToDB(Lcom/sec/knox/container/EnterpriseContainerObjectParam;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5700(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerObjectParam;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerService;->addContainerToCache(Lcom/sec/knox/container/EnterpriseContainerObjectParam;II)V

    return-void
.end method

.method static synthetic access$5800(Lcom/sec/knox/container/EnterpriseContainerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->removeUntrustedContainerApps(I)V

    return-void
.end method

.method static synthetic access$5900(Lcom/sec/knox/container/EnterpriseContainerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->acquireLock()V

    return-void
.end method

.method static synthetic access$600()I
    .locals 1

    sget v0, Lcom/sec/knox/container/EnterpriseContainerService;->ADD_EMAILID:I

    return v0
.end method

.method static synthetic access$6000(Lcom/sec/knox/container/EnterpriseContainerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->releaseLock()V

    return-void
.end method

.method static synthetic access$6100(Lcom/sec/knox/container/EnterpriseContainerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6200(Lcom/sec/knox/container/EnterpriseContainerService;Ljava/lang/String;I)Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->installPackageInternal(Ljava/lang/String;I)Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6300(Lcom/sec/knox/container/EnterpriseContainerService;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->checkInstalledPackageSignature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/sec/knox/container/EnterpriseContainerService;ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/knox/container/EnterpriseContainerService;->updateContainerEmailId(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    return-object v0
.end method

.method static synthetic access$900()I
    .locals 1

    sget v0, Lcom/sec/knox/container/EnterpriseContainerService;->REMOVE_EMAILID:I

    return v0
.end method

.method private declared-synchronized acquireLock()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    const-string v0, "EnterpriseContainerService"

    const-string v1, "---------------------->acquiring wake lock<---------------------"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->setDownloadWakeState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private actOnWrongPasswordAttempt(I)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v3, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->reportFailedPasswordAttempt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1, v5}, Lcom/sec/knox/container/EnterpriseContainerService;->getMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;)I

    move-result v2

    invoke-virtual {p0, p1, v5}, Lcom/sec/knox/container/EnterpriseContainerService;->getMaximumFailedPasswordsForDisable(ILandroid/content/ComponentName;)I

    move-result v1

    if-lez v2, :cond_3

    if-lez v1, :cond_3

    if-ge v2, v1, :cond_1

    invoke-direct {p0, p1, v5}, Lcom/sec/knox/container/EnterpriseContainerService;->removeContainerHelper(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-le v2, v1, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->lockContainerInternal(I)Z

    goto :goto_0

    :cond_2
    if-ne v2, v1, :cond_0

    invoke-direct {p0, p1, v5}, Lcom/sec/knox/container/EnterpriseContainerService;->removeContainerHelper(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    goto :goto_0

    :cond_3
    if-lez v2, :cond_6

    if-gtz v1, :cond_6

    const-string v0, "B2B"

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getContainerTypeInternal(I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    const-string v0, "B2B"

    :cond_4
    :goto_1
    const-string v3, "[ECS] actOnWrongPasswordAttempt() maximumFailedPasswordsForWipe > 0 && maximumFailedPasswordsForDisable <= 0"

    invoke-virtual {p0, v3, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->WriteContainerHistory(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v5}, Lcom/sec/knox/container/EnterpriseContainerService;->removeContainerHelper(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getContainerTypeInternal(I)I

    move-result v3

    if-nez v3, :cond_4

    const-string v0, "B2C"

    goto :goto_1

    :cond_6
    if-lez v1, :cond_7

    if-gtz v2, :cond_7

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->lockContainerInternal(I)Z

    goto :goto_0

    :cond_7
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->lockContainerInternal(I)Z

    goto :goto_0
.end method

.method private activatePasswordAndContainer(ILjava/lang/String;)Z
    .locals 5

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v3, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    sget-object v4, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_VERIFY_PWD_SUCCESS:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v2, p1, v3, v4}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    if-eq v2, v3, :cond_0

    const-string v2, "EnterpriseContainerService"

    const-string v3, "activatePasswordAndContainer Restarting timer"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->scheduleTimer(Landroid/content/Context;I)V

    const-string v2, "EnterpriseContainerService"

    const-string v3, "activatePasswordAndContainer firing intent: com.samsung.redex.proxy.activity.close_dialog"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.redex.proxy.activity.close_dialog"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "containerid"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private addContainerToCache(Lcom/sec/knox/container/EnterpriseContainerObjectParam;II)V
    .locals 3

    new-instance v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    invoke-direct {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;-><init>()V

    invoke-virtual {v0, p2}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setContainerId(I)V

    invoke-virtual {v0, p3}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setContainerStatus(I)V

    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setEmail(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getSecurityText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setSecurityText(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getAdmin()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setAdmin(I)V

    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getLockType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setLockType(I)V

    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->checkIfB2CContainer(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setContainerType(I)V

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setFirmwareVersion(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v1, v0}, Lcom/sec/knox/container/manager/StateManager;->updateCacheAddContainerObject(Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;)V

    return-void

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private addOrUpdateContainerToDB(Lcom/sec/knox/container/EnterpriseContainerObjectParam;I)Z
    .locals 7

    const/4 v4, 0x0

    const-string v3, "EnterpriseContainerService"

    const-string v5, "addOrUpdateContainerToDB()"

    invoke-static {v3, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "containerid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-nez p1, :cond_1

    const-string v3, "EnterpriseContainerService"

    const-string v4, "addOrUpdateContainerToDB - EnterpriseContainerObjectParam is null"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p2}, Lcom/sec/knox/container/manager/StateManager;->getContainerParamFromDB(Landroid/content/Context;I)Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v3, "activestatus"

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_DOESNOT_EXISTS:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v4}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v5}, Lcom/sec/knox/container/manager/StateManager;->insert(Landroid/content/Context;Landroid/content/ContentValues;Landroid/net/Uri;)Z

    move-result v3

    :goto_1
    return v3

    :cond_1
    const-string v3, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addOrUpdateContainerToDB-Email + owner + securitytext:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getEmail()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getSecurityText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "email"

    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "name"

    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "securitytext"

    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getSecurityText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "admin_uid"

    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getAdmin()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "locktype"

    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getLockType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "containertype"

    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->checkIfB2CContainer(Ljava/lang/String;)Z

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_2

    move v3, v4

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "deviceFirmwareVersion"

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getSecurityIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getSecurityIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-string v3, "securityicon"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_0

    :cond_2
    const/4 v3, 0x2

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5, v2, p2}, Lcom/sec/knox/container/manager/StateManager;->updateValuesForContainer(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v3

    goto/16 :goto_1
.end method

.method private bindRedexService()V
    .locals 4

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.redexmobile.ReDexService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->redexServiceConnect:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private changeContainerPassword(ILjava/lang/String;Ljava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V
    .locals 25

    const-string v3, "EnterpriseContainerService"

    const-string v4, "changeContainerPassword()"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v3, "containerid"

    move/from16 v0, p1

    invoke-virtual {v7, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mRIdGenerator:Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;

    invoke-virtual {v3}, Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;->getNextContainerRequestId()I

    move-result v5

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mChangeContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    invoke-virtual {v3}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->size()I

    move-result v3

    if-gtz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    invoke-virtual {v3}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->size()I

    move-result v3

    if-lez v3, :cond_1

    :cond_0
    const-string v3, "EnterpriseContainerService"

    const-string v4, "A request for change password / verify password is in progress calling failure callback."

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x3f5

    move-object/from16 v0, p4

    invoke-interface {v0, v3, v7}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mChangeContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p4

    invoke-virtual {v3, v4, v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->add(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Change Password requestId: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->verifyPassword(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v4

    sget-object v8, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_CHANGE_PWD:Lcom/sec/knox/container/constants/CSEvent;

    move/from16 v0, p1

    invoke-virtual {v3, v0, v4, v8}, Lcom/sec/knox/container/manager/StateManager;->checkStateTransition(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    if-eq v3, v4, :cond_6

    invoke-direct/range {p0 .. p3}, Lcom/sec/knox/container/EnterpriseContainerService;->validatePasswordInternal(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/16 v3, 0x3b

    if-eq v6, v3, :cond_2

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Validate Password  error code: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x3

    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v19

    const/4 v14, 0x3

    const/16 v16, 0x3f5

    const/16 v18, 0x1

    move-object/from16 v13, p0

    move v15, v5

    move-object/from16 v17, v7

    invoke-virtual/range {v13 .. v18}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ChangePassword Failure happend "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v19 .. v19}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    :try_start_1
    new-instance v21, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v20, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerService;->getEcryptfsKey(Ljava/lang/String;Ljava/lang/StringBuilder;)I

    move-result v11

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/knox/container/EnterpriseContainerService;->isTimaServiceExist:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    if-eq v11, v3, :cond_3

    const/4 v9, 0x3

    const/4 v13, 0x1

    move-object/from16 v8, p0

    move v10, v5

    move-object v12, v7

    invoke-virtual/range {v8 .. v13}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerService;->getEcryptfsKey(Ljava/lang/String;Ljava/lang/StringBuilder;)I

    move-result v11

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/knox/container/EnterpriseContainerService;->isTimaServiceExist:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    if-eq v11, v3, :cond_4

    const/4 v9, 0x3

    const/4 v13, 0x1

    move-object/from16 v8, p0

    move v10, v5

    move-object v12, v7

    invoke-virtual/range {v8 .. v13}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    goto/16 :goto_0

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/mnt_1/sdcard_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v23

    if-eqz v21, :cond_5

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_5

    if-eqz v20, :cond_5

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_5

    new-instance v12, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;

    const/4 v14, 0x3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v13, p0

    move/from16 v15, p1

    move-object/from16 v16, p3

    invoke-direct/range {v12 .. v18}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;IILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v12, v5}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->setRequestId(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v22

    move-object/from16 v17, v12

    move/from16 v18, p1

    invoke-virtual/range {v13 .. v18}, Landroid/dirEncryption/DirEncryptionManager;->changeEcryptfsPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/dirEncryption/IDirEncryptionManagerCallBack;I)I

    :goto_1
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v3, "EnterpriseContainerService"

    const-string v4, "Moving ahead and Waiting for change password to be done"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    new-instance v12, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;

    const/4 v14, 0x3

    const/16 v17, 0x1

    move-object/from16 v13, p0

    move/from16 v15, p1

    move-object/from16 v16, p3

    invoke-direct/range {v12 .. v17}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;IILjava/lang/String;Z)V

    invoke-virtual {v12, v5}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->setRequestId(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, v22

    move-object/from16 v17, v12

    move/from16 v18, p1

    invoke-virtual/range {v13 .. v18}, Landroid/dirEncryption/DirEncryptionManager;->changeEcryptfsPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/dirEncryption/IDirEncryptionManagerCallBack;I)I

    goto :goto_1

    :cond_6
    const-string v3, "EnterpriseContainerService"

    const-string v4, "Container doesnt extsts. Change password failed."

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x3

    const/16 v16, 0x3f5

    const/16 v18, 0x1

    move-object/from16 v13, p0

    move v15, v5

    move-object/from16 v17, v7

    invoke-virtual/range {v13 .. v18}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    goto/16 :goto_0

    :cond_7
    const-string v3, "EnterpriseContainerService"

    const-string v4, "Old password wrong - calling failure callback."

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x3

    const/16 v16, 0x3f5

    const/16 v18, 0x1

    move-object/from16 v13, p0

    move v15, v5

    move-object/from16 v17, v7

    invoke-virtual/range {v13 .. v18}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private changePasswordIfPasswordHasExpired(I)Z
    .locals 2

    const-string v0, "EnterpriseContainerService"

    const-string v1, "changePasswordIfPasswordHasExpired() wrapper"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->changePasswordIfPasswordHasExpired(IZ)Z

    move-result v0

    return v0
.end method

.method private changePasswordIfPasswordHasExpired(IZ)Z
    .locals 5

    const/4 v1, 0x1

    const-string v2, "EnterpriseContainerService"

    const-string v3, "changePasswordIfPasswordHasExpired() internal"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eq p2, v1, :cond_0

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v2, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->passwordHasExpired(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v3, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    sget-object v4, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_RESET_PWD_TIMEOUT:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v2, p1, v3, v4}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    if-eq v2, v3, :cond_1

    const-string v2, "EnterpriseContainerService"

    const-string v3, "changePasswordIfPasswordHasExpired(): password has expired, rising event CSEVENT_RESET_PWD_TIMEOUT"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_1
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changePasswordIfPasswordHasExpired(): state couldn\'t be changed. Current state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v3, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkExistence(I)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getContainerStatus(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkExistence: Container id matches. Returning true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkExistence: Container id doesnt match. Returning false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkIfAdminHasBeenRemoved()Z
    .locals 7

    const-string v5, "EnterpriseContainerService"

    const-string v6, "checkIfAdminHasBeenRemoved()"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    const-string v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mActiveAdminList:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mActiveAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->OnAdminRemoval(Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mActiveAdminList:Ljava/util/ArrayList;

    :goto_1
    return v1

    :cond_2
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mActiveAdminList:Ljava/util/ArrayList;

    goto :goto_1
.end method

.method private checkIfB2CContainer(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "B2C_CONTAINER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkIfContainerizedApp(II)Z
    .locals 11

    const/4 v8, -0x1

    if-eq p2, v8, :cond_1

    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v8, p2}, Lcom/sec/knox/container/manager/StateManager;->getContainerPackagesInfoFromCache(I)Ljava/util/HashMap;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_1

    move-object v0, v6

    array-length v4, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v0, v1

    if-eqz v5, :cond_0

    :try_start_0
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v8, "com.sec.knox.containeragent"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService;->knoxLauncherName:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x1

    :goto_1
    return v8

    :catch_0
    move-exception v2

    const-string v8, "EnterpriseContainerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "An application which has pid 1000 was removed from PackageManager - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private checkIfDPMAdmin()Z
    .locals 2

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getActiveAdminComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkIfMDMAdmin()Z
    .locals 3

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getActiveAdminComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkIfUninstallWhitelistPackage(I)Z
    .locals 12

    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    move-object v0, v8

    array-length v4, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v7, v0, v3

    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerService;->UNINSTALL_WHITELIST:[Ljava/lang/String;

    array-length v5, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v6, v1, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "EnterpriseContainerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "packageName matches uninstall whitelisted package uid:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    :goto_2
    return v9

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    goto :goto_2
.end method

.method private checkIfWhitelistedApp(I)Z
    .locals 12

    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    move-object v0, v8

    array-length v4, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v7, v0, v3

    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerService;->WHITELISTED_APPS:[Ljava/lang/String;

    array-length v5, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v6, v1, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "EnterpriseContainerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "packageName matches whitelisted app uid:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    :goto_2
    return v9

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    goto :goto_2
.end method

.method private checkInstalledPackageSignature(Ljava/lang/String;)Z
    .locals 17

    if-nez p1, :cond_0

    const-string v14, "EnterpriseContainerService"

    const-string v15, "checkInstalledPackageSignature packageName is null..."

    invoke-static {v14, v15}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x0

    :goto_0
    return v14

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v14, "EnterpriseContainerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "checkInstalledPackageSignature... ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "sec_container_"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    const/4 v9, 0x0

    const/16 v14, 0x40

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    if-nez v9, :cond_1

    const-string v14, "EnterpriseContainerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "packageInfo == null Absolute package = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x0

    goto :goto_0

    :catch_0
    move-exception v8

    const/4 v14, 0x0

    goto :goto_0

    :cond_1
    if-eqz v9, :cond_5

    iget-object v4, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v14, v4

    new-array v12, v14, [Ljava/lang/String;

    array-length v14, v4

    new-array v5, v14, [Ljava/security/PublicKey;

    array-length v14, v4

    new-array v13, v14, [Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_1
    const-string v14, "com.sec.knox.containeragent"

    const/16 v15, 0x40

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    const/4 v2, 0x0

    const/4 v11, 0x0

    :try_start_2
    iget-object v14, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v14}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v11

    const-string v14, "EnterpriseContainerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "OwnSignatures Length = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    array-length v0, v4

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    :goto_1
    array-length v14, v4

    if-ge v7, v14, :cond_5

    aget-object v14, v4, v7

    invoke-virtual {v14}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v7

    :try_start_3
    aget-object v14, v4, v7

    invoke-virtual {v14}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v14

    aput-object v14, v5, v7
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_3

    aget-object v14, v5, v7

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v7

    aget-object v14, v13, v7

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const-string v14, "EnterpriseContainerService"

    const-string/jumbo v15, "signature compared with [CA]CASignatures... passed!! "

    invoke-static {v14, v15}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception v3

    const-string v14, "EnterpriseContainerService"

    const-string v15, "CA is not exist!!!! "

    invoke-static {v14, v15}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v6

    invoke-virtual {v6}, Ljava/security/cert/CertificateException;->printStackTrace()V

    const/4 v14, 0x0

    goto/16 :goto_0

    :catch_3
    move-exception v6

    invoke-virtual {v6}, Ljava/security/cert/CertificateException;->printStackTrace()V

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_2
    const-string v14, "OpenSSLRSAPublicKey{modulus=94cbce4ea26fe955e571de283c5834a6ddb8161348775f654f1d629784460ecc2a50d690d98dc59edc9b6e5aade8eb469f49d18fc647abee1a84c45e40fb74aa97f1d6678ef31142790465a89449405e2e499e47b34fd84aa8aed32123a280cb238a20864428cec46e175b9f2c9f313de0e7e37720a211226e736424638eab865174cdebcb6008ec0cf37fbda0c1e73dfef84996d53c6324cecf4f977c1443826a793ad8853d20cc5285220b885280b11c46aba587797c1510cf5f13656bcabb2db2e0f11d340c3f48ef7ecd76644c1c3e0dd9e8aa62c23df68891f60c96df1bb83074893cc043b58d8a2d83f1c425353f5d85abb586631eadb839b0bca9fa13,publicExponent=10001}"

    aget-object v15, v13, v7

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const-string v14, "EnterpriseContainerService"

    const-string/jumbo v15, "signature compared with [3rd]KNOXPublickey... passed!! "

    invoke-static {v14, v15}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_3
    const-string v14, "OpenSSLRSAPublicKey{modulus=c71e9ce440601350a3035ff34718c1e273869334ca6a4b574130dd82b2d60500342bcd3f52a42da3d1d63fe7ad6d688e59bbcba7de73ed2f78fc2c055e3449f221976e9eff415440ce3799cb1c8f892c8c13645a50026c80f8cfc4261eb6260d8b30c8fb6ee28c1065219d693bcef409e647949534056fac0fc5ea79e0f9b7cb,publicExponent=10001}"

    aget-object v15, v13, v7

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    const-string v14, "EnterpriseContainerService"

    const-string/jumbo v15, "signature compared with [gov]OnPremisePublickey... passed!! "

    invoke-static {v14, v15}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method private checkMount(Z)Z
    .locals 11

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v6, ""

    const/4 v5, -0x1

    new-instance v2, Ljava/io/File;

    const-string v9, "/proc/mounts"

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-ne v9, v7, :cond_0

    const/16 v9, 0x200

    new-array v0, v9, [B

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_5

    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v0, v10, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v6, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v6

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    :try_start_2
    const-string v9, "EnterpriseContainerService"

    const-string v10, "checkMount::File not found"

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_0
    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    if-eqz p1, :cond_3

    const-string v9, "/data/data1 ecryptfs"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_1
    :goto_3
    return v7

    :catch_1
    move-exception v1

    :goto_4
    :try_start_4
    const-string v9, "EnterpriseContainerService"

    const-string v10, "checkMount::"

    invoke-static {v9, v10, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_0

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    const-string v9, "EnterpriseContainerService"

    const-string v10, "checkMount::"

    :goto_5
    invoke-static {v9, v10, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    :catchall_0
    move-exception v7

    :goto_6
    if-eqz v3, :cond_2

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_2
    :goto_7
    throw v7

    :cond_3
    const-string v9, "/mnt_1/sdcard_1 ecryptfs"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    :cond_4
    move v7, v8

    goto :goto_3

    :catch_3
    move-exception v1

    const-string v8, "EnterpriseContainerService"

    const-string v9, "checkMount::"

    invoke-static {v8, v9, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_7

    :catch_4
    move-exception v1

    const-string v9, "EnterpriseContainerService"

    const-string v10, "checkMount::"

    goto :goto_5

    :cond_5
    if-eqz v4, :cond_0

    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_2

    :catch_5
    move-exception v1

    const-string v9, "EnterpriseContainerService"

    const-string v10, "checkMount::"

    goto :goto_5

    :catchall_1
    move-exception v7

    move-object v3, v4

    goto :goto_6

    :catch_6
    move-exception v1

    move-object v3, v4

    goto :goto_4

    :catch_7
    move-exception v1

    move-object v3, v4

    goto :goto_1
.end method

.method private cleanUpBinder()V
    .locals 10

    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mIBinderMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mDeathCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder$DeathRecipient;

    if-eqz v1, :cond_0

    const/4 v7, 0x0

    :try_start_0
    invoke-interface {v0, v1, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mDeathCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v7, "EnterpriseContainerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "binder.unlinkToDeath Failed. Binder disconnect recipient is not found. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v7, "EnterpriseContainerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "binder.unlinkToDeath Failed. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private cleanupContainer(I)V
    .locals 3

    const-string v0, "EnterpriseContainerService"

    const-string v1, "cleanupContainer()"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "EnterpriseContainerService"

    const-string v1, "Deleting the .container_1 forcibly "

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ctl.start"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "containersetup:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "EnterpriseContainerService"

    const-string v1, "After Deleting the .container_1 forcibly "

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->unmount(III)V

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/manager/StateManager;->removeContainer(I)Z

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/sec/knox/container/manager/StateManager;->removeContainer(Landroid/content/Context;I)Z

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->removeContainer(I)Z

    return-void
.end method

.method private clearVerifyCallback(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    const/16 v1, 0x3f7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->clear(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private createContainerDataDir()V
    .locals 5

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/system/container/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "EnterpriseContainerService"

    const-string v3, "Creating Container data directory"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create container data directory exception. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized decrementWakeLock()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refCountWakeLock before decrement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->refCountWakeLock:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->refCountWakeLock:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->refCountWakeLock:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->refCountWakeLock:I

    :cond_0
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refCountWakeLock after decrement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->refCountWakeLock:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private deleteBackupEDK()V
    .locals 3

    new-instance v0, Ljava/io/File;

    const-string v2, "/data/system/edk_p_container_1"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/edk_p_container_1.backup"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private doBootCompleteTaks()V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->deleteBackupEDK()V

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-static {v1, v2, v4, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    invoke-virtual {v1, v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private enforceEnterpriseContainerPermission(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    move-result v0

    return v0
.end method

.method private enforceEnterpriseContainerPermission(II)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-boolean v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->isServiceInitialized:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service not initialized yet: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    and-int/lit8 v1, p1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    :cond_1
    return v0

    :cond_2
    and-int/lit8 v1, p1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    :cond_3
    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    invoke-direct {p0, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->checkIfWhitelistedApp(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_4
    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    invoke-direct {p0, v0, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->checkIfContainerizedApp(II)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_5
    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    const/4 v1, -0x1

    if-eq p2, v1, :cond_6

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->checkIfDPMAdmin()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, v0, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->checkIfContainerizedApp(II)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_6
    and-int/lit8 v1, p1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_7

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->checkIfMDMAdmin()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_7
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allowed to access Container service API :uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private enforcePackageManagerPermissionForContainerizedApps(IILjava/lang/String;)V
    .locals 3

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->checkIfContainerizedApp(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowed to access Container service API :uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Permission:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private generateAndStoreTimaKey()I
    .locals 10

    const/16 v9, 0x9

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/16 v7, 0x20

    new-array v2, v7, [B

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v4

    if-eqz v4, :cond_4

    :try_start_0
    invoke-interface {v4}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v0

    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TIMA :: keystoreInit results is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v0, v9, :cond_2

    const-string v6, "EnterpriseContainerService"

    const-string v7, "KYS TIMA 1.0  TIMA_ERROR_KEYSTORE_NOT_SUPPORTED"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v0, :cond_1

    if-eq v0, v5, :cond_0

    const/4 v6, 0x7

    if-ne v0, v6, :cond_5

    :cond_0
    const-string v5, "EnterpriseContainerService"

    const-string v6, "Install: Device unauthorized to access Container."

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x48

    :cond_1
    :goto_1
    return v5

    :cond_2
    if-nez v0, :cond_3

    const/4 v6, 0x0

    :try_start_1
    invoke-interface {v4, v6, v2}, Landroid/service/tima/ITimaService;->keystoreInstallKey(I[B)I

    move-result v0

    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TIMA :: keystoreInstallKey results is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-interface {v4}, Landroid/service/tima/ITimaService;->keystoreShutdown()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to store TIMA key"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x47

    goto :goto_0

    :cond_4
    iput-boolean v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->isTimaServiceExist:Z

    const-string v5, "EnterpriseContainerService"

    const-string v7, "generateAndStoreTimaKey : no TIMA"

    invoke-static {v5, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    goto :goto_1

    :cond_5
    if-ne v0, v9, :cond_6

    const-string v6, "EnterpriseContainerService"

    const-string v7, "TIMA 2.0 is not supported"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v5, "EnterpriseContainerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not able to store TIMA key, API failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x47

    goto :goto_1
.end method

.method private getActivitynameForPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v7, 0x0

    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    const/4 v9, 0x0

    invoke-direct {v3, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v8, "sec_container_1.android.intent.category.LAUNCHER"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v3, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_0

    :goto_1
    return-object v6

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v8, "EnterpriseContainerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "could not start app "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v6, v7

    goto :goto_1
.end method

.method private getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mAppService:Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-nez v0, :cond_0

    const-string v0, "application_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mAppService:Lcom/android/server/enterprise/application/ApplicationPolicy;

    :cond_0
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mAppService:Lcom/android/server/enterprise/application/ApplicationPolicy;

    return-object v0
.end method

.method private getCertificateForPackage(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    if-eqz v7, :cond_1

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/16 v10, 0x40

    :try_start_0
    invoke-virtual {v7, p1, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v9, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-virtual {v10}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x0

    :try_start_1
    const-string v10, "X509"

    invoke-static {v10}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v8, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object v4, v5

    :cond_0
    if-eqz v4, :cond_1

    :goto_0
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_1
    return-object v8

    :catch_0
    move-exception v3

    :goto_1
    :try_start_2
    const-string v10, "EnterpriseContainerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid Package Name "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_1

    goto :goto_0

    :catch_1
    move-exception v3

    :goto_2
    const-string v10, "EnterpriseContainerService"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_1

    goto :goto_0

    :catch_2
    move-exception v3

    :goto_3
    const-string v10, "EnterpriseContainerService"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v10

    :goto_4
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_2
    throw v10

    :catchall_1
    move-exception v10

    move-object v4, v5

    goto :goto_4

    :catch_3
    move-exception v3

    move-object v4, v5

    goto :goto_3

    :catch_4
    move-exception v3

    move-object v4, v5

    goto :goto_2

    :catch_5
    move-exception v3

    move-object v4, v5

    goto :goto_1
.end method

.method private getCommandResult(Ljava/lang/Process;)Ljava/lang/String;
    .locals 10

    const/16 v6, 0x400

    new-array v4, v6, [B

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_2
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCommandResult : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    :goto_2
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Command result:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_1
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_3
    move-object v1, v2

    goto :goto_2

    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    :goto_5
    throw v6

    :catch_1
    move-exception v0

    const-string v7, "EnterpriseContainerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_2
    move-exception v0

    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_3
    move-exception v0

    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catchall_1
    move-exception v6

    move-object v1, v2

    goto :goto_4

    :catch_4
    move-exception v0

    goto/16 :goto_1
.end method

.method private getContainerIdFromAppId(I)I
    .locals 10

    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v9}, Lcom/sec/knox/container/manager/StateManager;->getContainerPackagesInfoFromCache()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v8, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    array-length v9, v5

    if-lez v9, :cond_2

    move-object v0, v5

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    if-eqz v6, :cond_0

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;

    if-nez v7, :cond_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->getContainerId()I

    move-result v2

    :goto_1
    return v2

    :cond_2
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private getContainerStatus(I)I
    .locals 5

    const/4 v0, -0x1

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v2, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v1

    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New State :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/knox/container/constants/CSState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->getPlatformContainerState(Lcom/sec/knox/container/constants/CSState;)I

    move-result v0

    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Returning State :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getMountStatus(I)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "EnterpriseContainerService"

    const-string v3, " getMountStatus : true"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    const-string v2, "EnterpriseContainerService"

    const-string v3, " getMountStatus : false"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getContainerTypeInternal(I)I
    .locals 2

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v1, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerObjectFromCache(I)Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerType()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private getDeviceAccountPolicy()Lcom/android/server/enterprise/security/DeviceAccountPolicy;
    .locals 2

    const-string v1, "device_account_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    return-object v0
.end method

.method private getDeviceFirmwareVersion()Ljava/lang/String;
    .locals 4

    const-string v1, "ro.build.PDA"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1. pdaVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->trimHiddenVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2. pdaVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getEcryptfsKey(Ljava/lang/String;Ljava/lang/StringBuilder;)I
    .locals 12

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v8

    if-eqz v8, :cond_b

    const/4 v2, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v8}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v2

    const-string v9, "EnterpriseContainerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TIMA :: keystoreInit results is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x9

    if-ne v2, v9, :cond_1

    const-string v9, "EnterpriseContainerService"

    const-string v10, "KYS TIMA 1.0  TIMA_ERROR_KEYSTORE_NOT_SUPPORTED"

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v2, :cond_5

    const/4 v9, 0x1

    if-eq v2, v9, :cond_0

    const/4 v9, 0x7

    if-ne v2, v9, :cond_4

    :cond_0
    const-string v9, "EnterpriseContainerService"

    const-string v10, "Retrieve: Device unauthorized to access Container."

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x48

    :goto_1
    return v9

    :cond_1
    if-nez v2, :cond_2

    const/4 v9, 0x0

    :try_start_1
    invoke-interface {v8, v9}, Landroid/service/tima/ITimaService;->keystoreRetrieveKey(I)[B

    move-result-object v5

    if-nez v5, :cond_3

    const/4 v2, 0x0

    :goto_2
    const-string v9, "EnterpriseContainerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TIMA :: keystoreRetrieveKey results is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-interface {v8}, Landroid/service/tima/ITimaService;->keystoreShutdown()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v9, "EnterpriseContainerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to get TIMA key"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x47

    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    :try_start_2
    aget-byte v2, v5, v9
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :cond_4
    const/16 v9, 0x9

    if-ne v2, v9, :cond_7

    const-string v9, "EnterpriseContainerService"

    const-string v10, "TIMA 2.0 is not supported"

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz v2, :cond_6

    const/16 v9, 0x9

    if-ne v2, v9, :cond_a

    :cond_6
    const-string v9, "%1$32s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v9, 0x20

    new-array v6, v9, [B

    const/4 v4, 0x0

    :goto_3
    const/16 v9, 0x20

    if-ge v4, v9, :cond_9

    if-eqz v5, :cond_8

    aget-byte v9, v0, v4

    add-int/lit8 v10, v4, 0x1

    aget-byte v10, v5, v10

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v6, v4

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    const-string v9, "EnterpriseContainerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Not able to get TIMA key, API failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x47

    goto/16 :goto_1

    :cond_8
    aget-byte v9, v0, v4

    aput-byte v9, v6, v4

    goto :goto_4

    :cond_9
    const/4 v9, 0x0

    invoke-static {v6, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    const/4 v9, 0x0

    const/16 v10, 0x20

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    const/4 v9, 0x1

    goto/16 :goto_1

    :cond_b
    const-string v9, "EnterpriseContainerService"

    const-string v10, "getEcryptfsKey : no TIMA"

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/knox/container/EnterpriseContainerService;->isTimaServiceExist:Z

    const/4 v9, 0x0

    goto/16 :goto_1
.end method

.method private getGenericVpnService()Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy;
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mGenericVpnService:Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy;

    if-nez v0, :cond_0

    const-string v0, "generic_vpn_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mGenericVpnService:Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy;

    :cond_0
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mGenericVpnService:Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy;

    return-object v0
.end method

.method private getKnoxApplicationPolicy(I)Lcom/sec/enterprise/knox/ContainerApplicationPolicy;
    .locals 3

    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getEnterpriseContainerManager(I)Lcom/sec/enterprise/knox/EnterpriseContainerManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getEnterpriseContainerManager(I)Lcom/sec/enterprise/knox/EnterpriseContainerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerApplicationPolicy()Lcom/sec/enterprise/knox/ContainerApplicationPolicy;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .locals 2

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mNotificationManager:Landroid/app/NotificationManager;

    :cond_0
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private getOriginalPackageNameInternal(ILjava/lang/String;)Ljava/lang/String;
    .locals 10

    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v7, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerPackages(I)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_3

    const-string v7, "EnterpriseContainerService"

    const-string v8, "getOriginalPackageName start"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "sec_container_"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "EnterpriseContainerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getContainerizedPackageName Matched"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sec_container_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v7, "EnterpriseContainerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Returned string is :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v4

    :cond_1
    move-object v4, v1

    goto :goto_0

    :cond_2
    const-string v7, "EnterpriseContainerService"

    const-string v8, "getContainerizedPackageName Nothing matched"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    const-string v7, "EnterpriseContainerService"

    const-string v8, "getContainerizedPackageName is null"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getOriginalPackageNamesInternal(I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v8, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerPackages(I)Ljava/util/List;

    move-result-object v7

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v7, :cond_1

    const-string v8, "EnterpriseContainerService"

    const-string v9, "getOriginalPackageName start"

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v8, "sec_container_"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sec_container_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v8, "EnterpriseContainerService"

    const-string v9, "getOriginalPackageNamesInternal is null"

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_2
    return-object v4
.end method

.method private getPlatformContainerState(Lcom/sec/knox/container/constants/CSState;)I
    .locals 3

    const/4 v0, -0x1

    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerService$4;->$SwitchMap$com$sec$knox$container$constants$CSState:[I

    invoke-virtual {p1}, Lcom/sec/knox/container/constants/CSState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, -0x1

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x5d

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x5b

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x5f

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x5a

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x52

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x53

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x62

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x5e

    goto :goto_0

    :pswitch_a
    const/16 v0, 0x60

    goto :goto_0

    :pswitch_b
    const/16 v0, 0x61

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_5
        :pswitch_b
        :pswitch_5
    .end packed-switch
.end method

.method private getTimaService()Landroid/service/tima/ITimaService;
    .locals 2

    const-string/jumbo v1, "tima"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v0

    return-object v0
.end method

.method private getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    move-object v0, p1

    goto :goto_0
.end method

.method private getVpnService()Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mVpnService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    if-nez v0, :cond_0

    const-string v0, "enterprise_premium_vpn_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mVpnService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    :cond_0
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mVpnService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    return-object v0
.end method

.method private declared-synchronized getWakeLockCounter()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->refCountWakeLock:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized incrementWakeLock()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refCountWakeLock before increment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->refCountWakeLock:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->refCountWakeLock:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->refCountWakeLock:I

    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refCountWakeLock after increment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->refCountWakeLock:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initialiseContainer()V
    .locals 2

    const-string v0, "EnterpriseContainerService"

    const-string v1, "initialiseContainer()"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ctl.start"

    const-string v1, "containersetup"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initializeDPMActiveAdminList()V
    .locals 3

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mActiveAdminList:Ljava/util/ArrayList;

    return-void
.end method

.method private installPackageInternal(Ljava/lang/String;I)Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;
    .locals 9

    const/4 v8, 0x1

    const/16 v7, -0x66

    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "installPackageInternal() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x92

    new-instance v3, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;

    invoke-direct {v3, p0, p2}, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, -0x2

    iput v4, v3, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->result:I

    const-string v4, "EnterpriseContainerService"

    const-string v5, "Invalid Apk. installation failed"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v3

    :cond_0
    invoke-virtual {v3}, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->init()V

    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "com.sec.knox.containeragent"

    invoke-virtual {v4, v5, v3, v2, v6}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    iget-boolean v4, v3, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_3
    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InterruptedException during Package installation."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, -0x66

    iput v4, v3, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->result:I

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v1

    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception during Package installation. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput v7, v3, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->result:I

    goto :goto_0

    :cond_1
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-boolean v4, v3, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->retry:Z

    if-ne v4, v8, :cond_2

    const-string v4, "EnterpriseContainerService"

    const-string v5, "Package installation failed due to internal error. Retry but before that sleep for 1 sec"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    :cond_2
    iget-boolean v4, v3, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->retry:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    if-eq v4, v8, :cond_0

    goto :goto_0
.end method

.method private isContainerPackageInstallable(I)Z
    .locals 4

    const/4 v1, 0x0

    const-string v2, "EnterpriseContainerService"

    const-string v3, "isContainerPackageInstallable()"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v2, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v0

    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerService$4;->$SwitchMap$com$sec$knox$container$constants$CSState:[I

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v1

    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isContainerPartition(I)Z
    .locals 5

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/container/.sdcontainer_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v2, "EnterpriseContainerService"

    const-string v3, "isContainerPartition : File object not created"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checking "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not existing.."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v2, v1

    goto :goto_0
.end method

.method private isPackageInInstallWhiteList(II)Z
    .locals 11

    const-string v8, "EnterpriseContainerService"

    const-string v9, "isPackageInInstallWhiteList()"

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getKnoxApplicationPolicy(I)Lcom/sec/enterprise/knox/ContainerApplicationPolicy;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v7, v0, v2

    invoke-direct {p0, p1, v7}, Lcom/sec/knox/container/EnterpriseContainerService;->getOriginalPackageNameInternal(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/enterprise/knox/ContainerApplicationPolicy;->isPackageInInstallWhiteList(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    :goto_1
    return v8

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v8, "EnterpriseContainerService"

    const-string v9, "ContainerApplicationPolicy is null"

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    const/4 v8, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v8, "EnterpriseContainerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error in isPackageInInstallWhiteList(). "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private isPasswordForbiddenInternal(ILjava/lang/String;Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v4, "EnterpriseContainerService"

    const-string v5, "isPasswordForbiddenInternal()"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->getActiveAdminComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :cond_2
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v4, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->isPasswordForbidden(ILjava/lang/String;)Z

    move-result v1

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_3

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isPasswordForbidden() allowAll= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " API Permission is not granted for Non-MDM and Non-DPM API Calls"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "EnterpriseContainerService"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isPasswordForbidden() Error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private killTimer(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->killTimer(I)V

    return-void
.end method

.method private killUnmountTimer(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->killUnmountTimer(I)V

    return-void
.end method

.method private launchActivityForPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "sec_container_1.android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x1

    :goto_0
    return v3

    :catch_0
    move-exception v1

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ActivityNotFoundException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "could not start app "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private loadPasswordInfoToCache(I)V
    .locals 10

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v7, p1, v9}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordExpiration(ILandroid/content/ComponentName;)J

    move-result-wide v3

    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v7, p1, v9}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordExpirationTimeout(ILandroid/content/ComponentName;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, p1}, Lcom/sec/knox/container/manager/StateManager;->getFailedPasswordAttempts(Landroid/content/Context;I)I

    move-result v0

    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v7, p1, v9}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getMaximumTimeToLock(ILandroid/content/ComponentName;)J

    move-result-wide v1

    const-string v7, "EnterpriseContainerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Update: Password Info: passwordExpirationDate = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", passwordExpirationTimeout = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", failedPasswordAttempts = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", maximumTimeToLock = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v7, p1, v3, v4}, Lcom/sec/knox/container/manager/StateManager;->setPasswordExpirationDate(IJ)Z

    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v7, p1, v5, v6}, Lcom/sec/knox/container/manager/StateManager;->setPasswordExpirationTimeout(IJ)Z

    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v7, p1, v0}, Lcom/sec/knox/container/manager/StateManager;->setFailedPasswordAttempts(II)Z

    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v7, p1, v1, v2}, Lcom/sec/knox/container/manager/StateManager;->setMaximumTimeToLock(IJ)Z

    return-void
.end method

.method private lockContainerInternal(I)Z
    .locals 8

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v6, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v6

    sget-object v7, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_LOCK_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v5, p1, v6, v7}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v5

    sget-object v6, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v6}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v6

    if-eq v5, v6, :cond_0

    const-string v5, "EnterpriseContainerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Locking for container"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->killAllApps(I)Z

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->killTimer(I)V

    const/4 v5, 0x2

    invoke-direct {p0, p1, v5, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->unmount(III)V

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->clearVerifyCallback(I)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v0, Landroid/content/Intent;

    const-string v5, "enterprise.container.locked"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "containerid"

    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private mount(Lcom/sec/knox/container/EnterpriseContainerObjectParam;III)I
    .locals 28

    const-string v3, "EnterpriseContainerService"

    const-string v4, "Mount()"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v17, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getPassword()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->getEcryptfsKey(Ljava/lang/String;Ljava/lang/StringBuilder;)I

    move-result v18

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/knox/container/EnterpriseContainerService;->isTimaServiceExist:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    move/from16 v0, v18

    if-eq v0, v3, :cond_1

    :cond_0
    :goto_0
    return v18

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/.container_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/storage/container/.sdcontainer_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/mnt_1/sdcard_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-wide/16 v26, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v25, Ljava/io/File;

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v20, Ljava/io/File;

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const-string v3, "EnterpriseContainerService"

    const-string v4, "Error create container: One or more source/mount path does not exist."

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v18, 0x0

    const-wide/16 v3, 0x0

    cmp-long v3, v26, v3

    if-eqz v3, :cond_0

    :goto_1
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->isContainerPartition(I)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sdcard directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not exist, so creating it ...."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/knox/container/EnterpriseContainerService;->initialiseContainer()V

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getPassword()Ljava/lang/String;

    move-result-object v6

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Path to mount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_6

    new-instance v2, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, p3

    move/from16 v5, p2

    invoke-direct/range {v2 .. v8}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;IILjava/lang/String;Ljava/lang/String;Z)V

    :goto_2
    if-lez p4, :cond_5

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->setRequestId(I)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mMountCallBackData:Ljava/util/HashMap;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->checkMount(Z)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "EnterpriseContainerService"

    const-string v4, "primary mount already exists for some reason, force unmount"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move/from16 v0, p2

    invoke-virtual {v3, v9, v4, v5, v0}, Landroid/dirEncryption/DirEncryptionManager;->unmountEcryptfsStorage(Ljava/lang/String;Landroid/dirEncryption/IDirEncryptionManagerCallBack;II)I

    :goto_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->checkMount(Z)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "EnterpriseContainerService"

    const-string v4, "secondary mount already exists for some reason, force unmount"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v3, v0, v4, v5, v1}, Landroid/dirEncryption/DirEncryptionManager;->unmountEcryptfsStorage(Ljava/lang/String;Landroid/dirEncryption/IDirEncryptionManagerCallBack;II)I

    :goto_4
    if-eqz v17, :cond_a

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_a

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v8, v23

    move/from16 v13, p2

    move/from16 v14, p3

    move-object v15, v2

    invoke-virtual/range {v7 .. v15}, Landroid/dirEncryption/DirEncryptionManager;->mountEcryptfsStorage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIILandroid/dirEncryption/IDirEncryptionManagerCallBack;)I

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_b

    const-string v3, "EnterpriseContainerService"

    const-string v4, "Error create container: DirEncryptionManager Primary mount failed"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x0

    const-wide/16 v3, 0x0

    cmp-long v3, v26, v3

    if-eqz v3, :cond_0

    goto/16 :goto_1

    :cond_6
    new-instance v2, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;

    const/4 v7, 0x1

    move-object/from16 v3, p0

    move/from16 v4, p3

    move/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;IILjava/lang/String;Z)V

    goto/16 :goto_2

    :cond_7
    const-string v3, "EnterpriseContainerService"

    const-string v4, "primary mount is clear for mount"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v16

    :try_start_2
    const-string v3, "EnterpriseContainerService"

    invoke-static/range {v16 .. v16}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v18, 0x0

    const-wide/16 v3, 0x0

    cmp-long v3, v26, v3

    if-eqz v3, :cond_0

    goto/16 :goto_1

    :cond_8
    :try_start_3
    const-string v3, "EnterpriseContainerService"

    const-string v4, "secondary mount is clear for mount"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catchall_0
    move-exception v3

    const-wide/16 v4, 0x0

    cmp-long v4, v26, v4

    if-eqz v4, :cond_9

    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_9
    throw v3

    :cond_a
    :try_start_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v8, v23

    move-object v10, v6

    move/from16 v13, p2

    move/from16 v14, p3

    move-object v15, v2

    invoke-virtual/range {v7 .. v15}, Landroid/dirEncryption/DirEncryptionManager;->mountEcryptfsStorage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIILandroid/dirEncryption/IDirEncryptionManagerCallBack;)I

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_b

    const-string v3, "EnterpriseContainerService"

    const-string v4, "Error create container: DirEncryptionManager Primary mount failed"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const/16 v18, 0x0

    const-wide/16 v3, 0x0

    cmp-long v3, v26, v3

    if-eqz v3, :cond_0

    goto/16 :goto_1

    :cond_b
    const-wide/16 v3, 0x0

    cmp-long v3, v26, v3

    if-eqz v3, :cond_c

    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_c
    const/16 v18, 0x1

    goto/16 :goto_0
.end method

.method private registerReceiverPerContainer(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registering action >> sec_container_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sec_container_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mBroadCastReciever:Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerReciever()V
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;

    invoke-direct {v1, p0}, Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;)V

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mBroadCastReciever:Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.EMAIL_ACCOUNT_CREATED_INTENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.EMAIL_ACCOUNT_DELETED_INTENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.knox.container.INTENT_ALARM_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.knox.container.INTENT_ALARM_UNMOUNT_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "enterprise.container.INTENT_ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mDPMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v5, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mBroadCastReciever:Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mBroadCastReciever:Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "android.intent.action.EMAIL_ACCOUNT_CREATED_INTENT"

    invoke-direct {p0, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->registerReceiverPerContainer(Ljava/lang/String;)V

    const-string v1, "android.intent.action.EMAIL_ACCOUNT_DELETED_INTENT"

    invoke-direct {p0, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->registerReceiverPerContainer(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized releaseLock()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    const-string v0, "EnterpriseContainerService"

    const-string v1, "---------------------->releasing wake lock<---------------------"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->setDownloadWakeState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private removeContainerActiveAdmin(I)V
    .locals 13

    const-string v10, "EnterpriseContainerService"

    const-string v11, "removeContainerActiveAdmin()"

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_0
    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v10, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerPackages(I)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_2

    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mActiveAdminList:Ljava/util/ArrayList;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mActiveAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_2

    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    const-string v11, "device_policy"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    if-eqz v4, :cond_2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mActiveAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "EnterpriseContainerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "removeActiveAdmin called with ComponentName= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "sec_container_1.com.android.email"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v4, v0}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v10, "EnterpriseContainerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception occured while removing admin: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_3
    :try_start_2
    const-string v10, "EnterpriseContainerService"

    const-string/jumbo v11, "skip removeActiveAdmin : sec_container_1.com.android.email"

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v10

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10

    :cond_4
    :try_start_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveAdminMap:Ljava/util/HashMap;

    if-nez v10, :cond_5

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveAdminMap:Ljava/util/HashMap;

    :cond_5
    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveAdminMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    const-string v10, "EnterpriseContainerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "removeContainerActiveAdmin: no admins found in Container Id: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method

.method private removeContainerHelper(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    .locals 5

    const-string v2, "EnterpriseContainerService"

    const-string v3, " removeContainerHelper()"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->killTimer(I)V

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v3, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    sget-object v4, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UNINSTALL_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v2, p1, v3, v4}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    if-eq v2, v3, :cond_3

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->removeContainerActiveAdmin(I)V

    const-string v2, "EnterpriseContainerService"

    const-string v3, "Updating DB ContainerStatus: 94"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "enterprise.container.remove.progress"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "containerid"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v2, "EnterpriseContainerService"

    const-string v3, "Putting the call back in the map"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, p2}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->add(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    :cond_0
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveAdminMap:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveAdminMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->removeContainerNow(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    :cond_2
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private removeContainerNow(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V
    .locals 23

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " removeContainerNow(): id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "framework.pkgName.key"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_1

    const/4 v15, 0x0

    :goto_0
    if-eqz v15, :cond_2

    move-object v9, v15

    array-length v0, v9

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    aget-object v16, v9, v17

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    :cond_1
    const-string v3, ";"

    invoke-virtual {v14, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    if-nez v3, :cond_4

    :cond_3
    :goto_2
    return-void

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    move/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Lcom/sec/knox/container/manager/StateManager;->getPackageNames(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_5

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    invoke-interface {v6, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    if-eqz v6, :cond_b

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerObjectFromCache(I)Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    move-result-object v13

    if-eqz v13, :cond_3

    invoke-virtual {v13}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerAdmin()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v21

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setApplicationUninstallationDisabledBySystem to false admin:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_6
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v3, v8, v0, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V

    goto :goto_3

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getDeviceAccountPolicy()Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    move-result-object v3

    if-eqz v3, :cond_8

    const-string v3, "EnterpriseContainerService"

    const-string v4, "clearing BL/WL account settings for various types."

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getDeviceAccountPolicy()Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    move-result-object v3

    const/4 v4, 0x0

    move/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->clearAccountsFromBWLBySystem(I[Ljava/lang/String;)Z

    :cond_8
    invoke-virtual/range {p0 .. p1}, Lcom/sec/knox/container/EnterpriseContainerService;->killAllApps(I)Z

    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/knox/container/EnterpriseContainerService;->resetWakeLock()V

    const-string v3, "EnterpriseContainerService"

    const-string v4, "Start the Uninstaller Thread"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;ILandroid/os/Handler;Ljava/util/List;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    invoke-virtual {v2}, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->start()V

    const-string v11, "B2B"

    invoke-virtual {v13}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_a

    const-string v11, "B2B"

    :cond_9
    :goto_4
    const-string v3, "[ECS] removeContainerNow()"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Lcom/sec/knox/container/EnterpriseContainerService;->WriteContainerHistory(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v13}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerType()I

    move-result v3

    if-nez v3, :cond_9

    const-string v11, "B2C"

    goto :goto_4

    :cond_b
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string v3, "containerid"

    move/from16 v0, p1

    invoke-virtual {v10, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v7, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    const-string v3, "EnterpriseContainerService"

    const-string v4, "Uninstaller Thread msg to Handler"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2
.end method

.method private removeUntrustedContainerApps(I)V
    .locals 12

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/16 v1, 0x80

    invoke-virtual {v11, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    iget-object v10, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v10, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sec_container_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Untrusted Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " will be uninstalled before container creation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;ILandroid/os/Handler;Ljava/util/List;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    invoke-virtual {v0}, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->start()V

    invoke-virtual {v0}, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v8

    const-string v1, "EnterpriseContainerService"

    const-string v2, "UninstallPackageThread interrupted"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private declared-synchronized resetWakeLock()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refCountWakeLock before reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->refCountWakeLock:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->refCountWakeLock:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->setDownloadWakeState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private scheduleTimer(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->scheduleTimer(Landroid/content/Context;IZ)V

    return-void
.end method

.method private scheduleTimer(Landroid/content/Context;IZ)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getWakeLockCounter()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->scheduleTimer(Landroid/content/Context;IZ)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "On scheduleTimer, WakeLockCounter is not 0, it is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getWakeLockCounter()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendContainerCreationIntent(I)V
    .locals 3

    const-string v1, "EnterpriseContainerService"

    const-string v2, "sending sendContainerCreationIntent"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "enterprise.container.created.nonactive"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "containerid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendContainerSetupSuccessMessage(I)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "containerid"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    const/16 v3, 0xc

    invoke-static {v2, v3, v4, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    invoke-virtual {v2, v1}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendNewContainerNotificationRequest(III)V
    .locals 5

    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendNewContainerNotificationRequest() ReqId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.knox.containeragent.createcontainer"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "admin"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "requestid"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "intent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendRemountSuccessMessageToHandler(ILjava/lang/String;I)V
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remount success for : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "containerid"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "rid"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    const/16 v3, 0xd

    invoke-static {v2, v3, v5, v5, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    invoke-virtual {v2, v1}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendRemovePersonalContainerRequest(III)V
    .locals 5

    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRemovePersonalContainerRequest() ReqId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.knox.containeragent.remove.b2ccontainer"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "admin"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "requestid"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "intent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setContainerFirmwareVersionToCacheAndDB(ILjava/lang/String;)Z
    .locals 4

    const-string v1, "EnterpriseContainerService"

    const-string v2, "setContainerFirmwareVersionToCacheAndDB()"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "deviceFirmwareVersion"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/sec/knox/container/manager/StateManager;->updateValuesForContainer(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating firmware Version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/manager/StateManager;->setFirmwareVersion(ILjava/lang/String;)Z

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setupContainer(Lcom/sec/knox/container/EnterpriseContainerObjectParam;I)I
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->generateAndStoreTimaKey()I

    move-result v0

    iget-boolean v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->isTimaServiceExist:Z

    if-eqz v2, :cond_0

    if-eq v0, v4, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1, p2, v3, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->mount(Lcom/sec/knox/container/EnterpriseContainerObjectParam;III)I

    move-result v0

    if-ne v0, v4, :cond_1

    const-string v2, "EnterpriseContainerService"

    const-string/jumbo v3, "setupContainer() Mount Succes"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method private setupContainerCreationFailureMessage(II)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "containerid"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "errCode"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    const/16 v3, 0xa

    invoke-static {v2, v3, v4, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    invoke-virtual {v2, v1}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private setupContainerRemountFailureMessage(III)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "containerid"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "rid"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "errCode"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    const/16 v3, 0xb

    invoke-static {v2, v3, v4, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    invoke-virtual {v2, v1}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private startContainerEventsRelayManager()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.knox.eventsmanager.ContainerEventsRelayManager"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "EnterpriseContainerService"

    const-string v2, "Failed to start ContainerEventsRelayManager service"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Do not have permission to start service ContainerEventsRelayManager. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while starting ContainerEventsRelayManager service. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private trimHiddenVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x5f

    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "trimHiddenVersion("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private unlockContainerInternal(I)Z
    .locals 5

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v3, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    sget-object v4, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UNLOCK_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v2, p1, v3, v4}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v2, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->reportSuccessfulPasswordAttempt(I)V

    const-string v2, "EnterpriseContainerService"

    const-string/jumbo v3, "unlockContainer API: Container State = CONTAINER_INACTIVE"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "enterprise.container.unlocked"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "containerid"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const-string v2, "EnterpriseContainerService"

    const-string v3, "Container is not locked so no unlock"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private unmount(III)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/mnt_1/sdcard_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    :cond_0
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "containerunmount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UNMOUNT_PRIMARY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "OR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;

    new-instance v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;

    const/4 v2, 0x4

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;IILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v9, v7, v0, p3, p1}, Landroid/dirEncryption/DirEncryptionManager;->unmountEcryptfsStorage(Ljava/lang/String;Landroid/dirEncryption/IDirEncryptionManagerCallBack;II)I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    :cond_2
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "containerunmount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UNMOUNT_SECONDARY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "OR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;

    new-instance v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;

    const/4 v2, 0x1

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;IILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v9, v8, v0, p3, p1}, Landroid/dirEncryption/DirEncryptionManager;->unmountEcryptfsStorage(Ljava/lang/String;Landroid/dirEncryption/IDirEncryptionManagerCallBack;II)I

    return-void
.end method

.method private updateContainerEmailId(ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 7

    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateContainerEmailId() with action "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    sget v4, Lcom/sec/knox/container/EnterpriseContainerService;->ADD_EMAILID:I

    if-ne p4, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "email"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6, v0, p1}, Lcom/sec/knox/container/manager/StateManager;->updateValuesForContainer(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sending email update intent for user-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", domain-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", container-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v4, p1, v1}, Lcom/sec/knox/container/manager/StateManager;->updateEmailId(ILjava/lang/String;)Z

    const-string/jumbo v2, "sys.samsung.knox.email"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    sget v4, Lcom/sec/knox/container/EnterpriseContainerService;->ADD_EMAILID:I

    if-ne p4, v4, :cond_1

    const-string v4, "enterprise.container.email.added"

    :goto_1
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "containerid"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "username"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "domain"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v4, 0x1

    :goto_2
    return v4

    :cond_0
    const-string v1, ""

    goto :goto_0

    :cond_1
    const-string v4, "enterprise.container.email.removed"

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private validatePasswordInternal(ILjava/lang/String;Ljava/lang/String;)I
    .locals 24

    const-string v21, "EnterpriseContainerService"

    const-string/jumbo v22, "validatePasswordInternal()"

    invoke-static/range {v21 .. v22}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/16 v21, 0x33

    :goto_0
    return v21

    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMaximumLength(II)I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_2

    const/16 v21, 0x45

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->isPasswordContainsValidChars(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    const/16 v21, 0x46

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->verifyPassword(ILjava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_4

    const/16 v21, 0x44

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->checkOldPasswordHistory(ILjava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_5

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    :cond_5
    const/16 v21, 0x41

    goto :goto_0

    :cond_6
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerService;->getSimplePasswordEnabled(ILandroid/content/ComponentName;)Z

    move-result v21

    if-nez v21, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->checkSequentialChars(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    const/16 v21, 0x42

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->checkRepeatingChars(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_8

    const/16 v21, 0x43

    goto/16 :goto_0

    :cond_8
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->isPasswordForbiddenInternal(ILjava/lang/String;Z)Z

    move-result v21

    if-eqz v21, :cond_9

    const/16 v21, 0x3c

    goto/16 :goto_0

    :cond_9
    const/4 v7, 0x0

    const/16 v20, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/4 v15, 0x0

    const/4 v5, 0x0

    :goto_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v5, v0, :cond_d

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v21, 0x41

    move/from16 v0, v21

    if-lt v4, v0, :cond_a

    const/16 v21, 0x5a

    move/from16 v0, v21

    if-gt v4, v0, :cond_a

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v20, v20, 0x1

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_a
    const/16 v21, 0x61

    move/from16 v0, v21

    if-lt v4, v0, :cond_b

    const/16 v21, 0x7a

    move/from16 v0, v21

    if-gt v4, v0, :cond_b

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_b
    const/16 v21, 0x30

    move/from16 v0, v21

    if-lt v4, v0, :cond_c

    const/16 v21, 0x39

    move/from16 v0, v21

    if-gt v4, v0, :cond_c

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_c
    add-int/lit8 v19, v19, 0x1

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordQuality(ILandroid/content/ComponentName;)I

    move-result v17

    if-eqz v17, :cond_11

    invoke-static/range {p3 .. p3}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_10

    const/high16 v21, 0x6

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_10

    const/high16 v21, 0x5

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumLetters(ILandroid/content/ComponentName;)I

    move-result v9

    if-ge v7, v9, :cond_e

    const/16 v21, 0x35

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumNumeric(ILandroid/content/ComponentName;)I

    move-result v12

    move/from16 v0, v16

    if-ge v0, v12, :cond_f

    const/16 v21, 0x36

    goto/16 :goto_0

    :cond_f
    const/16 v21, 0x33

    goto/16 :goto_0

    :cond_10
    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumLength(ILandroid/content/ComponentName;)I

    move-result v6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v0, v6, :cond_12

    const/16 v21, 0x34

    goto/16 :goto_0

    :cond_12
    const/high16 v21, 0x6

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumLetters(ILandroid/content/ComponentName;)I

    move-result v9

    if-ge v7, v9, :cond_13

    const/16 v21, 0x35

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumNumeric(ILandroid/content/ComponentName;)I

    move-result v12

    move/from16 v0, v16

    if-ge v0, v12, :cond_14

    const/16 v21, 0x36

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumLowerCase(ILandroid/content/ComponentName;)I

    move-result v10

    if-ge v8, v10, :cond_15

    const/16 v21, 0x37

    goto/16 :goto_0

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumUpperCase(ILandroid/content/ComponentName;)I

    move-result v14

    move/from16 v0, v20

    if-ge v0, v14, :cond_16

    const/16 v21, 0x38

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumNonLetter(ILandroid/content/ComponentName;)I

    move-result v11

    if-ge v15, v11, :cond_17

    const/16 v21, 0x3a

    goto/16 :goto_0

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumSymbols(ILandroid/content/ComponentName;)I

    move-result v13

    move/from16 v0, v19

    if-ge v0, v13, :cond_18

    const/16 v21, 0x39

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->checkMinimumCharacterChangeLength(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_19

    const/16 v21, 0x3d

    goto/16 :goto_0

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->checkMaximumCharacterOccurrences(ILjava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1a

    const/16 v21, 0x3e

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->checkMaximumCharacterSequenceLength(ILjava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1b

    const/16 v21, 0x3f

    goto/16 :goto_0

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->checkMaximumNumericSequenceLength(ILjava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1c

    const/16 v21, 0x40

    goto/16 :goto_0

    :cond_1c
    const/16 v21, 0x3b

    goto/16 :goto_0
.end method

.method private verifyPasswordInternal(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "verifyPassword() isAutoMount "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "containerid"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRIdGenerator:Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;

    invoke-virtual {v0}, Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;->getNextContainerRequestId()I

    move-result v2

    :try_start_0
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mChangeContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    invoke-virtual {v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    invoke-virtual {v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const-string v0, "EnterpriseContainerService"

    const-string v1, "A Request for Verify Password / Change Password is already in progress"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3f7

    invoke-interface {p3, v0, v4}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->add(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->verifyPassword(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v7

    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Container Status :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v0

    if-eq v7, v0, :cond_2

    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v0

    if-eq v7, v0, :cond_2

    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_CREATED_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v0

    if-eq v7, v0, :cond_2

    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_UPGRADE:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v0

    if-eq v7, v0, :cond_2

    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_UPGRADE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v0

    if-eq v7, v0, :cond_2

    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_ADMIN_PWD_RESET:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v0

    if-ne v7, v0, :cond_7

    :cond_2
    if-nez p4, :cond_3

    const-string v0, "EnterpriseContainerService"

    const-string v1, "############### reportSuccessfulPasswordAttempt #################"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->reportSuccessfulPasswordAttempt(I)V

    :cond_3
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Starting container remounting"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerParamFromDB(Landroid/content/Context;I)Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6, p2}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->setPassword(Ljava/lang/String;)V

    :goto_1
    if-eqz v6, :cond_5

    const/4 v0, 0x2

    invoke-direct {p0, v6, p1, v0, v2}, Lcom/sec/knox/container/EnterpriseContainerService;->mount(Lcom/sec/knox/container/EnterpriseContainerObjectParam;III)I

    move-result v8

    :goto_2
    const/4 v0, 0x1

    if-eq v8, v0, :cond_6

    const-string v0, "EnterpriseContainerService"

    const-string v1, "Mount not success"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v2, v8}, Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerRemountFailureMessage(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v9

    const/4 v1, 0x4

    const/16 v3, 0x3f7

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Verify Password Failure happend "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    const-string v0, "EnterpriseContainerService"

    const-string v1, "container is null"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    :cond_6
    const-string v0, "EnterpriseContainerService"

    const-string v1, " Remount Async process started. State will be changed in the callback...."

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->activatePasswordAndContainer(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->reportSuccessfulPasswordAttempt(I)V

    const/4 v1, 0x4

    const/16 v3, 0x3f6

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->actOnWrongPasswordAttempt(I)V

    const/4 v1, 0x4

    const/16 v3, 0x3f7

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    goto/16 :goto_0

    :cond_9
    if-nez p4, :cond_a

    const-string v0, "EnterpriseContainerService"

    const-string v1, "############### CALLING ACT ON WRONG PWD#################"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->actOnWrongPasswordAttempt(I)V

    :cond_a
    const/4 v1, 0x4

    const/16 v3, 0x3f7

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public WriteContainerHistory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    new-instance v4, Ljava/io/File;

    const-string v10, "/data/log/"

    const-string v11, "ContainerHistory.txt"

    invoke-direct {v4, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/32 v12, 0x200000

    cmp-long v10, v10, v12

    if-lez v10, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    new-instance v4, Ljava/io/File;

    const-string v10, "/data/log/"

    const-string v11, "ContainerHistory.txt"

    invoke-direct {v4, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v10, "yyyy.MM.dd HH:mm:ss"

    sget-object v11, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v7, v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v6, Ljava/io/FileWriter;

    const/4 v10, 0x1

    invoke-direct {v6, v4, v10}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\n\ntime :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\nNote :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\nType :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/FileWriter;->flush()V

    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v6, :cond_1

    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_0
    move-object v5, v6

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v3

    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_2

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v10

    :goto_3
    if-eqz v5, :cond_3

    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_3
    :goto_4
    throw v10

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_1
    move-exception v10

    move-object v5, v6

    goto :goto_3

    :catch_4
    move-exception v3

    move-object v5, v6

    goto :goto_2
.end method

.method public activateContainer(I)Z
    .locals 4

    const-string v1, "EnterpriseContainerService"

    const-string v2, "activate Container is called"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x18

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v2, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v2

    sget-object v3, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_ACTIVATE_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v1, p1, v2, v3}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v1

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v2}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    if-eq v1, v2, :cond_0

    const-string v1, "EnterpriseContainerService"

    const-string v2, "activateContainer container state changed to active"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activateContainer container state cannot change :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public adminPasswordReset(I)Z
    .locals 4

    const/16 v1, 0x8

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v2, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v2

    sget-object v3, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_ADMIN_RESET_PASSWORD:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v1, p1, v2, v3}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v1

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v2}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    if-eq v1, v2, :cond_0

    const-string v1, "EnterpriseContainerService"

    const-string/jumbo v2, "setPasswordVerifyMode SUCCESS "

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const-string v1, "EnterpriseContainerService"

    const-string/jumbo v2, "setPasswordVerifyMode FAIL "

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cancelCreateContainer(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x1

    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelCreateContainer() Req ID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerIdForRequestId(I)I

    move-result v2

    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelCreateContainer() Container ID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-direct {p0, v0, v2}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v0, v2}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v0

    sget-object v1, Lcom/sec/knox/container/constants/CSState;->CSSTATE_DOESNOT_EXISTS:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v1}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string v0, "EnterpriseContainerService"

    const-string v1, "Cancel Container before createContainerInternal"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "containerid"

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "requestid"

    iget v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerRequestId:I

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x5

    const/16 v3, 0x3f8

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerRequestId:I

    new-instance v6, Landroid/content/Intent;

    const-string v0, "enterprise.container.cancelled"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Container Cancelled intent Container id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "containerid"

    invoke-virtual {v6, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "requestid"

    invoke-virtual {v6, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0, v2}, Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V

    :goto_0
    return v5

    :cond_0
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v0, v2}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v0

    sget-object v1, Lcom/sec/knox/container/constants/CSState;->CSSTATE_CREATION_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v1}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    const-string v0, "EnterpriseContainerService"

    const-string v1, "Cancel Container during container creation"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/manager/StateManager;->containerCanceled(I)Z

    move-result v5

    goto :goto_0

    :cond_1
    const-string v0, "EnterpriseContainerService"

    const-string v1, "cancelCreateContainer() API has failed due to Id mismatch"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    goto :goto_0
.end method

.method public changeActiveContainerPasswordStatus(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v1, "EnterpriseContainerService"

    const-string v2, "changeActiveContainerPasswordStatus "

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v2, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v2

    sget-object v3, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_VERIFY_PWD_TIMEOUT:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v1, p1, v2, v3}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v1

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_VERIFY_PWD:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v2}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    const-string v1, "EnterpriseContainerService"

    const-string v2, "changeActiveContainerPasswordStatus container moved to verify password killing timer "

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->killTimer(I)V

    :cond_0
    return-void
.end method

.method public changePassword(ILjava/lang/String;Ljava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/knox/container/EnterpriseContainerService;->changeContainerPassword(ILjava/lang/String;Ljava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    return-void
.end method

.method public checkPassword(ILjava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x3

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->verifyPassword(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->activatePasswordAndContainer(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "EnterpriseContainerService"

    const-string v1, "check password activating"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->reportSuccessfulPasswordAttempt(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v1, "EnterpriseContainerService"

    const-string v2, "checkPassword could not activate"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->actOnWrongPasswordAttempt(I)V

    goto :goto_0

    :cond_1
    const-string v1, "EnterpriseContainerService"

    const-string v2, "check Password failed"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->actOnWrongPasswordAttempt(I)V

    goto :goto_0
.end method

.method public containerizedAppStarting(I)V
    .locals 7

    const/4 v4, 0x1

    invoke-direct {p0, v4, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    const-string v4, "EnterpriseContainerService"

    const-string v5, "containerizedAppStarting executing from proxies"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getVpnService()Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v4, "EnterpriseContainerService"

    const-string v5, "containerizedAppStarting - Notify EnterpriseVpnPolicy"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getVpnService()Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;->notifyContainerAppLaunch(I)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getGenericVpnService()Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v4, "EnterpriseContainerService"

    const-string v5, "containerizedAppStarting - Notify GenericVpnPolicy"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getGenericVpnService()Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy;->notifyContainerAppLaunch(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "containerizedAppStarting crashed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :catch_1
    move-exception v0

    :try_start_2
    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "containerizedAppStarting crashed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public createContainer(Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "EnterpriseContainerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-------------------------------->createContainer() FLAG: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "<--------------------------------"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x8

    invoke-direct {p0, v7}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(I)I

    move-result v0

    const/4 v1, -0x1

    iget v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    if-nez v7, :cond_0

    const-string v7, "EnterpriseContainerService"

    const-string v8, "container id : 1 creation in progress"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    :cond_0
    iget v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-direct {p0, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->checkExistence(I)Z

    move-result v7

    if-ne v7, v5, :cond_2

    invoke-direct {p0, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->getContainerTypeInternal(I)I

    move-result v7

    if-nez v7, :cond_1

    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Personal Container "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "is already present either in active or inactive, at first removing or canceling"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/sec/knox/container/EnterpriseContainerService;->mB2BCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    iget v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerRequestId:I

    invoke-direct {p0, v1, v0, v6}, Lcom/sec/knox/container/EnterpriseContainerService;->sendRemovePersonalContainerRequest(III)V

    :goto_0
    return v5

    :cond_1
    const-string v5, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Container "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "is already present either in active or inactive so returning"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    goto :goto_0

    :cond_2
    const/4 v7, 0x2

    if-ge v1, v7, :cond_5

    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v7, v1}, Lcom/sec/knox/container/manager/StateManager;->getRequestIdForContainer(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    const-string v5, "EnterpriseContainerService"

    const-string v7, "Request Id already present, returning "

    invoke-static {v5, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    invoke-direct {p0, v7, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->addOrUpdateContainerToDB(Lcom/sec/knox/container/EnterpriseContainerObjectParam;I)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v5, "EnterpriseContainerService"

    const-string v7, "Could not add to DB, returning "

    invoke-static {v5, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRIdGenerator:Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;

    invoke-virtual {v6}, Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;->getNextContainerRequestId()I

    move-result v6

    iput v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerRequestId:I

    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7, p1}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->add(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const-string v6, "EnterpriseContainerService"

    const-string v7, "checkIfWhitelistedApp called"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerRequestId:I

    invoke-direct {p0, v1, v0, v6}, Lcom/sec/knox/container/EnterpriseContainerService;->sendNewContainerNotificationRequest(III)V

    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerRequestId:I

    invoke-virtual {v6, v1, v7}, Lcom/sec/knox/container/manager/StateManager;->setRequestIdForContainer(II)V

    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v6, v1, p2}, Lcom/sec/knox/container/manager/StateManager;->setFeatureFlagForContainer(II)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "New Container Req ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerRequestId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v5, "EnterpriseContainerService"

    const-string v7, "Reached Max number of Containers, returning "

    invoke-static {v5, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    goto/16 :goto_0
.end method

.method public createContainerFromB2CtoB2B(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    if-nez v6, :cond_0

    const-string v6, "EnterpriseContainerService"

    const-string v7, "container id : 1 creation in progress"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    :cond_0
    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    const/4 v6, 0x2

    if-ge v0, v6, :cond_3

    const-string v6, "EnterpriseContainerService"

    const-string v7, "createContainer from B2C to B2B"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v6, v0}, Lcom/sec/knox/container/manager/StateManager;->getRequestIdForContainer(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    const-string v5, "EnterpriseContainerService"

    const-string v6, "Request Id already present, returning "

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v4

    :cond_1
    const/4 v6, 0x0

    invoke-direct {p0, v6, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->addOrUpdateContainerToDB(Lcom/sec/knox/container/EnterpriseContainerObjectParam;I)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v5, "EnterpriseContainerService"

    const-string v6, "Could not add to DB, returning "

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerRequestId:I

    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerService;->mB2BCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    invoke-virtual {v4, v6, v7}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->add(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const-string v4, "EnterpriseContainerService"

    const-string v6, "checkIfWhitelistedApp called"

    invoke-static {v4, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerRequestId:I

    invoke-virtual {v4, v0, v6}, Lcom/sec/knox/container/manager/StateManager;->setRequestIdForContainer(II)V

    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v4, v0, p3}, Lcom/sec/knox/container/manager/StateManager;->setFeatureFlagForContainer(II)V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v4, "EnterpriseContainerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New Container Req ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerRequestId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    goto :goto_0

    :cond_3
    const-string v5, "EnterpriseContainerService"

    const-string v6, "Reached Max number of Containers, returning "

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public createContainerInternal(Lcom/sec/knox/container/EnterpriseContainerObjectParam;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createContainerInternal() ReqId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getRequestId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v9}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(I)I

    :try_start_0
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->acquireLock()V

    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    new-instance v7, Ljava/lang/Integer;

    iget v8, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7, p2}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->add(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    if-nez p1, :cond_1

    const-string v5, "EnterpriseContainerService"

    const-string v6, "Error create container: Container object is null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(II)V

    iget v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-direct {p0, v5}, Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->releaseLock()V

    :goto_1
    return v4

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getRequestId()I

    move-result v6

    iget v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerRequestId:I

    if-eq v6, v7, :cond_2

    iget v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(II)V

    iget v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-direct {p0, v5}, Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->releaseLock()V

    throw v4

    :cond_2
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-direct {p0, v6}, Lcom/sec/knox/container/EnterpriseContainerService;->checkExistence(I)Z

    move-result v6

    if-ne v6, v5, :cond_4

    :cond_3
    const-string v5, "EnterpriseContainerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Container "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is already present either in active or inactive so returning"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(II)V

    iget v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-direct {p0, v5}, Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V

    goto :goto_0

    :cond_4
    iget v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    if-ge v6, v9, :cond_9

    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getPassword()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getPassword()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_8

    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget v9, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-virtual {v8, v9}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v8

    sget-object v9, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_CREATE_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    iget v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-direct {p0, p1, v6}, Lcom/sec/knox/container/EnterpriseContainerService;->setupContainer(Lcom/sec/knox/container/EnterpriseContainerObjectParam;I)I

    move-result v0

    sget-object v6, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    if-eq v3, v6, :cond_5

    if-eq v0, v5, :cond_7

    :cond_5
    const-string v6, "EnterpriseContainerService"

    const-string v7, "Container primary mount failed"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v0, v5, :cond_6

    const/4 v0, 0x0

    :cond_6
    iget v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-direct {p0, v5, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(II)V

    iget v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-direct {p0, v5}, Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->releaseLock()V

    move v4, v5

    goto/16 :goto_1

    :cond_8
    :try_start_3
    const-string v5, "EnterpriseContainerService"

    const-string v6, "Container password: is either null or empty"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(II)V

    iget v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-direct {p0, v5}, Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V

    goto/16 :goto_0

    :cond_9
    const-string v5, "EnterpriseContainerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Container: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Max number of container reached."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(II)V

    iget v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-direct {p0, v5}, Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public enforcePasswordChange(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v1, 0x1

    const/16 v2, 0x8

    invoke-direct {p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    invoke-direct {p0, p1, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->changePasswordIfPasswordHasExpired(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.redex.proxy.activity.show_dialog"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "EnterpriseContainerService"

    const-string v3, "Password is expired. Fire a change password intent"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "containerid"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllowBluetoothMode(ILandroid/content/ComponentName;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getAllowBluetoothMode(ILandroid/content/ComponentName;)I

    move-result v0

    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllowBluetoothMode containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getAllowBrowser(ILandroid/content/ComponentName;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getAllowBrowser(ILandroid/content/ComponentName;)Z

    move-result v0

    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllowBrowser containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getAllowCamera(ILandroid/content/ComponentName;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getAllowCamera(ILandroid/content/ComponentName;)Z

    move-result v0

    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllowCamera containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getAllowDesktopSync(ILandroid/content/ComponentName;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getAllowDesktopSync(ILandroid/content/ComponentName;)Z

    move-result v0

    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllowDesktopSync containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getAllowInternetSharing(ILandroid/content/ComponentName;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getAllowInternetSharing(ILandroid/content/ComponentName;)Z

    move-result v0

    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllowInternetSharing containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getAllowIrDA(ILandroid/content/ComponentName;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getAllowIrDA(ILandroid/content/ComponentName;)Z

    move-result v0

    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllowIrDA containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getAllowPOPIMAPEmail(ILandroid/content/ComponentName;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getAllowPOPIMAPEmail(ILandroid/content/ComponentName;)Z

    move-result v0

    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllowPOPIMAPEmail containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getAllowStorageCard(ILandroid/content/ComponentName;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getAllowStorageCard(ILandroid/content/ComponentName;)Z

    move-result v0

    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllowStorageCard containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getAllowTextMessaging(ILandroid/content/ComponentName;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getAllowTextMessaging(ILandroid/content/ComponentName;)Z

    move-result v0

    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllowTextMessaging containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getAllowWifi(ILandroid/content/ComponentName;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getAllowWifi(ILandroid/content/ComponentName;)Z

    move-result v0

    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllowWifi containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getAndroidId(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/sec/knox/container/manager/StateManager;->getAndroidId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getApksFromFolder(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Apk From Folder: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method public getAppInstallationSource(ILjava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v2, 0x2

    invoke-direct {p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v2, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerPackagesInfoFromCache(I)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->getInstallationSource()I

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x4

    goto :goto_0
.end method

.method public getAppUninstallAllowed(ILjava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v2, "EnterpriseContainerService"

    const-string v3, "getAppUninstallAllowed()"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x10

    invoke-direct {p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v2, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerPackagesInfoFromCache(I)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getContainerTypeInternal(containerId) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getContainerTypeInternal(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;

    if-eqz v0, :cond_0

    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "info.getInstallationSource() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->getInstallationSource()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->getInstallationSource()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getContainerTypeInternal(I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getContainerEmailId(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v1, 0xf

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerParamFromDB(Landroid/content/Context;I)Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getEmail()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "EnterpriseContainerService"

    const-string v2, "getContainerEmailId: Email is null. Container is not yet created."

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getEmail()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getContainerFirmwareVersion(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(I)I

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerFirmwareVersion(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContainerForPackage(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getContainerForPackage() Package Name= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(I)I

    const/4 v0, -0x1

    return v0
.end method

.method public getContainerId(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(I)I

    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->gLastReqUid:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->gLastReqContainerId:I

    :goto_0
    return v0

    :cond_0
    iput p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->gLastReqUid:I

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getContainerIdFromAppId(I)I

    move-result v0

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->gLastReqContainerId:I

    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->gLastReqContainerId:I

    goto :goto_0
.end method

.method public getContainerLockOnScreenLock(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContainerLockOnScreenLock called with containerid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerLockOnScreenLock(I)Z

    move-result v0

    return v0
.end method

.method public getContainerPackages(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/sec/knox/container/manager/StateManager;->getPackageNames(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContainerSecurityInformation(I)Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v0, 0xf

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerParamFromDB(Landroid/content/Context;I)Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    move-result-object v0

    return-object v0
.end method

.method public getContainerType(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v0, 0x2b

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getContainerTypeInternal(I)I

    move-result v0

    return v0
.end method

.method public getContainerisedString(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v1, "EnterpriseContainerService"

    const-string v2, "getContainerized string"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x20

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sec_container_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContainerisedString"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "EnterpriseContainerService"

    const-string v2, "getContainerized string is null"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v4, 0x0

    if-nez p2, :cond_0

    move-object v1, v4

    :goto_0
    return-object v1

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sec_container_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x20

    invoke-direct {p0, v5, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v5, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerPackages(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v5, "EnterpriseContainerService"

    const-string v6, "getContainerizedPackageName start"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_2
    const-string v5, "EnterpriseContainerService"

    const-string v6, "getContainerizedPackageName Nothing matched"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v1, v4

    goto :goto_0

    :cond_3
    const-string v5, "EnterpriseContainerService"

    const-string v6, "getContainerizedPackageName input is null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getContainers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/EnterpriseContainerObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getContainers   --  Called + uid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3a

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    const-string v0, "EnterpriseContainerService"

    const-string v1, "getContainers   --  Called passing security"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v0}, Lcom/sec/knox/container/manager/StateManager;->getContainers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFailedPasswordAttempts(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentFailedPasswordAttempts containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method getFrameworkApks(Ljava/io/File;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".apk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Framework Apk From Folder: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method public getInstalledApplications(II)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    const-string v7, "EnterpriseContainerService"

    const-string v8, "getInstalledApplications()"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-direct {p0, v7, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v7, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerPackages(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v7, "EnterpriseContainerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in getInstalledApplications: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v6
.end method

.method public getInstalledPackages(II)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    const-string v7, "EnterpriseContainerService"

    const-string/jumbo v8, "upgradeComplete()"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-direct {p0, v7, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v7, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v7, "EnterpriseContainerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in getInstalledPackages: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v6
.end method

.method public getLaunchIntentForContainerizedApp(ILjava/lang/String;)Landroid/content/Intent;
    .locals 8

    const/4 v7, 0x0

    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLaunchIntentForContainerizedApp - containerId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pakcage name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sec_container_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.INFO"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Query Result #1 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", intentToResolve: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_1

    :cond_0
    const-string v4, "android.intent.category.INFO"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Query Result #2 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", intentToResolve: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_3

    :cond_2
    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ris is null! - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public getLockType(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v1, 0xa

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v1, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerObjectFromCache(I)Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerLockType()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getMaximumFailedPasswordsForDisable(ILandroid/content/ComponentName;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getMaximumFailedPasswordsForDisable(ILandroid/content/ComponentName;)I

    move-result v0

    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaximumFailedPasswordsForDisable containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;)I

    move-result v0

    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaximumFailedPasswordsForWipe containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getMaximumTimeToLock(ILandroid/content/ComponentName;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v2, 0x1f

    invoke-direct {p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v2, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getMaximumTimeToLock(ILandroid/content/ComponentName;)J

    move-result-wide v0

    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMaximumTimeToLock containerId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", admin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", returning = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public getMinPasswordComplexChars(ILandroid/content/ComponentName;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumNonLetter(ILandroid/content/ComponentName;)I

    move-result v0

    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordMinimumNonLetter containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getMountStatus(I)Z
    .locals 5

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-direct {p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    const-string v2, "EnterpriseContainerService"

    const-string v3, "getMountStatus() permission get it"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v2, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v0

    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentStateId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerService$4;->$SwitchMap$com$sec$knox$container$constants$CSState:[I

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v1

    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getOriginalPackageName(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->getOriginalPackageNameInternal(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalPackageNames(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v0, 0x1f

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getOriginalPackageNamesInternal(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getPackageName()Ljava/lang/String;
    .locals 9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v4

    const/4 v3, 0x0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    iget v6, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v6, v0, :cond_0

    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getContainerId UID matched"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "UID"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :cond_1
    if-eqz v3, :cond_2

    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getContainerId packageName --"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v3

    :cond_2
    const-string v6, "EnterpriseContainerService"

    const-string v7, "getContainerId packageName is null"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getPassword(ILandroid/content/ComponentName;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    const-string v0, "EnterpriseContainerService"

    const-string v1, "getPassword() returns null all the time."

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPasswordEnabledContainerLockTimeout(I)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getActiveAdminComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/16 v3, 0x1f

    invoke-direct {p0, v3, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v3, p1, v0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordEnabledContainerLockTimeout(ILandroid/content/ComponentName;)J

    move-result-wide v1

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPasswordEnabledContainerLockTimeout containerId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", admin = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", returning = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1
.end method

.method public getPasswordExpiration(ILandroid/content/ComponentName;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v2, 0x1f

    invoke-direct {p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v2, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordExpiration(ILandroid/content/ComponentName;)J

    move-result-wide v0

    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPasswordExpiration containerId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", admin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", returning = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public getPasswordExpirationTimeout(ILandroid/content/ComponentName;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v2, 0x1f

    invoke-direct {p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v2, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordExpirationTimeout(ILandroid/content/ComponentName;)J

    move-result-wide v0

    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPasswordExpirationTimeout containerId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", admin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", returning = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public getPasswordExpires(ILandroid/content/ComponentName;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v2, "EnterpriseContainerService"

    const-string v3, "getPasswordExpires()"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1f

    invoke-direct {p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    invoke-virtual {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->getPasswordExpirationTimeout(ILandroid/content/ComponentName;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    :cond_0
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPasswordExpires: containerId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", admin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", returning = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    long-to-int v2, v0

    return v2
.end method

.method public getPasswordHistory(ILandroid/content/ComponentName;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordHistory(ILandroid/content/ComponentName;)I

    move-result v0

    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordHistory containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getPasswordHistoryLength(ILandroid/content/ComponentName;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    invoke-virtual {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->getPasswordHistory(ILandroid/content/ComponentName;)I

    move-result v0

    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordHistoryLength: containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getPasswordMaximumLength(II)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMaximumLength(II)I

    move-result v0

    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordMaximumLength containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getPasswordMinimumLength(ILandroid/content/ComponentName;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumLength(ILandroid/content/ComponentName;)I

    move-result v0

    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordMinimumLength containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getPasswordMinimumLetters(ILandroid/content/ComponentName;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumLetters(ILandroid/content/ComponentName;)I

    move-result v0

    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordMinimumLetters containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getPasswordMinimumLowerCase(ILandroid/content/ComponentName;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumLowerCase(ILandroid/content/ComponentName;)I

    move-result v0

    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordMinimumLowerCase containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getPasswordMinimumNonLetter(ILandroid/content/ComponentName;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumNonLetter(ILandroid/content/ComponentName;)I

    move-result v0

    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordMinimumNonLetter containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getPasswordMinimumNumeric(ILandroid/content/ComponentName;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumNumeric(ILandroid/content/ComponentName;)I

    move-result v0

    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordMinimumNumeric containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getPasswordMinimumSymbols(ILandroid/content/ComponentName;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumSymbols(ILandroid/content/ComponentName;)I

    move-result v0

    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordMinimumSymbols: containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getPasswordMinimumUpperCase(ILandroid/content/ComponentName;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumUpperCase(ILandroid/content/ComponentName;)I

    move-result v0

    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPasswordMinimumNumeric containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getPasswordQuality(ILandroid/content/ComponentName;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordQuality(ILandroid/content/ComponentName;)I

    move-result v0

    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordQuality containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getPasswordVerifyOnlyOnModeChange(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerVerifyOnlyOnChangeMode(I)Z

    move-result v0

    return v0
.end method

.method public getProperty(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    if-nez p2, :cond_0

    const-string v0, "EnterpriseContainerService"

    const-string v1, "getProperty propertyName is null"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    invoke-static {p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPropertyOpt(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    if-nez p2, :cond_0

    const-string v0, "EnterpriseContainerService"

    const-string v1, "getProperty propertyName is null"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    invoke-static {p2, p3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimplePasswordEnabled(ILandroid/content/ComponentName;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getSimplePasswordEnabled(ILandroid/content/ComponentName;)Z

    move-result v0

    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimplePasswordEnabled containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getStatus(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    const-string v0, "EnterpriseContainerService"

    const-string v1, "getStatus(). This will be same as getContainerActivation status"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getContainerStatus(I)I

    move-result v0

    return v0
.end method

.method public inKeyguardRestrictedInputMode(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public installPackages(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;II)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v1, "EnterpriseContainerService"

    const-string v2, "installPackages()"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->isContainerPackageInstallable(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getMountStatus(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1f7

    if-eq p4, v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-direct {p0, v9, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->checkIfContainerizedApp(II)Z

    move-result v8

    const/16 v1, 0x3e8

    if-eq v9, v1, :cond_2

    if-eqz v8, :cond_2

    invoke-direct {p0, v9}, Lcom/sec/knox/container/EnterpriseContainerService;->checkIfWhitelistedApp(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p1, v9}, Lcom/sec/knox/container/EnterpriseContainerService;->isPackageInInstallWhiteList(II)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "EnterpriseContainerService"

    const-string v2, "installPackage failed. Calling containerized app does not have permission to install."

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne v8, v1, :cond_3

    invoke-static {p2, p1}, Lcom/android/server/container/util/StringUtil;->getMountedPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    :cond_3
    new-instance v0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;ILandroid/os/Handler;Ljava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;II)V

    invoke-virtual {v0}, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->start()V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isActivePasswordSufficient(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v2, 0xc

    invoke-direct {p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->checkIfMDMAdmin()Z

    move-result v0

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v2, p1, v0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->isActivePasswordSufficient(IZ)Z

    move-result v1

    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActivePasswordSufficient value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public isKeyguardLocked(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v0, 0xf

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getStatus(I)I

    move-result v0

    const/16 v1, 0x5f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyguardSecure(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v0, 0xf

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getStatus(I)I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPasswordForbidden(ILjava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "EnterpriseContainerService"

    const-string v2, "isPasswordForbidden()"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x1c

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    if-nez p2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->isPasswordForbiddenInternal(ILjava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public isPasswordVisisbilityEnabled(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->isPasswordVisisbilityEnabled(I)Z

    move-result v0

    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPasswordVisisbilityEnabled containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method killAllApps(I)Z
    .locals 9

    const/4 v5, 0x0

    const-string v6, "EnterpriseContainerService"

    const-string v7, "Killing all apps"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v6, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerPackages(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Killing Package"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Killing all apps Exception. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v5

    :cond_1
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public lockContainer(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->lockContainerInternal(I)Z

    move-result v0

    return v0
.end method

.method public onContainerStateChange(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSState;)V
    .locals 5

    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendBroadcast STATE_CHANGED("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p3}, Lcom/sec/knox/container/EnterpriseContainerService;->getPlatformContainerState(Lcom/sec/knox/container/constants/CSState;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.enterprise.container_state_changed"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "containerid"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "container_old_state"

    invoke-direct {p0, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->getPlatformContainerState(Lcom/sec/knox/container/constants/CSState;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "container_new_state"

    invoke-direct {p0, p3}, Lcom/sec/knox/container/EnterpriseContainerService;->getPlatformContainerState(Lcom/sec/knox/container/constants/CSState;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "intent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    new-instance v3, Lcom/sec/knox/container/EnterpriseContainerService$2;

    invoke-direct {v3, p0, v1}, Lcom/sec/knox/container/EnterpriseContainerService$2;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->post(Ljava/lang/Runnable;)Z

    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerService$4;->$SwitchMap$com$sec$knox$container$constants$CSState:[I

    invoke-virtual {p3}, Lcom/sec/knox/container/constants/CSState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_CREATED_NOT_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    if-ne p2, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->sendContainerSetupSuccessMessage(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public onUserInteraction(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v0

    sget-object v1, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v1}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getWakeLockCounter()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "EnterpriseContainerService"

    const-string v1, "onUserInteraction: Restaring Timeout"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->scheduleTimerOnUserInteraction(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "EnterpriseContainerService"

    const-string v1, "onUserInteraction: Password is inactive. Ignoring..."

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public preSystemReady()V
    .locals 0

    return-void
.end method

.method public reboot(ILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v4, 0x52

    const/4 v1, 0x4

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "passwordstatus"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/sec/knox/container/manager/StateManager;->updateValuesForContainer(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/sec/knox/container/manager/StateManager;->updatePasswordStatus(ILjava/lang/Integer;)Z

    :cond_0
    return-void
.end method

.method public registerEventReceiver(I[ILcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(I)I

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCallbackMgr:Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;

    invoke-static {p1, p2}, Lcom/android/server/container/util/StringUtil;->getRegisteringKey(I[I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->register([Ljava/lang/String;Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method public removeContainer(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v2, 0x1d

    invoke-direct {p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    move-result v1

    const-string v2, "android.permission.sec.ENTERPRISE_MOUNT_UNMOUNT_ENCRYPT"

    invoke-direct {p0, v1, p1, v2}, Lcom/sec/knox/container/EnterpriseContainerService;->enforcePackageManagerPermissionForContainerizedApps(IILjava/lang/String;)V

    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeContainer() ContainerId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v2, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_CREATION_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    if-ne v2, v3, :cond_1

    :cond_0
    const-string v2, "EnterpriseContainerService"

    const-string v3, "removeContainer Failed, Reason: Invalid container state."

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->removeContainerHelper(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    move-result v2

    goto :goto_0
.end method

.method public resetPassword(ILjava/lang/String;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    const-string v0, "EnterpriseContainerService"

    const-string v1, "resetPassword called. Ignoring and returning false."

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public setAllowBluetoothMode(ILandroid/content/ComponentName;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAllowBluetoothMode containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setAllowBluetoothMode(ILandroid/content/ComponentName;I)V

    :cond_0
    return-void
.end method

.method public setAllowBrowser(ILandroid/content/ComponentName;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAllowBrowser containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setAllowBrowser(ILandroid/content/ComponentName;Z)V

    :cond_0
    return-void
.end method

.method public setAllowCamera(ILandroid/content/ComponentName;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAllowCamera containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setAllowCamera(ILandroid/content/ComponentName;Z)V

    :cond_0
    return-void
.end method

.method public setAllowDesktopSync(ILandroid/content/ComponentName;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAllowDesktopSync containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setAllowDesktopSync(ILandroid/content/ComponentName;Z)V

    :cond_0
    return-void
.end method

.method public setAllowInternetSharing(ILandroid/content/ComponentName;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAllowInternetSharing containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setAllowInternetSharing(ILandroid/content/ComponentName;Z)V

    :cond_0
    return-void
.end method

.method public setAllowIrDA(ILandroid/content/ComponentName;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAllowIrDA containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setAllowIrDA(ILandroid/content/ComponentName;Z)V

    :cond_0
    return-void
.end method

.method public setAllowPOPIMAPEmail(ILandroid/content/ComponentName;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllowStorageCard containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setAllowPOPIMAPEmail(ILandroid/content/ComponentName;Z)V

    :cond_0
    return-void
.end method

.method public setAllowStorageCard(ILandroid/content/ComponentName;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAllowStorageCard containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setAllowStorageCard(ILandroid/content/ComponentName;Z)V

    :cond_0
    return-void
.end method

.method public setAllowTextMessaging(ILandroid/content/ComponentName;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAllowTextMessaging containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setAllowTextMessaging(ILandroid/content/ComponentName;Z)V

    :cond_0
    return-void
.end method

.method public setAllowWifi(ILandroid/content/ComponentName;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAllowWifi containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setAllowWifi(ILandroid/content/ComponentName;Z)V

    :cond_0
    return-void
.end method

.method public setContainerLockOnScreenLock(IZ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContainerLockOnScreenLock called with value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/manager/StateManager;->setContainerLockOnScreenLock(IZ)Z

    move-result v0

    return v0
.end method

.method public setDownloadWakeState(I)V
    .locals 3

    monitor-enter p0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :try_start_0
    monitor-exit p0

    return-void

    :pswitch_0
    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerService;->mDownloadWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    const-string v1, "EnterpriseContainerService"

    const-string v2, "---------------------->setDownloadWakeState: releasing wake lock<---------------------"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerService;->mDownloadWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v1, 0x0

    sput-object v1, Lcom/sec/knox/container/EnterpriseContainerService;->mDownloadWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerService;->mDownloadWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const-string v2, "EnterpriseContainerService2"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/sec/knox/container/EnterpriseContainerService;->mDownloadWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerService;->mDownloadWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerService;->mDownloadWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-string v1, "EnterpriseContainerService"

    const-string v2, "---------------------->setDownloadWakeState: acquiring wake lock<---------------------"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerService;->mDownloadWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setLockType(II)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v1, "EnterpriseContainerService"

    const-string/jumbo v2, "setLockType()"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "locktype"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/sec/knox/container/manager/StateManager;->updateValuesForContainer(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating lock type :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/manager/StateManager;->updateLockType(II)Z

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMaximumFailedPasswordsForDisable(ILandroid/content/ComponentName;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMaximumFailedPasswordsForDisable containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", num = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p3, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMaximumFailedPasswordsForDisable num = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Should not set negative num."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setMaximumFailedPasswordsForDisable(ILandroid/content/ComponentName;I)V

    :cond_1
    return-void
.end method

.method public setMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v0, 0x1c

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMaximumFailedPasswordsForWipe containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", num = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;I)V

    :cond_0
    return-void
.end method

.method public setMaximumTimeToLock(ILandroid/content/ComponentName;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMaximumTimeToLock containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", timeMs = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setMaximumTimeToLock(ILandroid/content/ComponentName;J)V

    :cond_0
    return-void
.end method

.method public setMinPasswordComplexChars(ILandroid/content/ComponentName;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPasswordMinimumNonLetter containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordMinimumNonLetter(ILandroid/content/ComponentName;I)V

    :cond_0
    return-void
.end method

.method public setPasswordEnabledContainerLockTimeout(IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getActiveAdminComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPasswordEnabledContainerLockTimeout containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", timeMs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordEnabledContainerLockTimeout(ILandroid/content/ComponentName;J)V

    :cond_0
    return-void
.end method

.method public setPasswordExpirationTimeout(ILandroid/content/ComponentName;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPasswordExpirationTimeout containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", timeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordExpirationTimeout(ILandroid/content/ComponentName;J)V

    :cond_0
    return-void
.end method

.method public setPasswordExpires(ILandroid/content/ComponentName;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v0, "EnterpriseContainerService"

    const-string/jumbo v1, "setPasswordExpires()"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    int-to-long v0, p3

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->setPasswordExpirationTimeout(ILandroid/content/ComponentName;J)V

    return-void
.end method

.method public setPasswordHistory(ILandroid/content/ComponentName;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPasswordHistory containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordHistory(ILandroid/content/ComponentName;I)V

    :cond_0
    return-void
.end method

.method public setPasswordHistoryLength(ILandroid/content/ComponentName;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPasswordHistoryLength.ComponentName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerService;->setPasswordHistory(ILandroid/content/ComponentName;I)V

    return-void
.end method

.method public setPasswordMinimumLength(ILandroid/content/ComponentName;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPasswordMinimumLength containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    if-ltz p3, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordMinimumLength(ILandroid/content/ComponentName;I)V

    :cond_0
    return-void
.end method

.method public setPasswordMinimumLetters(ILandroid/content/ComponentName;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPasswordMinimumLetters containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordMinimumLetters(ILandroid/content/ComponentName;I)V

    :cond_0
    return-void
.end method

.method public setPasswordMinimumLowerCase(ILandroid/content/ComponentName;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPasswordMinimumLowerCase containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordMinimumLowerCase(ILandroid/content/ComponentName;I)V

    :cond_0
    return-void
.end method

.method public setPasswordMinimumNonLetter(ILandroid/content/ComponentName;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPasswordMinimumNonLetter containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordMinimumNonLetter(ILandroid/content/ComponentName;I)V

    :cond_0
    return-void
.end method

.method public setPasswordMinimumNumeric(ILandroid/content/ComponentName;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPasswordMinimumNumeric containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordMinimumNumeric(ILandroid/content/ComponentName;I)V

    :cond_0
    return-void
.end method

.method public setPasswordMinimumSymbols(ILandroid/content/ComponentName;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPasswordMinimumSymbols: containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordMinimumSymbols(ILandroid/content/ComponentName;I)V

    :cond_0
    return-void
.end method

.method public setPasswordMinimumUpperCase(ILandroid/content/ComponentName;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPasswordMinimumUpperCase containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordMinimumUpperCase(ILandroid/content/ComponentName;I)V

    :cond_0
    return-void
.end method

.method public setPasswordQuality(ILandroid/content/ComponentName;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPasswordQuality containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", quality = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordQuality(ILandroid/content/ComponentName;I)V

    :cond_0
    return-void
.end method

.method public setPasswordVerifyOnlyOnModeChange(IZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/manager/StateManager;->setContainerVerifyOnlyOnChangeMode(IZ)Z

    move-result v0

    return v0
.end method

.method public setPasswordVisibilityEnabled(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPasswordVisibilityEnabled containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", val = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordVisibilityEnabled(IZ)V

    return-void
.end method

.method public setSimplePasswordEnabled(ILandroid/content/ComponentName;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSimplePasswordEnabled containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setSimplePasswordEnabled(ILandroid/content/ComponentName;Z)V

    :cond_0
    return-void
.end method

.method public startApp(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v4, 0x0

    const-string v5, "EnterpriseContainerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startApp() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x8

    invoke-direct {p0, v5, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    if-eqz p2, :cond_2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    invoke-direct {p0, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lcom/sec/knox/container/EnterpriseContainerService;->getContainerisedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, p1}, Lcom/sec/knox/container/manager/StateManager;->getPackageNames(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getContainerStatus(I)I

    move-result v5

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_1

    if-nez p3, :cond_0

    invoke-direct {p0, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->getActivitynameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    if-eqz p3, :cond_1

    invoke-direct {p0, p3}, Lcom/sec/knox/container/EnterpriseContainerService;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerService;->launchActivityForPackage(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :cond_1
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_2
    return v4

    :catch_0
    move-exception v0

    :try_start_1
    const-string v5, "EnterpriseContainerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not start app "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public startTimer(ILandroid/os/IBinder;)Z
    .locals 4

    const-string v1, "EnterpriseContainerService"

    const-string v2, "Start Timer"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLockHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLockHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x1

    return v1
.end method

.method public declared-synchronized startUpgrade(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v4, "EnterpriseContainerService"

    const-string/jumbo v5, "startUpgrade()"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-direct {p0, v4, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v5, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v5

    sget-object v6, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UPGRADE:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v4, p1, v5, v6}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v4

    sget-object v5, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v5}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v5

    if-eq v4, v5, :cond_0

    const-wide/16 v2, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->killAllApps(I)Z

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->killTimer(I)V

    const-string v4, "EnterpriseContainerService"

    const-string v5, "Killed all apps and timer"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    const-string v4, "EnterpriseContainerService"

    const-string/jumbo v5, "upgrade container failed. Upgrade allowed only on active/inactive upgrade/reset_pwd container state"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public stopApp(ILjava/lang/String;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v5, 0x0

    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopApp() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x8

    invoke-direct {p0, v6, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    if-eqz p2, :cond_1

    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, p1}, Lcom/sec/knox/container/manager/StateManager;->getPackageNames(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    invoke-direct {p0, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Lcom/sec/knox/container/EnterpriseContainerService;->getContainerisedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, p2, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getContainerStatus(I)I

    move-result v6

    const/16 v7, 0x5b

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, p2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v5, 0x1

    :cond_0
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_1
    return v5

    :catch_0
    move-exception v1

    :try_start_1
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ActivityNotFoundException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :catch_1
    move-exception v1

    :try_start_2
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "could not start app "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public stopTimer(ILandroid/os/IBinder;)Z
    .locals 4

    const-string v1, "EnterpriseContainerService"

    const-string v2, "Stop Timer called "

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLockHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLockHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x1

    return v1
.end method

.method public stopTimerWithTimeOut(ILandroid/os/IBinder;J)Z
    .locals 5

    const-string v2, "EnterpriseContainerService"

    const-string/jumbo v3, "stopTimerWithTimeOut called timeout"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLockHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-static {v2, v3, p1, v4, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLockHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopTimerWithTimeOut scheduling timer At"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sec/knox/container/EnterpriseContainerService$TimeoutRunnableStartAfterStop;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService$TimeoutRunnableStartAfterStop;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLockHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v2, 0x1

    return v2
.end method

.method public systemReady()V
    .locals 3

    const-string v0, "EnterpriseContainerService"

    const-string v1, "SystemReady()"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->createContainerDataDir()V

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->startContainerEventsRelayManager()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ContainerServiceHandler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->handlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/os/Looper;Lcom/sec/knox/container/EnterpriseContainerService;)V

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->doBootCompleteTaks()V

    return-void
.end method

.method public unRegisterEventReceiver(Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(I)I

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCallbackMgr:Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method public uninstallPackages(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v1, 0x0

    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uninstallPackages(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xb

    invoke-direct {p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getMountStatus(I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/sec/knox/container/EnterpriseContainerService;->checkIfUninstallWhitelistPackage(I)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x3e8

    if-eq v6, v2, :cond_2

    invoke-direct {p0, v6, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->checkIfContainerizedApp(II)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, v6}, Lcom/sec/knox/container/EnterpriseContainerService;->isPackageInInstallWhiteList(II)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "EnterpriseContainerService"

    const-string/jumbo v3, "uninstallPackage failed. Calling containerized app does not have permission to uninstall."

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;ILandroid/os/Handler;Ljava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    invoke-virtual {v0}, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->start()V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public unlockContainer(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->unlockContainerInternal(I)Z

    move-result v0

    return v0
.end method

.method public updateCallbackStatus(IIILandroid/os/Bundle;Z)V
    .locals 11

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 v5, 0x0

    :cond_0
    :goto_0
    const-string v8, "EnterpriseContainerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Callback manager:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_2

    if-eqz p5, :cond_3

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->remove(I)Ljava/util/ArrayList;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_4

    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    const-string v8, "EnterpriseContainerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Calling callback : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-interface {v0, p3, p4}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v8, "EnterpriseContainerService"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v8, p2}, Lcom/sec/knox/container/manager/StateManager;->getRequestIdForContainer(I)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_2

    :try_start_1
    const-string v8, "EnterpriseContainerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cancelCreateContainer "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/sec/knox/container/EnterpriseContainerService;->cancelCreateContainer(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_3
    return-void

    :pswitch_0
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    if-eqz p5, :cond_0

    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v8, p2}, Lcom/sec/knox/container/manager/StateManager;->getRequestIdForContainer(I)I

    move-result v7

    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v8, v7}, Lcom/sec/knox/container/manager/StateManager;->clearContainerRequestId(I)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    if-eqz p5, :cond_0

    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v8, p2}, Lcom/sec/knox/container/manager/StateManager;->getRequestIdForContainer(I)I

    move-result v7

    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v8, v7}, Lcom/sec/knox/container/manager/StateManager;->clearContainerRequestId(I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mChangeContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    goto/16 :goto_0

    :pswitch_3
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    goto/16 :goto_0

    :cond_3
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->get(I)Ljava/util/ArrayList;

    move-result-object v1

    goto/16 :goto_1

    :cond_4
    :try_start_2
    const-string v8, "EnterpriseContainerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Call Back not found for key "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method updateEventToListners(IILandroid/os/Bundle;)V
    .locals 7

    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCallbackMgr:Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;

    invoke-static {p1, p2}, Lcom/android/server/container/util/StringUtil;->getBroadcastingKey(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->beginBroadcast(Ljava/lang/String;)I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCallbackMgr:Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;

    invoke-virtual {v4, v1}, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;

    if-eqz v3, :cond_0

    :try_start_0
    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateEventToListners() - sending event:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, p2, p3}, Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;->onEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteException - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCallbackMgr:Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;

    invoke-virtual {v4, v3}, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCallbackMgr:Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;

    invoke-virtual {v4}, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->finishBroadcast()V

    return-void
.end method

.method public upgradeComplete(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v2, "EnterpriseContainerService"

    const-string/jumbo v3, "upgradeComplete()"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-direct {p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v3, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    sget-object v4, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UPGRADE_COMPLETED:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v2, p1, v3, v4}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    if-eq v2, v3, :cond_0

    const-string v2, "EnterpriseContainerService"

    const-string v3, "Upgrade completed. Saving current device firmware version."

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/knox/container/EnterpriseContainerService;->setContainerFirmwareVersionToCacheAndDB(ILjava/lang/String;)Z

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->sendContainerSetupSuccessMessage(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Upgrade failed.  Current state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v4, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public validatePasswordComplexity(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v0, 0x1f

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerService;->validatePasswordInternal(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public verifyPassword(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->verifyPasswordInternal(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;Z)V

    return-void
.end method

.method public verifyPasswordForAutoMount(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->verifyPasswordInternal(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;Z)V

    return-void
.end method

.method public wipeSDCardData(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing data for container "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    const-string v0, "ctl.start"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "containersetup:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
