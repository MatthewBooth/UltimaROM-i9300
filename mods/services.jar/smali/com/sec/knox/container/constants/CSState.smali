.class public final enum Lcom/sec/knox/container/constants/CSState;
.super Ljava/lang/Enum;
.source "CSState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/knox/container/constants/CSState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/knox/container/constants/CSState;

.field public static final enum CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

.field public static final enum CSSTATE_ADMIN_PWD_RESET:Lcom/sec/knox/container/constants/CSState;

.field public static final enum CSSTATE_CREATED_INACTIVE:Lcom/sec/knox/container/constants/CSState;

.field public static final enum CSSTATE_CREATED_NOT_ACTIVE:Lcom/sec/knox/container/constants/CSState;

.field public static final enum CSSTATE_CREATION_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

.field public static final enum CSSTATE_DOESNOT_EXISTS:Lcom/sec/knox/container/constants/CSState;

.field public static final enum CSSTATE_INACTIVE:Lcom/sec/knox/container/constants/CSState;

.field public static final enum CSSTATE_INACTIVE_ADMIN_PWD_RESET:Lcom/sec/knox/container/constants/CSState;

.field public static final enum CSSTATE_INACTIVE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

.field public static final enum CSSTATE_INACTIVE_UPGRADE:Lcom/sec/knox/container/constants/CSState;

.field public static final enum CSSTATE_INACTIVE_UPGRADE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

.field public static final enum CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

.field public static final enum CSSTATE_LOCK:Lcom/sec/knox/container/constants/CSState;

.field public static final enum CSSTATE_LOCK_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

.field public static final enum CSSTATE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

.field public static final enum CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

.field public static final enum CSSTATE_UPGRADE_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

.field public static final enum CSSTATE_UPGRADE_INPROGRESS_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

