.class public Lcom/android/server/glancecard/GlanceCardManagerService;
.super Lcom/samsung/android/glancecard/IGlanceCardManager$Stub;
.source "GlanceCardManagerService.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field public static mBinderList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCardRecordArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/glancecard/CardRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentComponent:Landroid/content/ComponentName;

.field private usageStatsWatcher:Lcom/android/internal/app/IUsageStatsWatcher$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GlanceCardManagerService"

    sput-object v0, Lcom/android/server/glancecard/GlanceCardManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/glancecard/GlanceCardManagerService;->mBinderList:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/glancecard/IGlanceCardManager$Stub;-><init>()V

    iput-object v1, p0, Lcom/android/server/glancecard/GlanceCardManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/glancecard/GlanceCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/server/glancecard/GlanceCardManagerService;->mCurrentComponent:Landroid/content/ComponentName;

    new-instance v0, Lcom/android/server/glancecard/GlanceCardManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/glancecard/GlanceCardManagerService$1;-><init>(Lcom/android/server/glancecard/GlanceCardManagerService;)V

    iput-object v0, p0, Lcom/android/server/glancecard/GlanceCardManagerService;->usageStatsWatcher:Lcom/android/internal/app/IUsageStatsWatcher$Stub;

    sget-object v0, Lcom/android/server/glancecard/GlanceCardManagerService;->TAG:Ljava/lang/String;

    const-string v1, "GlanceCardManagerService(Context) "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/glancecard/GlanceCardManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/glancecard/GlanceCardManagerService;->initStatsWatcher()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/glancecard/IGlanceCardManager$Stub;-><init>()V

    iput-object v1, p0, Lcom/android/server/glancecard/GlanceCardManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/glancecard/GlanceCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/server/glancecard/GlanceCardManagerService;->mCurrentComponent:Landroid/content/ComponentName;

    new-instance v0, Lcom/android/server/glancecard/GlanceCardManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/glancecard/GlanceCardManagerService$1;-><init>(Lcom/android/server/glancecard/GlanceCardManagerService;)V

    iput-object v0, p0, Lcom/android/server/glancecard/GlanceCardManagerService;->usageStatsWatcher:Lcom/android/internal/app/IUsageStatsWatcher$Stub;

    sget-object v0, Lcom/android/server/glancecard/GlanceCardManagerService;->TAG:Ljava/lang/String;

    const-string v1, "GlanceCardManagerService(Context, WindowManagerService)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/glancecard/GlanceCardManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/glancecard/GlanceCardManagerService;->initStatsWatcher()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/glancecard/GlanceCardManagerService;)Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/server/glancecard/GlanceCardManagerService;->mCurrentComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/glancecard/GlanceCardManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/glancecard/GlanceCardManagerService;->checkGlanceSettingIsEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/glancecard/GlanceCardManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/glancecard/GlanceCardManagerService;Landroid/content/ComponentName;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/glancecard/GlanceCardManagerService;->sendCardsAndCommand(Landroid/content/ComponentName;II)V

    return-void
.end method

