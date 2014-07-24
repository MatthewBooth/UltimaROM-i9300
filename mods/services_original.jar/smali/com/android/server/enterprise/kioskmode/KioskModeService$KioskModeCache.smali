.class Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;
.super Lcom/android/server/enterprise/EdmCache;
.source "KioskModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/kioskmode/KioskModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KioskModeCache"
.end annotation


# instance fields
.field private mBlockedHwKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-direct {p0}, Lcom/android/server/enterprise/EdmCache;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->mBlockedHwKeys:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;Lcom/android/server/enterprise/kioskmode/KioskModeService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->mBlockedHwKeys:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public updateCache()Z
    .locals 6

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->mBlockedHwKeys:Ljava/util/Map;

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    #calls: Lcom/android/server/enterprise/kioskmode/KioskModeService;->getAllBlockedList()Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$1100(Lcom/android/server/enterprise/kioskmode/KioskModeService;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->mBlockedHwKeys:Ljava/util/Map;

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.server.enterprise.kioskmode.REFRESH_HWKEY_CACHE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    #getter for: Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$1200(Lcom/android/server/enterprise/kioskmode/KioskModeService;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_1
    const/4 v4, 0x1

    return v4
.end method
