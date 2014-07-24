.class public abstract Lcom/android/server/ssrm/settings/LevelsController;
.super Ljava/lang/Object;
.source "LevelsController.java"

# interfaces
.implements Lcom/android/server/ssrm/settings/Condition$Listener;


# instance fields
.field protected mLevels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/ssrm/settings/Level;",
            ">;"
        }
    .end annotation
.end field

.field protected mTemperature:I

.field private mWriters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/ssrm/settings/SettingWriter",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/ssrm/settings/LevelsController;->mTemperature:I

    return-void
.end method


# virtual methods
.method public addLevelGetCondition(Lcom/android/server/ssrm/settings/Level;Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/settings/LevelsController;->checkLevel(Lcom/android/server/ssrm/settings/Level;)V

    iget v1, p0, Lcom/android/server/ssrm/settings/LevelsController;->mTemperature:I

    iget v2, p0, Lcom/android/server/ssrm/settings/LevelsController;->mTemperature:I

    invoke-virtual {p1, v1, v2}, Lcom/android/server/ssrm/settings/Level;->setTemperature(II)V

    new-instance v0, Lcom/android/server/ssrm/settings/Condition;

    invoke-direct {v0, p2}, Lcom/android/server/ssrm/settings/Condition;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/android/server/ssrm/settings/Condition;->setListener(Lcom/android/server/ssrm/settings/Condition$Listener;)V

    invoke-virtual {p1, v0}, Lcom/android/server/ssrm/settings/Level;->setCondition(Lcom/android/server/ssrm/settings/Condition;)V

    iget-object v1, p0, Lcom/android/server/ssrm/settings/LevelsController;->mLevels:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public addLevelSetConditions(Lcom/android/server/ssrm/settings/Level;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ssrm/settings/Level;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/ssrm/settings/Condition;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/settings/LevelsController;->checkLevel(Lcom/android/server/ssrm/settings/Level;)V

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "SSRM. There should be more than one conditions"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget v2, p0, Lcom/android/server/ssrm/settings/LevelsController;->mTemperature:I

    iget v3, p0, Lcom/android/server/ssrm/settings/LevelsController;->mTemperature:I

    invoke-virtual {p1, v2, v3}, Lcom/android/server/ssrm/settings/Level;->setTemperature(II)V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/settings/Condition;

    invoke-virtual {v0, p0}, Lcom/android/server/ssrm/settings/Condition;->setListener(Lcom/android/server/ssrm/settings/Condition$Listener;)V

    invoke-virtual {p1, v0}, Lcom/android/server/ssrm/settings/Level;->setCondition(Lcom/android/server/ssrm/settings/Condition;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/ssrm/settings/LevelsController;->mLevels:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected checkLevel(Lcom/android/server/ssrm/settings/Level;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Level shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/settings/LevelsController;->mLevels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This level already registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public final initialize()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/settings/LevelsController;->mWriters:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/settings/LevelsController;->mLevels:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/server/ssrm/settings/LevelsController;->onInitialize()V

    return-void
.end method

.method public final initialize(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/ssrm/settings/SettingWriter",
            "<*>;>;)V"
        }
    .end annotation

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/ssrm/settings/LevelsController;->mWriters:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/settings/SettingWriter;

    iget-object v3, p0, Lcom/android/server/ssrm/settings/LevelsController;->mWriters:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/android/server/ssrm/settings/SettingWriter;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/ssrm/settings/LevelsController;->mWriters:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "SSRM. Writers list shouldn\'t be null or empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/ssrm/settings/LevelsController;->mLevels:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/server/ssrm/settings/LevelsController;->onInitialize()V

    return-void
.end method

.method protected onInitialize()V
    .locals 0

    return-void
.end method

.method protected abstract onTemperatureChanged(II)V
.end method

.method public registerWriter(Lcom/android/server/ssrm/settings/SettingWriter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ssrm/settings/SettingWriter",
            "<*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Writer cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/ssrm/settings/LevelsController;->mWriters:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/ssrm/settings/SettingWriter;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/settings/SettingWriter;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSRM. Writer with name ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/ssrm/settings/SettingWriter;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") already registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method public removeLevel(Lcom/android/server/ssrm/settings/Level;)V
    .locals 4

    iget-object v3, p0, Lcom/android/server/ssrm/settings/LevelsController;->mLevels:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/android/server/ssrm/settings/Level;->getConditions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/settings/Condition;

    invoke-virtual {v0, p1}, Lcom/android/server/ssrm/settings/Condition;->unregisterLevel(Lcom/android/server/ssrm/settings/Level;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method setDefaultLevel(Lcom/android/server/ssrm/settings/Level;)V
    .locals 0

    return-void
.end method

.method public final setTemperature(I)V
    .locals 2

    iget v1, p0, Lcom/android/server/ssrm/settings/LevelsController;->mTemperature:I

    if-eq v1, p1, :cond_0

    iget v0, p0, Lcom/android/server/ssrm/settings/LevelsController;->mTemperature:I

    iput p1, p0, Lcom/android/server/ssrm/settings/LevelsController;->mTemperature:I

    iget v1, p0, Lcom/android/server/ssrm/settings/LevelsController;->mTemperature:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/settings/LevelsController;->onTemperatureChanged(II)V

    :cond_0
    return-void
.end method

.method protected final startSettingsWriting()V
    .locals 3

    iget-object v2, p0, Lcom/android/server/ssrm/settings/LevelsController;->mWriters:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/settings/SettingWriter;

    invoke-virtual {v2}, Lcom/android/server/ssrm/settings/SettingWriter;->startModification()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final stopSettingsWritingAndApply()V
    .locals 3

    iget-object v2, p0, Lcom/android/server/ssrm/settings/LevelsController;->mWriters:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/settings/SettingWriter;

    invoke-virtual {v2}, Lcom/android/server/ssrm/settings/SettingWriter;->stopModification()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Temperature="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/ssrm/settings/LevelsController;->mTemperature:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "WRITERS:\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/ssrm/settings/LevelsController;->mWriters:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ssrm/settings/SettingWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "LEVELS:\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/ssrm/settings/LevelsController;->mLevels:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/settings/Level;

    invoke-virtual {v2}, Lcom/android/server/ssrm/settings/Level;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lcom/android/server/ssrm/settings/Util;->indentText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method protected abstract traverseLevels()V
.end method
