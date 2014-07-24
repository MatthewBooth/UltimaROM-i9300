.class final enum Lcom/android/server/ssrm/QcFalImpl$PlatformType;
.super Ljava/lang/Enum;
.source "QcFalImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/QcFalImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PlatformType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/ssrm/QcFalImpl$PlatformType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/ssrm/QcFalImpl$PlatformType;

.field public static final enum MSM8064:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

.field public static final enum MSM8226:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

.field public static final enum MSM8610:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

.field public static final enum MSM8974:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

.field public static final enum NONE:Lcom/android/server/ssrm/QcFalImpl$PlatformType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/server/ssrm/QcFalImpl$PlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ssrm/QcFalImpl$PlatformType;->NONE:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    new-instance v0, Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    const-string v1, "MSM8064"

    invoke-direct {v0, v1, v3}, Lcom/android/server/ssrm/QcFalImpl$PlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ssrm/QcFalImpl$PlatformType;->MSM8064:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    new-instance v0, Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    const-string v1, "MSM8226"

    invoke-direct {v0, v1, v4}, Lcom/android/server/ssrm/QcFalImpl$PlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ssrm/QcFalImpl$PlatformType;->MSM8226:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    new-instance v0, Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    const-string v1, "MSM8974"

    invoke-direct {v0, v1, v5}, Lcom/android/server/ssrm/QcFalImpl$PlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ssrm/QcFalImpl$PlatformType;->MSM8974:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    new-instance v0, Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    const-string v1, "MSM8610"

    invoke-direct {v0, v1, v6}, Lcom/android/server/ssrm/QcFalImpl$PlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ssrm/QcFalImpl$PlatformType;->MSM8610:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/QcFalImpl$PlatformType;->NONE:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/ssrm/QcFalImpl$PlatformType;->MSM8064:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/ssrm/QcFalImpl$PlatformType;->MSM8226:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/ssrm/QcFalImpl$PlatformType;->MSM8974:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/ssrm/QcFalImpl$PlatformType;->MSM8610:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/ssrm/QcFalImpl$PlatformType;->$VALUES:[Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/ssrm/QcFalImpl$PlatformType;
    .locals 1

    const-class v0, Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    return-object v0
.end method

.method public static values()[Lcom/android/server/ssrm/QcFalImpl$PlatformType;
    .locals 1

    sget-object v0, Lcom/android/server/ssrm/QcFalImpl$PlatformType;->$VALUES:[Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    return-object v0
.end method
