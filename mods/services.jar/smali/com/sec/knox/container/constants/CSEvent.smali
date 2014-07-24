.class public final enum Lcom/sec/knox/container/constants/CSEvent;
.super Ljava/lang/Enum;
.source "CSEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/knox/container/constants/CSEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/knox/container/constants/CSEvent;

.field public static final enum CSEVENT_ACTIVATE_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

.field public static final enum CSEVENT_ADMIN_RESET_PASSWORD:Lcom/sec/knox/container/constants/CSEvent;

.field public static final enum CSEVENT_CHANGE_PWD:Lcom/sec/knox/container/constants/CSEvent;

.field public static final enum CSEVENT_CHANGE_PWD_ADMIN:Lcom/sec/knox/container/constants/CSEvent;

.field public static final enum CSEVENT_CREATE_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

.field public static final enum CSEVENT_CREATION_FAILURE:Lcom/sec/knox/container/constants/CSEvent;

.field public static final enum CSEVENT_CREATION_SUCCESS:Lcom/sec/knox/container/constants/CSEvent;

.field public static final enum CSEVENT_HIBERNATE_UNMOUNT_TIMEOUT:Lcom/sec/knox/container/constants/CSEvent;

.field public static final enum CSEVENT_INVALID:Lcom/sec/knox/container/constants/CSEvent;

.field public static final enum CSEVENT_LOCK_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

.field public static final enum CSEVENT_REBOOT:Lcom/sec/knox/container/constants/CSEvent;

.field public static final enum CSEVENT_RESET_PWD_TIMEOUT:Lcom/sec/knox/container/constants/CSEvent;

.field public static final enum CSEVENT_UNINSTALL_COMPLETED:Lcom/sec/knox/container/constants/CSEvent;

.field public static final enum CSEVENT_UNINSTALL_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

.field public static final enum CSEVENT_UNLOCK_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

.field public static final enum CSEVENT_UPGRADE:Lcom/sec/knox/container/constants/CSEvent;

.field public static final enum CSEVENT_UPGRADE_COMPLETED:Lcom/sec/knox/container/constants/CSEvent;

.field public static final enum CSEVENT_VERIFY_PWD_SUCCESS:Lcom/sec/knox/container/constants/CSEvent;

