.class public final enum Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;
.super Ljava/lang/Enum;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsService$KeyStoreMdpp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;

.field public static final enum LOCKED:Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;

.field public static final enum UNINITIALIZED:Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;

.field public static final enum UNLOCKED:Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;

    const-string v1, "UNLOCKED"

    invoke-direct {v0, v1, v2}, Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;->UNLOCKED:Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;

    new-instance v0, Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;

    const-string v1, "LOCKED"

    invoke-direct {v0, v1, v3}, Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;->LOCKED:Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;

    new-instance v0, Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;

    const-string v1, "UNINITIALIZED"

    invoke-direct {v0, v1, v4}, Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;->UNINITIALIZED:Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;

    sget-object v1, Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;->UNLOCKED:Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;->LOCKED:Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;->UNINITIALIZED:Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;->$VALUES:[Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;
    .locals 1

    const-class v0, Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;

    return-object v0
.end method

.method public static values()[Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;
    .locals 1

    sget-object v0, Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;->$VALUES:[Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;

    return-object v0
.end method
