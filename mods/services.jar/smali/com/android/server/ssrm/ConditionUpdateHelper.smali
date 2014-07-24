.class public Lcom/android/server/ssrm/ConditionUpdateHelper;
.super Ljava/lang/Object;
.source "ConditionUpdateHelper.java"


# static fields
.field static final TAG:Ljava/lang/String; = "SSRMv2:ConditionUpdateHelper"

.field static mHelperList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/ssrm/ConditionUpdateHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCondition:Lcom/android/server/ssrm/settings/Condition;

.field mIsAppInList:Z

.field mIsEnable:Z

.field mPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSsrmStatusValue:Z

.field mStatusList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mHelperList:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mIsEnable:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mCondition:Lcom/android/server/ssrm/settings/Condition;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mPackageList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mStatusList:Ljava/util/List;

    iput-boolean p2, p0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mIsEnable:Z

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    invoke-virtual {v0, p1}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mCondition:Lcom/android/server/ssrm/settings/Condition;

    :cond_0
    return-void
.end method

.method static getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;
    .locals 2

    new-instance v0, Lcom/android/server/ssrm/ConditionUpdateHelper;

    invoke-direct {v0, p0, p1}, Lcom/android/server/ssrm/ConditionUpdateHelper;-><init>(Ljava/lang/String;Z)V

    sget-object v1, Lcom/android/server/ssrm/ConditionUpdateHelper;->mHelperList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static onForegroundActivitiesChanged(Ljava/lang/String;)V
    .locals 3

    sget-object v2, Lcom/android/server/ssrm/ConditionUpdateHelper;->mHelperList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/ConditionUpdateHelper;

    iget-boolean v2, v0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mIsEnable:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/server/ssrm/ConditionUpdateHelper;->onForegroundActivitiesChangedInternal(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static onSsrmStatusChanged(Ljava/lang/String;Z)V
    .locals 3

    sget-object v2, Lcom/android/server/ssrm/ConditionUpdateHelper;->mHelperList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/ConditionUpdateHelper;

    iget-boolean v2, v0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mIsEnable:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/ssrm/ConditionUpdateHelper;->onSsrmStatusChangedInternal(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method addPackageName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mPackageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addPackageNameList([Ljava/lang/String;)V
    .locals 5

    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    iget-object v4, p0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mPackageList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method addStatusName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mStatusList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method onForegroundActivitiesChangedInternal(Ljava/lang/String;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mIsAppInList:Z

    iget-object v5, p0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mPackageList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_1
    iput-boolean v4, p0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mIsAppInList:Z

    :cond_2
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v1

    iget-object v5, p0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mCondition:Lcom/android/server/ssrm/settings/Condition;

    iget-boolean v6, p0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mIsAppInList:Z

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mSsrmStatusValue:Z

    if-eqz v6, :cond_4

    :cond_3
    move v3, v4

    :cond_4
    invoke-virtual {v1, v5, v3}, Lcom/android/server/ssrm/Monitor;->signal(Lcom/android/server/ssrm/settings/Condition;Z)V

    return-void
.end method

.method onSsrmStatusChangedInternal(Ljava/lang/String;Z)V
    .locals 5

    iget-object v3, p0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mStatusList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-boolean p2, p0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mSsrmStatusValue:Z

    :cond_1
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mCondition:Lcom/android/server/ssrm/settings/Condition;

    iget-boolean v3, p0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mSsrmStatusValue:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mIsAppInList:Z

    if-eqz v3, :cond_3

    :cond_2
    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v1, v4, v3}, Lcom/android/server/ssrm/Monitor;->signal(Lcom/android/server/ssrm/settings/Condition;Z)V

    return-void

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method
