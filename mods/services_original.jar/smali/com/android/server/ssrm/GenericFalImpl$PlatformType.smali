.class public final enum Lcom/android/server/ssrm/GenericFalImpl$PlatformType;
.super Ljava/lang/Enum;
.source "GenericFalImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/GenericFalImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlatformType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/ssrm/GenericFalImpl$PlatformType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

.field public static final enum ADONIS:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

.field public static final enum ADONISMINI:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

.field public static final enum ADONISPRIME:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

.field public static final enum ADONISPRIME2:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

.field public static final enum EXYNOS3:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

.field public static final enum EXYNOS4:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

.field public static final enum HELSINKY:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

.field public static final enum MSM8064:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

.field public static final enum MSM8226:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

.field public static final enum MSM8974:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

.field public static final enum NONE:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->NONE:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    new-instance v0, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    const-string v1, "MSM8064"

    invoke-direct {v0, v1, v4}, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->MSM8064:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    new-instance v0, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    const-string v1, "MSM8226"

    invoke-direct {v0, v1, v5}, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->MSM8226:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    new-instance v0, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    const-string v1, "MSM8974"

    invoke-direct {v0, v1, v6}, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->MSM8974:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    new-instance v0, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    const-string v1, "ADONIS"

    invoke-direct {v0, v1, v7}, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONIS:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    new-instance v0, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    const-string v1, "EXYNOS4"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->EXYNOS4:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    new-instance v0, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    const-string v1, "ADONISPRIME"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONISPRIME:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    new-instance v0, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    const-string v1, "ADONISPRIME2"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONISPRIME2:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    new-instance v0, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    const-string v1, "HELSINKY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->HELSINKY:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    new-instance v0, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    const-string v1, "ADONISMINI"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONISMINI:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    new-instance v0, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    const-string v1, "EXYNOS3"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->EXYNOS3:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->NONE:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->MSM8064:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->MSM8226:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->MSM8974:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONIS:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->EXYNOS4:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONISPRIME:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONISPRIME2:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->HELSINKY:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONISMINI:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->EXYNOS3:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->$VALUES:[Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/ssrm/GenericFalImpl$PlatformType;
    .locals 1

    const-class v0, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    return-object v0
.end method

.method public static values()[Lcom/android/server/ssrm/GenericFalImpl$PlatformType;
    .locals 1

    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->$VALUES:[Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    return-object v0
.end method
