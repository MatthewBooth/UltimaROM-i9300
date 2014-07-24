.class public Lcom/sec/knox/container/manager/StateManager;
.super Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;
.source "StateManager.java"


# static fields
.field private static mInstance:Lcom/sec/knox/container/manager/StateManager;


# instance fields
.field private TAG:Ljava/lang/String;

.field mClientList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/knox/container/manager/IStateManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCtx:Landroid/content/Context;

.field private mDatabase:Lcom/sec/knox/container/contentprovider/ContainerDatabase;

.field private mStateHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStateTable:[[Lcom/sec/knox/container/constants/CSState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/knox/container/manager/StateManager;->mInstance:Lcom/sec/knox/container/manager/StateManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;-><init>(Landroid/content/Context;)V

    const-string v0, "StateManager"

    iput-object v0, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    const/16 v0, 0x12

    new-array v0, v0, [[Lcom/sec/knox/container/constants/CSState;

    const/16 v1, 0x12

    new-array v1, v1, [Lcom/sec/knox/container/constants/CSState;

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_CREATION_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v9

    const/4 v2, 0x5

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    const/16 v1, 0x12

    new-array v1, v1, [Lcom/sec/knox/container/constants/CSState;

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_DOESNOT_EXISTS:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_CREATED_NOT_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v9

    const/4 v2, 0x5

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/16 v1, 0x12

    new-array v1, v1, [Lcom/sec/knox/container/constants/CSState;

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_VERIFY_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v9

    const/4 v2, 0x5

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UPGRADE_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ADMIN_PWD_RESET:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    const/16 v1, 0x12

    new-array v1, v1, [Lcom/sec/knox/container/constants/CSState;

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v9

    const/4 v2, 0x5

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    const/16 v1, 0x12

    new-array v1, v1, [Lcom/sec/knox/container/constants/CSState;

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v9

    const/4 v2, 0x5

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const/16 v2, 0x12

    new-array v2, v2, [Lcom/sec/knox/container/constants/CSState;

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v5

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v6

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v7

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v8

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xd

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xe

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_UPGRADE:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xf

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x10

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_ADMIN_PWD_RESET:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x11

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x12

    new-array v2, v2, [Lcom/sec/knox/container/constants/CSState;

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v5

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v6

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v7

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v8

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xd

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xe

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UPGRADE_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xf

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x10

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ADMIN_PWD_RESET:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x11

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x12

    new-array v2, v2, [Lcom/sec/knox/container/constants/CSState;

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v5

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v6

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v7

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v8

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xd

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xe

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UPGRADE_INPROGRESS_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xf

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x10

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ADMIN_PWD_RESET:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x11

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x12

    new-array v2, v2, [Lcom/sec/knox/container/constants/CSState;

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v5

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v6

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v7

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v8

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xd

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xe

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_UPGRADE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xf

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x10

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x11

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x12

    new-array v2, v2, [Lcom/sec/knox/container/constants/CSState;

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v5

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v6

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v7

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v8

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_DOESNOT_EXISTS:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xd

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xe

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xf

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x10

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x11

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x12

    new-array v2, v2, [Lcom/sec/knox/container/constants/CSState;

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_CREATED_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v5

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v6

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v7

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v8

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xd

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xe

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xf

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x10

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x11

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x12

    new-array v2, v2, [Lcom/sec/knox/container/constants/CSState;

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_CREATED_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v5

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v6

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v7

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v8

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_CREATED_NOT_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xd

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xe

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xf

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x10

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x11

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x12

    new-array v2, v2, [Lcom/sec/knox/container/constants/CSState;

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_UPGRADE:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v5

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v6

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v7

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v8

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UPGRADE_INPROGRESS_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UPGRADE_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xd

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xe

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UPGRADE_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xf

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_VERIFY_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x10

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x11

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x12

    new-array v2, v2, [Lcom/sec/knox/container/constants/CSState;

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_UPGRADE:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v5

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v6

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v7

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v8

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_UPGRADE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UPGRADE_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xd

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xe

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xf

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x10

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x11

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x12

    new-array v2, v2, [Lcom/sec/knox/container/constants/CSState;

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_UPGRADE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v5

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v6

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v7

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v8

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UPGRADE_INPROGRESS_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UPGRADE_INPROGRESS_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xd

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xe

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UPGRADE_INPROGRESS_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xf

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x10

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x11

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x12

    new-array v2, v2, [Lcom/sec/knox/container/constants/CSState;

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_UPGRADE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v5

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v6

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v7

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v8

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_UPGRADE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UPGRADE_INPROGRESS_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xd

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xe

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xf

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x10

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x11

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x12

    new-array v2, v2, [Lcom/sec/knox/container/constants/CSState;

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_ADMIN_PWD_RESET:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v5

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v6

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v7

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v8

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ADMIN_PWD_RESET:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ADMIN_PWD_RESET:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xd

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xe

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UPGRADE_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xf

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x10

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ADMIN_PWD_RESET:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x11

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x12

    new-array v2, v2, [Lcom/sec/knox/container/constants/CSState;

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_ADMIN_PWD_RESET:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v5

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v6

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v7

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v8

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ADMIN_PWD_RESET:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xd

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xe

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xf

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x10

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x11

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/knox/container/manager/StateManager;->mStateTable:[[Lcom/sec/knox/container/constants/CSState;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/knox/container/manager/StateManager;->mDatabase:Lcom/sec/knox/container/contentprovider/ContainerDatabase;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/knox/container/manager/StateManager;->mCtx:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/knox/container/manager/StateManager;->mStateHashMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/knox/container/manager/StateManager;->mClientList:Ljava/util/ArrayList;

    const-string v0, "ECS_Statemanager"

    const-string v1, "StateManager()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/knox/container/manager/StateManager;->mCtx:Landroid/content/Context;

    new-instance v0, Lcom/sec/knox/container/contentprovider/ContainerDatabase;

    invoke-direct {v0}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;-><init>()V

    iput-object v0, p0, Lcom/sec/knox/container/manager/StateManager;->mDatabase:Lcom/sec/knox/container/contentprovider/ContainerDatabase;

    iget-object v0, p0, Lcom/sec/knox/container/manager/StateManager;->mStateHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const-string v0, "  *******  ECS_StateManager"

    const-string v1, "HashMap is not null, clearing ................"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/knox/container/manager/StateManager;->mStateHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/knox/container/manager/StateManager;->mStateHashMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/knox/container/manager/StateManager;->mClientList:Ljava/util/ArrayList;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/knox/container/manager/StateManager;
    .locals 1

    sget-object v0, Lcom/sec/knox/container/manager/StateManager;->mInstance:Lcom/sec/knox/container/manager/StateManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/knox/container/manager/StateManager;

    invoke-direct {v0, p0}, Lcom/sec/knox/container/manager/StateManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/knox/container/manager/StateManager;->mInstance:Lcom/sec/knox/container/manager/StateManager;

    :cond_0
    sget-object v0, Lcom/sec/knox/container/manager/StateManager;->mInstance:Lcom/sec/knox/container/manager/StateManager;

    return-object v0
.end method

.method private updateStateChangeToClients(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSState;)I
    .locals 3

    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/manager/IStateManagerCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/knox/container/manager/IStateManagerCallback;->onContainerStateChange(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSState;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public declared-synchronized checkStateTransition(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/knox/container/manager/StateManager;->mStateTable:[[Lcom/sec/knox/container/constants/CSState;

    array-length v0, v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/knox/container/manager/StateManager;->mStateTable:[[Lcom/sec/knox/container/constants/CSState;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p3}, Lcom/sec/knox/container/constants/CSEvent;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/knox/container/manager/StateManager;->mStateTable:[[Lcom/sec/knox/container/constants/CSState;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p3}, Lcom/sec/knox/container/constants/CSEvent;->getId()I

    move-result v0

    if-gez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sec/knox/container/manager/StateManager;->mStateTable:[[Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {p2}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p3}, Lcom/sec/knox/container/constants/CSEvent;->getId()I

    move-result v1

    aget-object v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;
    .locals 5

    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Container Id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->getContainerStatus(IZ)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    const-string v3, " Got the currState in HASH"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Current Status in DB:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sec/knox/container/constants/CSState;->getState(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " NewState :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    const-string v3, " ************ no entry in HASH **********"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->mDatabase:Lcom/sec/knox/container/contentprovider/ContainerDatabase;

    iget-object v3, p0, Lcom/sec/knox/container/manager/StateManager;->mCtx:Landroid/content/Context;

    invoke-virtual {v2, v3, p1}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->getContainerStatus(Landroid/content/Context;I)I

    move-result v0

    const/16 v2, 0x385

    if-ne v2, v0, :cond_0

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_DOESNOT_EXISTS:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v2}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v0

    goto :goto_0
.end method

.method public registerClientCallback(Lcom/sec/knox/container/manager/IStateManagerCallback;)I
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/manager/StateManager;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Container Id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " transitState currentState Id   :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Event Id :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Lcom/sec/knox/container/constants/CSEvent;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " getting new State  of State["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], Event ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Lcom/sec/knox/container/constants/CSEvent;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] from mStateTable["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/knox/container/manager/StateManager;->mStateTable:[[Lcom/sec/knox/container/constants/CSState;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/knox/container/manager/StateManager;->mStateTable:[[Lcom/sec/knox/container/constants/CSState;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/knox/container/manager/StateManager;->mStateTable:[[Lcom/sec/knox/container/constants/CSState;

    array-length v3, v3

    if-lez v3, :cond_0

    invoke-virtual {p2}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/sec/knox/container/manager/StateManager;->mStateTable:[[Lcom/sec/knox/container/constants/CSState;

    array-length v4, v4

    if-ge v3, v4, :cond_0

    invoke-virtual {p3}, Lcom/sec/knox/container/constants/CSEvent;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/sec/knox/container/manager/StateManager;->mStateTable:[[Lcom/sec/knox/container/constants/CSState;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    array-length v4, v4

    if-ge v3, v4, :cond_0

    invoke-virtual {p2}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {p3}, Lcom/sec/knox/container/constants/CSEvent;->getId()I

    move-result v3

    if-gez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    const-string v4, "Invalid array index passed, returning"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v3

    :cond_1
    :try_start_1
    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    iget-object v3, p0, Lcom/sec/knox/container/manager/StateManager;->mStateTable:[[Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {p2}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {p3}, Lcom/sec/knox/container/constants/CSEvent;->getId()I

    move-result v4

    aget-object v1, v3, v4

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "State Transit from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ====>>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "activestatus"

    invoke-virtual {v1}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/sec/knox/container/manager/StateManager;->mDatabase:Lcom/sec/knox/container/contentprovider/ContainerDatabase;

    iget-object v4, p0, Lcom/sec/knox/container/manager/StateManager;->mCtx:Landroid/content/Context;

    sget-object v5, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5, v0, p1}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->updateValuesForContainer(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v2, p2

    move-object p2, v1

    invoke-virtual {p2}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->setContainerStatus(II)V

    invoke-direct {p0, p1, v2, p2}, Lcom/sec/knox/container/manager/StateManager;->updateStateChangeToClients(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSState;)I

    move-object v3, p2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    const-string v4, "Saving STATE into DB FAILED"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    const-string v4, "New State is CSSTATE_INVALID"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public unRegisterClientCallback(Lcom/sec/knox/container/manager/IStateManagerCallback;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
