.class public final enum Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;
.super Ljava/lang/Enum;
.source "MarvellSysfsFALImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/MarvellSysfsFALImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlatformType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;

.field public static final enum NONE:Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;

.field public static final enum PXA1088:Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;->NONE:Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;

    new-instance v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;

    const-string v1, "PXA1088"

    invoke-direct {v0, v1, v3}, Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;->PXA1088:Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;->NONE:Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;->PXA1088:Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;->$VALUES:[Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;
    .locals 1

    const-class v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;

    return-object v0
.end method

.method public static values()[Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;
    .locals 1

    sget-object v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;->$VALUES:[Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;

    return-object v0
.end method