.field public static final enum CSSTATE_VERIFY_PWD:Lcom/sec/knox/container/constants/CSState;


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

    new-instance v0, Lcom/sec/knox/container/constants/CSState;

    const-string v1, "CSSTATE_DOESNOT_EXISTS"

    invoke-direct {v0, v1, v4, v4}, Lcom/sec/knox/container/constants/CSState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_DOESNOT_EXISTS:Lcom/sec/knox/container/constants/CSState;

    new-instance v0, Lcom/sec/knox/container/constants/CSState;

    const-string v1, "CSSTATE_CREATION_INPROGRESS"

    invoke-direct {v0, v1, v5, v5}, Lcom/sec/knox/container/constants/CSState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_CREATION_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    new-instance v0, Lcom/sec/knox/container/constants/CSState;

    const-string v1, "CSSTATE_ACTIVE"

    invoke-direct {v0, v1, v6, v6}, Lcom/sec/knox/container/constants/CSState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    new-instance v0, Lcom/sec/knox/container/constants/CSState;

    const-string v1, "CSSTATE_LOCK"

    invoke-direct {v0, v1, v7, v7}, Lcom/sec/knox/container/constants/CSState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK:Lcom/sec/knox/container/constants/CSState;

    new-instance v0, Lcom/sec/knox/container/constants/CSState;

    const-string v1, "CSSTATE_LOCK_RESET_PWD"

    invoke-direct {v0, v1, v8, v8}, Lcom/sec/knox/container/constants/CSState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    new-instance v0, Lcom/sec/knox/container/constants/CSState;

    const-string v1, "CSSTATE_INACTIVE"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/constants/CSState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    new-instance v0, Lcom/sec/knox/container/constants/CSState;

    const-string v1, "CSSTATE_VERIFY_PWD"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/constants/CSState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_VERIFY_PWD:Lcom/sec/knox/container/constants/CSState;

    new-instance v0, Lcom/sec/knox/container/constants/CSState;

    const-string v1, "CSSTATE_RESET_PWD"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/constants/CSState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    new-instance v0, Lcom/sec/knox/container/constants/CSState;

    const-string v1, "CSSTATE_INACTIVE_RESET_PWD"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/constants/CSState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    new-instance v0, Lcom/sec/knox/container/constants/CSState;

    const-string v1, "CSSTATE_UNINSTALL_INPROGRESS"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/constants/CSState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    new-instance v0, Lcom/sec/knox/container/constants/CSState;

    const-string v1, "CSSTATE_CREATED_NOT_ACTIVE"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/constants/CSState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_CREATED_NOT_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    new-instance v0, Lcom/sec/knox/container/constants/CSState;

    const-string v1, "CSSTATE_CREATED_INACTIVE"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/constants/CSState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_CREATED_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    new-instance v0, Lcom/sec/knox/container/constants/CSState;

    const-string v1, "CSSTATE_UPGRADE_INPROGRESS"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/constants/CSState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UPGRADE_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    new-instance v0, Lcom/sec/knox/container/constants/CSState;

    const-string v1, "CSSTATE_INACTIVE_UPGRADE"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/constants/CSState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_UPGRADE:Lcom/sec/knox/container/constants/CSState;

    new-instance v0, Lcom/sec/knox/container/constants/CSState;

    const-string v1, "CSSTATE_UPGRADE_INPROGRESS_RESET_PWD"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/constants/CSState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UPGRADE_INPROGRESS_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    new-instance v0, Lcom/sec/knox/container/constants/CSState;

    const-string v1, "CSSTATE_INACTIVE_UPGRADE_RESET_PWD"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/constants/CSState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_UPGRADE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    new-instance v0, Lcom/sec/knox/container/constants/CSState;

    const-string v1, "CSSTATE_ADMIN_PWD_RESET"

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/constants/CSState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ADMIN_PWD_RESET:Lcom/sec/knox/container/constants/CSState;

    new-instance v0, Lcom/sec/knox/container/constants/CSState;

    const-string v1, "CSSTATE_INACTIVE_ADMIN_PWD_RESET"

    const/16 v2, 0x11

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/constants/CSState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_ADMIN_PWD_RESET:Lcom/sec/knox/container/constants/CSState;

    new-instance v0, Lcom/sec/knox/container/constants/CSState;

    const-string v1, "CSSTATE_INVALID"

    const/16 v2, 0x12

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/constants/CSState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    const/16 v0, 0x13

    new-array v0, v0, [Lcom/sec/knox/container/constants/CSState;

    sget-object v1, Lcom/sec/knox/container/constants/CSState;->CSSTATE_DOESNOT_EXISTS:Lcom/sec/knox/container/constants/CSState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/knox/container/constants/CSState;->CSSTATE_CREATION_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK:Lcom/sec/knox/container/constants/CSState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_VERIFY_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_CREATED_NOT_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_CREATED_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UPGRADE_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_UPGRADE:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UPGRADE_INPROGRESS_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_UPGRADE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ADMIN_PWD_RESET:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_ADMIN_PWD_RESET:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->$VALUES:[Lcom/sec/knox/container/constants/CSState;

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

    iput v0, p0, Lcom/sec/knox/container/constants/CSState;->id:I

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

    iput p3, p0, Lcom/sec/knox/container/constants/CSState;->id:I

    return-void
.end method

.method public static getState(I)Lcom/sec/knox/container/constants/CSState;
    .locals 1

    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_DOESNOT_EXISTS:Lcom/sec/knox/container/constants/CSState;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_CREATION_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK:Lcom/sec/knox/container/constants/CSState;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_VERIFY_PWD:Lcom/sec/knox/container/constants/CSState;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    goto :goto_0

    :pswitch_9
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    goto :goto_0

    :pswitch_a
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    goto :goto_0

    :pswitch_b
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_CREATED_NOT_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    goto :goto_0

    :pswitch_c
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_CREATED_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    goto :goto_0

    :pswitch_d
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UPGRADE_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    goto :goto_0

    :pswitch_e
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_UPGRADE:Lcom/sec/knox/container/constants/CSState;

    goto :goto_0

    :pswitch_f
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UPGRADE_INPROGRESS_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    goto :goto_0

    :pswitch_10
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_UPGRADE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    goto :goto_0

    :pswitch_11
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ADMIN_PWD_RESET:Lcom/sec/knox/container/constants/CSState;

    goto :goto_0

    :pswitch_12
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_ADMIN_PWD_RESET:Lcom/sec/knox/container/constants/CSState;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/knox/container/constants/CSState;
    .locals 1

    const-class v0, Lcom/sec/knox/container/constants/CSState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/constants/CSState;

    return-object v0
.end method

.method public static values()[Lcom/sec/knox/container/constants/CSState;
    .locals 1

    sget-object v0, Lcom/sec/knox/container/constants/CSState;->$VALUES:[Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/knox/container/constants/CSState;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lcom/sec/knox/container/constants/CSState;->id:I

    return v0
.end method
