.class public final enum Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;
.super Ljava/lang/Enum;
.source "GenericFalImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/GenericFalImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChipVendor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

.field public static final enum BROADCOMM:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

.field public static final enum INTEL:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

.field public static final enum MARVELL:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

.field public static final enum NONE:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

.field public static final enum QUALCOMM:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

.field public static final enum RENESAS:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

.field public static final enum SLSI:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

.field public static final enum TI:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->NONE:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    new-instance v0, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    const-string v1, "QUALCOMM"

    invoke-direct {v0, v1, v4}, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->QUALCOMM:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    new-instance v0, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    const-string v1, "SLSI"

    invoke-direct {v0, v1, v5}, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->SLSI:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    new-instance v0, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    const-string v1, "TI"

    invoke-direct {v0, v1, v6}, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->TI:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    new-instance v0, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    const-string v1, "INTEL"

    invoke-direct {v0, v1, v7}, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->INTEL:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    new-instance v0, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    const-string v1, "RENESAS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->RENESAS:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    new-instance v0, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    const-string v1, "MARVELL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->MARVELL:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    new-instance v0, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    const-string v1, "BROADCOMM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->BROADCOMM:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->NONE:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->QUALCOMM:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->SLSI:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->TI:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->INTEL:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->RENESAS:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->MARVELL:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->BROADCOMM:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->$VALUES:[Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;
    .locals 1

    const-class v0, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    return-object v0
.end method

.method public static values()[Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;
    .locals 1

    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->$VALUES:[Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    return-object v0
.end method
