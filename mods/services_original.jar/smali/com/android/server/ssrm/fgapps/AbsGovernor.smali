.class public abstract Lcom/android/server/ssrm/fgapps/AbsGovernor;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "AbsGovernor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;,
        Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;
    }
.end annotation


# instance fields
.field protected TAG:Ljava/lang/String;

.field sysfsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;",
            ">;"
        }
    .end annotation
.end field

.field syspropList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    const-string v0, "SSRMv2:AbsGovernor"

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsGovernor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsGovernor;->sysfsList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsGovernor;->syspropList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/AbsGovernor;->sysfsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v2, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;

    invoke-direct {v2}, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;-><init>()V

    iput-object p1, v2, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;->mPath:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, v2, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;->mIsNodeExist:Z

    iget-boolean v3, v2, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;->mIsNodeExist:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/AbsGovernor;->TAG:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;->mCurrentValue:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;->mDefaultValue:Ljava/lang/String;

    :goto_2
    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/AbsGovernor;->sysfsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    iput-object p2, v2, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;->mTargetValue:Ljava/lang/String;

    iput-object p2, v2, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;->mCurrentValue:Ljava/lang/String;

    iput-object p2, v2, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;->mDefaultValue:Ljava/lang/String;

    goto :goto_2
.end method

.method addSystemPropertiesParam(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/AbsGovernor;->syspropList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;

    invoke-direct {v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;-><init>()V

    iput-object p1, v1, Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;->mKey:Ljava/lang/String;

    iput-object p2, v1, Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;->mTargetValue:Ljava/lang/String;

    iput-object p2, v1, Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;->mDefaultValue:Ljava/lang/String;

    iput-object p2, v1, Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;->mCurrentValue:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/AbsGovernor;->syspropList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method final setSysfs(ILjava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/AbsGovernor;->sysfsList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p2, v0, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;->mTargetValue:Ljava/lang/String;

    goto :goto_0
.end method

.method final setSystemProperties(ILjava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/AbsGovernor;->syspropList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p2, v0, Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;->mTargetValue:Ljava/lang/String;

    goto :goto_0
.end method

.method setTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/AbsGovernor;->TAG:Ljava/lang/String;

    return-void
.end method

.method update()V
    .locals 6

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/AbsGovernor;->sysfsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;

    iget-object v3, v1, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;->mDefaultValue:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;->mTargetValue:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/AbsGovernor;->syspropList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;

    iget-object v3, v2, Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;->mDefaultValue:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;->mTargetValue:Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->updateParameterByScenario()V

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/AbsGovernor;->sysfsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;

    iget-object v3, v1, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;->mCurrentValue:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;->mTargetValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, v1, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;->mIsNodeExist:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/AbsGovernor;->TAG:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;->mPath:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;->mTargetValue:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iget-object v3, v1, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;->mTargetValue:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;->mCurrentValue:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/AbsGovernor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/ssrm/fgapps/AbsGovernor$SysfsParam;->mTargetValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " => permission denied."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/AbsGovernor;->syspropList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;

    iget-object v3, v2, Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;->mCurrentValue:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;->mTargetValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v2, Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;->mKey:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;->mTargetValue:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;->mTargetValue:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;->mCurrentValue:Ljava/lang/String;

    goto :goto_4

    :cond_6
    return-void
.end method

.method abstract updateParameterByScenario()V
.end method