.method private checkGlanceSettingIsEnabled()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/glancecard/GlanceCardManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "glance_switch_onoff"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/glancecard/GlanceCardManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Glance Setting is not enabled. "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getCardArray(Landroid/content/ComponentName;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glancecard/GlanceCardInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/glancecard/GlanceCardManagerService;->getCardRecord(Landroid/content/ComponentName;)Lcom/android/server/glancecard/CardRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/glancecard/CardRecord;->getArray()Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCardRecord(Landroid/content/ComponentName;)Lcom/android/server/glancecard/CardRecord;
    .locals 5

    iget-object v3, p0, Lcom/android/server/glancecard/GlanceCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/android/server/glancecard/GlanceCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/glancecard/CardRecord;

    invoke-virtual {v1, p1}, Lcom/android/server/glancecard/CardRecord;->equals(Landroid/content/ComponentName;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private initStatsWatcher()V
    .locals 3

    :try_start_0
    const-string/jumbo v2, "usagestats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IUsageStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IUsageStats;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/glancecard/GlanceCardManagerService;->usageStatsWatcher:Lcom/android/internal/app/IUsageStatsWatcher$Stub;

    invoke-interface {v1, v2}, Lcom/android/internal/app/IUsageStats;->setUsageStatsWatcher(Lcom/android/internal/app/IUsageStatsWatcher;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private sendCardsAndCommand(Landroid/content/ComponentName;II)V
    .locals 7

    const v6, 0x186a0

    sget-object v2, Lcom/android/server/glancecard/GlanceCardManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendCardsAndCommand : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / command : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / Card ID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/glancecard/GlanceCardManagerService;->mCurrentComponent:Landroid/content/ComponentName;

    invoke-direct {p0}, Lcom/android/server/glancecard/GlanceCardManagerService;->checkGlanceSettingIsEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.app.lotus"

    const-string v3, "com.samsung.android.app.lotus.GlanceTrayService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "component"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/server/glancecard/GlanceCardManagerService;->getCardArray(Landroid/content/ComponentName;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1

    const/4 v2, 0x6

    if-eq p2, v2, :cond_1

    const/4 v2, 0x7

    if-eq p2, v2, :cond_1

    sget-object v2, Lcom/android/server/glancecard/GlanceCardManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendCardsAndCommand : cards are exist - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "cards"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_1
    const v2, 0x7fffffff

    if-eq p3, v2, :cond_2

    const-string v2, "cardId"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    const-string v2, "command"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v2, Lcom/android/server/glancecard/GlanceCardManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendCardsAndCommand(). User Handle : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    div-int/2addr v5, v6

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/glancecard/GlanceCardManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    div-int/2addr v4, v6

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto/16 :goto_0
.end method


# virtual methods
.method public addAllCard(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/glancecard/GlanceCardInfo;",
            ">;)V"
        }
    .end annotation

    sget-object v3, Lcom/android/server/glancecard/GlanceCardManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addAllCard : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    sget-object v3, Lcom/android/server/glancecard/GlanceCardManagerService;->TAG:Ljava/lang/String;

    const-string v4, "addAllCard : empty"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/glancecard/GlanceCardManagerService;->getCardRecord(Landroid/content/ComponentName;)Lcom/android/server/glancecard/CardRecord;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/server/glancecard/CardRecord;

    invoke-direct {v1, p1}, Lcom/android/server/glancecard/CardRecord;-><init>(Landroid/content/ComponentName;)V

    iget-object v3, p0, Lcom/android/server/glancecard/GlanceCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glancecard/GlanceCardInfo;

    sget-object v3, Lcom/android/server/glancecard/GlanceCardManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addAllCard - each CardIDs : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCardId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v0}, Lcom/android/server/glancecard/CardRecord;->addCard(Lcom/samsung/android/glancecard/GlanceCardInfo;)V

    goto :goto_2

    :cond_2
    sget-object v3, Lcom/android/server/glancecard/GlanceCardManagerService;->TAG:Ljava/lang/String;

    const-string v4, "addAllCard : clear old cards"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/server/glancecard/CardRecord;->clear()V

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    const v4, 0x7fffffff

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/glancecard/GlanceCardManagerService;->sendCardsAndCommand(Landroid/content/ComponentName;II)V

    goto :goto_0
.end method

.method public addCard(Landroid/content/ComponentName;Lcom/samsung/android/glancecard/GlanceCardInfo;)V
    .locals 4

    sget-object v1, Lcom/android/server/glancecard/GlanceCardManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addCard : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    sget-object v1, Lcom/android/server/glancecard/GlanceCardManagerService;->TAG:Ljava/lang/String;

    const-string v2, "addCard : empty"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/glancecard/GlanceCardManagerService;->getCardRecord(Landroid/content/ComponentName;)Lcom/android/server/glancecard/CardRecord;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/server/glancecard/CardRecord;

    invoke-direct {v0, p1}, Lcom/android/server/glancecard/CardRecord;-><init>(Landroid/content/ComponentName;)V

    iget-object v1, p0, Lcom/android/server/glancecard/GlanceCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget v1, p2, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCardId:I

    invoke-virtual {v0, v1}, Lcom/android/server/glancecard/CardRecord;->removeCard(I)V

    invoke-virtual {v0, p2}, Lcom/android/server/glancecard/CardRecord;->addCard(Lcom/samsung/android/glancecard/GlanceCardInfo;)V

    const/4 v1, 0x1

    iget v2, p2, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCardId:I

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/glancecard/GlanceCardManagerService;->sendCardsAndCommand(Landroid/content/ComponentName;II)V

    goto :goto_0
.end method

.method public close(Landroid/content/ComponentName;)V
    .locals 3

    sget-object v0, Lcom/android/server/glancecard/GlanceCardManagerService;->mBinderList:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/glancecard/GlanceCardManagerService;->mBinderList:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/android/server/glancecard/GlanceCardManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close current binder size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/glancecard/GlanceCardManagerService;->mBinderList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    const v1, 0x7fffffff

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/glancecard/GlanceCardManagerService;->sendCardsAndCommand(Landroid/content/ComponentName;II)V

    return-void
.end method

.method public getAllCardIds(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v4, Lcom/android/server/glancecard/GlanceCardManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAllCardIds : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/server/glancecard/GlanceCardManagerService;->getCardRecord(Landroid/content/ComponentName;)Lcom/android/server/glancecard/CardRecord;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/glancecard/CardRecord;->getArray()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/android/server/glancecard/CardRecord;->getArray()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/glancecard/GlanceCardInfo;

    iget v4, v4, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCardId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getListenerAsBinder(Landroid/content/ComponentName;)Landroid/os/IBinder;
    .locals 4

    sget-object v1, Lcom/android/server/glancecard/GlanceCardManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getListener : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/glancecard/GlanceCardManagerService;->mBinderList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/glancecard/GlanceCardManagerService;->mBinderList:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/glancecard/GlanceCardManagerService;->mBinderList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/glancecard/GlanceCardManagerService;->mBinderList:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    sget-object v1, Lcom/android/server/glancecard/GlanceCardManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getListenerAsBinder : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/android/server/glancecard/GlanceCardManagerService;->TAG:Ljava/lang/String;

    const-string v2, "getListenerAsBinder : null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hide(Landroid/content/ComponentName;)V
    .locals 2

    const/4 v0, 0x6

    const v1, 0x7fffffff

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/glancecard/GlanceCardManagerService;->sendCardsAndCommand(Landroid/content/ComponentName;II)V

    return-void
.end method

.method public removeAllCard(Landroid/content/ComponentName;)V
    .locals 5

    sget-object v2, Lcom/android/server/glancecard/GlanceCardManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeAllCard : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/glancecard/GlanceCardManagerService;->getCardRecord(Landroid/content/ComponentName;)Lcom/android/server/glancecard/CardRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/glancecard/CardRecord;->clear()V

    const/4 v1, 0x1

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v2, 0x3

    const v3, 0x7fffffff

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/glancecard/GlanceCardManagerService;->sendCardsAndCommand(Landroid/content/ComponentName;II)V

    :cond_1
    return-void
.end method

.method public removeCard(Landroid/content/ComponentName;I)V
    .locals 4

    sget-object v1, Lcom/android/server/glancecard/GlanceCardManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeCard : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/glancecard/GlanceCardManagerService;->sendCardsAndCommand(Landroid/content/ComponentName;II)V

    invoke-direct {p0, p1}, Lcom/android/server/glancecard/GlanceCardManagerService;->getCardRecord(Landroid/content/ComponentName;)Lcom/android/server/glancecard/CardRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/server/glancecard/CardRecord;->removeCard(I)V

    :cond_0
    return-void
.end method

.method public removeCardFromTray(Landroid/content/ComponentName;I)V
    .locals 4

    sget-object v1, Lcom/android/server/glancecard/GlanceCardManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeCardFromTray : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/glancecard/GlanceCardManagerService;->getCardRecord(Landroid/content/ComponentName;)Lcom/android/server/glancecard/CardRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/server/glancecard/CardRecord;->removeCard(I)V

    :cond_0
    return-void
.end method

.method public removeGroup(Landroid/content/ComponentName;I)V
    .locals 3

    sget-object v0, Lcom/android/server/glancecard/GlanceCardManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeCard : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / This concept is deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setListenerAsBinder(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    sget-object v0, Lcom/android/server/glancecard/GlanceCardManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setListenerAsBinder : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/glancecard/GlanceCardManagerService;->mBinderList:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/glancecard/GlanceCardManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setListenerAsBinder : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/glancecard/GlanceCardManagerService;->mBinderList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public show(Landroid/content/ComponentName;)V
    .locals 2

    const/4 v0, 0x5

    const v1, 0x7fffffff

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/glancecard/GlanceCardManagerService;->sendCardsAndCommand(Landroid/content/ComponentName;II)V

    return-void
.end method

.method public updateCard(Landroid/content/ComponentName;Lcom/samsung/android/glancecard/GlanceCardInfo;)V
    .locals 4

    sget-object v1, Lcom/android/server/glancecard/GlanceCardManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCard : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    sget-object v1, Lcom/android/server/glancecard/GlanceCardManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateCard : empty"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/glancecard/GlanceCardManagerService;->getCardRecord(Landroid/content/ComponentName;)Lcom/android/server/glancecard/CardRecord;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/server/glancecard/CardRecord;

    invoke-direct {v0, p1}, Lcom/android/server/glancecard/CardRecord;-><init>(Landroid/content/ComponentName;)V

    iget-object v1, p0, Lcom/android/server/glancecard/GlanceCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/server/glancecard/GlanceCardManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCard update CardIDs : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCardId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p2, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCardId:I

    invoke-virtual {v0, v1}, Lcom/android/server/glancecard/CardRecord;->removeCard(I)V

    invoke-virtual {v0, p2}, Lcom/android/server/glancecard/CardRecord;->addCard(Lcom/samsung/android/glancecard/GlanceCardInfo;)V

    const/4 v1, 0x2

    const v2, 0x7fffffff

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/glancecard/GlanceCardManagerService;->sendCardsAndCommand(Landroid/content/ComponentName;II)V

    goto :goto_0
.end method

.method public updateCards(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/glancecard/GlanceCardInfo;",
            ">;)V"
        }
    .end annotation

    sget-object v3, Lcom/android/server/glancecard/GlanceCardManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateAllCard : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    sget-object v3, Lcom/android/server/glancecard/GlanceCardManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateAllCard : empty"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/glancecard/GlanceCardManagerService;->getCardRecord(Landroid/content/ComponentName;)Lcom/android/server/glancecard/CardRecord;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/server/glancecard/CardRecord;

    invoke-direct {v1, p1}, Lcom/android/server/glancecard/CardRecord;-><init>(Landroid/content/ComponentName;)V

    iget-object v3, p0, Lcom/android/server/glancecard/GlanceCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glancecard/GlanceCardInfo;

    sget-object v3, Lcom/android/server/glancecard/GlanceCardManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateAllCard update each CardIDs : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCardId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCardId:I

    invoke-virtual {v1, v3}, Lcom/android/server/glancecard/CardRecord;->removeCard(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/glancecard/CardRecord;->addCard(Lcom/samsung/android/glancecard/GlanceCardInfo;)V

    goto :goto_1

    :cond_3
    const/4 v3, 0x2

    const v4, 0x7fffffff

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/glancecard/GlanceCardManagerService;->sendCardsAndCommand(Landroid/content/ComponentName;II)V

    goto :goto_0
.end method
