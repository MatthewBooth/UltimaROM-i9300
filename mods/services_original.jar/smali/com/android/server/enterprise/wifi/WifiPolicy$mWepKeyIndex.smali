.class final enum Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;
.super Ljava/lang/Enum;
.source "WifiPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/wifi/WifiPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "mWepKeyIndex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

.field public static final enum wepkey1:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

.field public static final enum wepkey2:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

.field public static final enum wepkey3:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

.field public static final enum wepkey4:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    const-string/jumbo v1, "wepkey1"

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey1:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    new-instance v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    const-string/jumbo v1, "wepkey2"

    invoke-direct {v0, v1, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey2:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    new-instance v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    const-string/jumbo v1, "wepkey3"

    invoke-direct {v0, v1, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey3:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    new-instance v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    const-string/jumbo v1, "wepkey4"

    invoke-direct {v0, v1, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey4:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    sget-object v1, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey1:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey2:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey3:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey4:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->$VALUES:[Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;
    .locals 1

    const-class v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    return-object v0
.end method

.method public static values()[Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->$VALUES:[Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    return-object v0
.end method
