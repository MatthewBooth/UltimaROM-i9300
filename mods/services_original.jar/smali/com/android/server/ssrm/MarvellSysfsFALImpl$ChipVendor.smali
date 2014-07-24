.class public final enum Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;
.super Ljava/lang/Enum;
.source "MarvellSysfsFALImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/MarvellSysfsFALImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChipVendor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;

.field public static final enum MARVELL:Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;

.field public static final enum NONE:Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;->NONE:Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;

    new-instance v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;

    const-string v1, "MARVELL"

    invoke-direct {v0, v1, v3}, Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;->MARVELL:Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;

    sget-object v1, Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;->NONE:Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;->MARVELL:Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;->$VALUES:[Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;
    .locals 1

    const-class v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;

    return-object v0
.end method

.method public static values()[Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;
    .locals 1

    sget-object v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;->$VALUES:[Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;

    return-object v0
.end method
