.class public Lcom/android/server/ssrm/settings/LevelsControllerDefault;
.super Lcom/android/server/ssrm/settings/LevelsController;
.source "LevelsControllerDefault.java"


# instance fields
.field protected mLevelsStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/server/ssrm/settings/Level;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/ssrm/settings/LevelsController;-><init>()V

    return-void
.end method


# virtual methods
.method public onConditionSignaled(Lcom/android/server/ssrm/settings/Condition;Lcom/android/server/ssrm/settings/SortedArrayList;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ssrm/settings/Condition;",
            "Lcom/android/server/ssrm/settings/SortedArrayList",
            "<",
            "Lcom/android/server/ssrm/settings/Level;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v7, 0x0

    add-int/lit8 v4, v2, -0x1

    :goto_0
    if-ltz v4, :cond_4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/settings/Level;

    invoke-virtual {v6}, Lcom/android/server/ssrm/settings/Level;->getConditions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v8, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/ssrm/settings/Condition;

    invoke-virtual {v9}, Lcom/android/server/ssrm/settings/Condition;->signaled()Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    :goto_2
    add-int/2addr v8, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    goto :goto_2

    :cond_1
    if-ne v1, v8, :cond_2

    const/4 v9, -0x1

    iget v10, p0, Lcom/android/server/ssrm/settings/LevelsController;->mTemperature:I

    invoke-virtual {v6, v9, v10}, Lcom/android/server/ssrm/settings/Level;->setTemperature(II)V

    iget-object v9, p0, Lcom/android/server/ssrm/settings/LevelsControllerDefault;->mLevelsStack:Ljava/util/Stack;

    invoke-virtual {v9, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x1

    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lcom/android/server/ssrm/settings/LevelsControllerDefault;->mLevelsStack:Ljava/util/Stack;

    invoke-virtual {v9, v6}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v7, :cond_3

    :goto_4
    goto :goto_3

    :cond_3
    move v7, v3

    goto :goto_4

    :cond_4
    if-eqz v7, :cond_5

    invoke-virtual {p0}, Lcom/android/server/ssrm/settings/LevelsControllerDefault;->traverseLevels()V

    :cond_5
    return-void
.end method

.method protected onInitialize()V
    .locals 1

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/settings/LevelsControllerDefault;->mLevelsStack:Ljava/util/Stack;

    return-void
.end method

.method protected onTemperatureChanged(II)V
    .locals 3

    iget-object v2, p0, Lcom/android/server/ssrm/settings/LevelsControllerDefault;->mLevelsStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/ssrm/settings/LevelsControllerDefault;->mLevelsStack:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/settings/Level;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/ssrm/settings/Level;->setTemperature(II)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/ssrm/settings/LevelsControllerDefault;->traverseLevels()V

    :cond_1
    return-void
.end method

.method public removeLevel(Lcom/android/server/ssrm/settings/Level;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/server/ssrm/settings/LevelsController;->removeLevel(Lcom/android/server/ssrm/settings/Level;)V

    iget-object v0, p0, Lcom/android/server/ssrm/settings/LevelsControllerDefault;->mLevelsStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/ssrm/settings/LevelsControllerDefault;->traverseLevels()V

    :cond_0
    return-void
.end method

.method setDefaultLevel(Lcom/android/server/ssrm/settings/Level;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/settings/LevelsControllerDefault;->mLevelsStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/android/server/ssrm/settings/LevelsController;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v6, "ACTIVE LEVELS:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/server/ssrm/settings/LevelsControllerDefault;->mLevelsStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iget-object v6, p0, Lcom/android/server/ssrm/settings/LevelsControllerDefault;->mLevelsStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    move v1, v2

    :goto_0
    if-ltz v1, :cond_2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ssrm/settings/Level;

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Lcom/android/server/ssrm/settings/Level;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lcom/android/server/ssrm/settings/Util;->indentText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_4

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_4
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/server/ssrm/settings/Level;->dumpStateChangeData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method protected declared-synchronized traverseLevels()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/ssrm/settings/LevelsControllerDefault;->mLevelsStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/ssrm/settings/LevelsController;->startSettingsWriting()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/ssrm/settings/LevelsControllerDefault;->mLevelsStack:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ssrm/settings/Level;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/ssrm/settings/Level;->getActiveBatteryState(Z)Lcom/android/server/ssrm/settings/BatteryState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/ssrm/settings/BatteryState;->writeSettings()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :catch_0
    move-exception v3

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/ssrm/settings/LevelsController;->stopSettingsWritingAndApply()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