.field public static final enum CSEVENT_VERIFY_PWD_TIMEOUT:Lcom/sec/knox/container/constants/CSEvent;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/sec/knox/container/constants/CSEvent;

    const-string v1, "CSEVENT_REBOOT"

    invoke-direct {v0, v1, v4, v4}, Lcom/sec/knox/container/constants/CSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_REBOOT:Lcom/sec/knox/container/constants/CSEvent;

    new-instance v0, Lcom/sec/knox/container/constants/CSEvent;

    const-string v1, "CSEVENT_CREATE_CONTAINER"

    invoke-direct {v0, v1, v5, v5}, Lcom/sec/knox/container/constants/CSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_CREATE_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

    new-instance v0, Lcom/sec/knox/container/constants/CSEvent;

    const-string v1, "CSEVENT_CREATION_FAILURE"

    invoke-direct {v0, v1, v6, v6}, Lcom/sec/knox/container/constants/CSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_CREATION_FAILURE:Lcom/sec/knox/container/constants/CSEvent;

    new-instance v0, Lcom/sec/knox/container/constants/CSEvent;

    const-string v1, "CSEVENT_CREATION_SUCCESS"

    invoke-direct {v0, v1, v7, v7}, Lcom/sec/knox/container/constants/CSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_CREATION_SUCCESS:Lcom/sec/knox/container/constants/CSEvent;

    new-instance v0, Lcom/sec/knox/container/constants/CSEvent;

    const-string v1, "CSEVENT_VERIFY_PWD_TIMEOUT"

    invoke-direct {v0, v1, v8, v8}, Lcom/sec/knox/container/constants/CSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_VERIFY_PWD_TIMEOUT:Lcom/sec/knox/container/constants/CSEvent;

    new-instance v0, Lcom/sec/knox/container/constants/CSEvent;

    const-string v1, "CSEVENT_LOCK_CONTAINER"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/constants/CSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_LOCK_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

    new-instance v0, Lcom/sec/knox/container/constants/CSEvent;

    const-string v1, "CSEVENT_UNLOCK_CONTAINER"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/constants/CSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UNLOCK_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

    new-instance v0, Lcom/sec/knox/container/constants/CSEvent;

    const-string v1, "CSEVENT_RESET_PWD_TIMEOUT"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/constants/CSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_RESET_PWD_TIMEOUT:Lcom/sec/knox/container/constants/CSEvent;

    new-instance v0, Lcom/sec/knox/container/constants/CSEvent;

    const-string v1, "CSEVENT_CHANGE_PWD"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/constants/CSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_CHANGE_PWD:Lcom/sec/knox/container/constants/CSEvent;

    new-instance v0, Lcom/sec/knox/container/constants/CSEvent;

    const-string v1, "CSEVENT_VERIFY_PWD_SUCCESS"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/constants/CSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_VERIFY_PWD_SUCCESS:Lcom/sec/knox/container/constants/CSEvent;

    new-instance v0, Lcom/sec/knox/container/constants/CSEvent;

    const-string v1, "CSEVENT_CHANGE_PWD_ADMIN"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/constants/CSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_CHANGE_PWD_ADMIN:Lcom/sec/knox/container/constants/CSEvent;

    new-instance v0, Lcom/sec/knox/container/constants/CSEvent;

    const-string v1, "CSEVENT_UNINSTALL_COMPLETED"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/constants/CSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UNINSTALL_COMPLETED:Lcom/sec/knox/container/constants/CSEvent;

    new-instance v0, Lcom/sec/knox/container/constants/CSEvent;

    const-string v1, "CSEVENT_UNINSTALL_CONTAINER"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/constants/CSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UNINSTALL_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

    new-instance v0, Lcom/sec/knox/container/constants/CSEvent;

    const-string v1, "CSEVENT_ACTIVATE_CONTAINER"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/constants/CSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_ACTIVATE_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

    new-instance v0, Lcom/sec/knox/container/constants/CSEvent;

    const-string v1, "CSEVENT_UPGRADE"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/constants/CSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UPGRADE:Lcom/sec/knox/container/constants/CSEvent;

    new-instance v0, Lcom/sec/knox/container/constants/CSEvent;

    const-string v1, "CSEVENT_UPGRADE_COMPLETED"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/constants/CSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UPGRADE_COMPLETED:Lcom/sec/knox/container/constants/CSEvent;

    new-instance v0, Lcom/sec/knox/container/constants/CSEvent;

    const-string v1, "CSEVENT_ADMIN_RESET_PASSWORD"

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/constants/CSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_ADMIN_RESET_PASSWORD:Lcom/sec/knox/container/constants/CSEvent;

    new-instance v0, Lcom/sec/knox/container/constants/CSEvent;

    const-string v1, "CSEVENT_HIBERNATE_UNMOUNT_TIMEOUT"

    const/16 v2, 0x11

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/constants/CSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_HIBERNATE_UNMOUNT_TIMEOUT:Lcom/sec/knox/container/constants/CSEvent;

    new-instance v0, Lcom/sec/knox/container/constants/CSEvent;

    const-string v1, "CSEVENT_INVALID"

    const/16 v2, 0x12

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/constants/CSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_INVALID:Lcom/sec/knox/container/constants/CSEvent;

    const/16 v0, 0x13

    new-array v0, v0, [Lcom/sec/knox/container/constants/CSEvent;

    sget-object v1, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_REBOOT:Lcom/sec/knox/container/constants/CSEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_CREATE_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_CREATION_FAILURE:Lcom/sec/knox/container/constants/CSEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_CREATION_SUCCESS:Lcom/sec/knox/container/constants/CSEvent;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_VERIFY_PWD_TIMEOUT:Lcom/sec/knox/container/constants/CSEvent;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_LOCK_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UNLOCK_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_RESET_PWD_TIMEOUT:Lcom/sec/knox/container/constants/CSEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_CHANGE_PWD:Lcom/sec/knox/container/constants/CSEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_VERIFY_PWD_SUCCESS:Lcom/sec/knox/container/constants/CSEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_CHANGE_PWD_ADMIN:Lcom/sec/knox/container/constants/CSEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UNINSTALL_COMPLETED:Lcom/sec/knox/container/constants/CSEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UNINSTALL_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_ACTIVATE_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UPGRADE:Lcom/sec/knox/container/constants/CSEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UPGRADE_COMPLETED:Lcom/sec/knox/container/constants/CSEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_ADMIN_RESET_PASSWORD:Lcom/sec/knox/container/constants/CSEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_HIBERNATE_UNMOUNT_TIMEOUT:Lcom/sec/knox/container/constants/CSEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_INVALID:Lcom/sec/knox/container/constants/CSEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/knox/container/constants/CSEvent;->$VALUES:[Lcom/sec/knox/container/constants/CSEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/knox/container/constants/CSEvent;->id:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sec/knox/container/constants/CSEvent;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/knox/container/constants/CSEvent;
    .locals 1

    const-class v0, Lcom/sec/knox/container/constants/CSEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/constants/CSEvent;

    return-object v0
.end method

.method public static values()[Lcom/sec/knox/container/constants/CSEvent;
    .locals 1

    sget-object v0, Lcom/sec/knox/container/constants/CSEvent;->$VALUES:[Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/knox/container/constants/CSEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lcom/sec/knox/container/constants/CSEvent;->id:I

    return v0
.end method
