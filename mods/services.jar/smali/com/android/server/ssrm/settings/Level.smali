.class public Lcom/android/server/ssrm/settings/Level;
.super Ljava/lang/Object;
.source "Level.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/ssrm/settings/Level;",
        ">;"
    }
.end annotation


# instance fields
.field protected mBatteryControllerFactory:Lcom/android/server/ssrm/settings/BatteryControllerFactory;

.field private mBatteryStatesController:Lcom/android/server/ssrm/settings/BatteryStatesController;

.field protected mConditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/ssrm/settings/Condition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addBatteryState(Lcom/android/server/ssrm/settings/BatteryState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/settings/Level;->mBatteryStatesController:Lcom/android/server/ssrm/settings/BatteryStatesController;

    invoke-virtual {v0, p1}, Lcom/android/server/ssrm/settings/BatteryStatesController;->addState(Lcom/android/server/ssrm/settings/BatteryState;)V

    return-void
.end method

.method public batteryStatesFactory()Lcom/android/server/ssrm/settings/BatteryControllerFactory;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/settings/Level;->mBatteryControllerFactory:Lcom/android/server/ssrm/settings/BatteryControllerFactory;

    return-object v0
.end method

.method public compareTo(Lcom/android/server/ssrm/settings/Level;)I
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/ssrm/settings/Level;->getConditions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/ssrm/settings/Level;->getConditions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    if-le v1, v0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/server/ssrm/settings/Level;

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/settings/Level;->compareTo(Lcom/android/server/ssrm/settings/Level;)I

    move-result v0

    return v0
.end method

.method public dumpStateChangeData()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/ssrm/settings/Level;->mBatteryStatesController:Lcom/android/server/ssrm/settings/BatteryStatesController;

    invoke-virtual {v0}, Lcom/android/server/ssrm/settings/BatteryStatesController;->dumpStateChangeData()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/ssrm/settings/Util;->indentText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveBatteryState(Z)Lcom/android/server/ssrm/settings/BatteryState;
    .locals 2

    iget-object v0, p0, Lcom/android/server/ssrm/settings/Level;->mConditions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ssrm/settings/Level;->mBatteryStatesController:Lcom/android/server/ssrm/settings/BatteryStatesController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/settings/BatteryStatesController;->getActiveBatteryState(Z)Lcom/android/server/ssrm/settings/BatteryState;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/settings/Level;->mBatteryStatesController:Lcom/android/server/ssrm/settings/BatteryStatesController;

    invoke-virtual {v0, p1}, Lcom/android/server/ssrm/settings/BatteryStatesController;->getActiveBatteryState(Z)Lcom/android/server/ssrm/settings/BatteryState;

    move-result-object v0

    goto :goto_0
.end method

.method final getConditions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/ssrm/settings/Condition;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/ssrm/settings/Level;->mConditions:Ljava/util/List;

    return-object v0
.end method

.method public initialize()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/settings/Level;->initialize(Lcom/android/server/ssrm/settings/BatteryControllerFactory;)V

    return-void
.end method

.method public initialize(Lcom/android/server/ssrm/settings/BatteryControllerFactory;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/ssrm/settings/Level;->mBatteryControllerFactory:Lcom/android/server/ssrm/settings/BatteryControllerFactory;

    iget-object v0, p0, Lcom/android/server/ssrm/settings/Level;->mBatteryControllerFactory:Lcom/android/server/ssrm/settings/BatteryControllerFactory;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/ssrm/settings/Level$1;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/settings/Level$1;-><init>(Lcom/android/server/ssrm/settings/Level;)V

    iput-object v0, p0, Lcom/android/server/ssrm/settings/Level;->mBatteryControllerFactory:Lcom/android/server/ssrm/settings/BatteryControllerFactory;

    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/settings/Level;->mBatteryControllerFactory:Lcom/android/server/ssrm/settings/BatteryControllerFactory;

    invoke-interface {v0}, Lcom/android/server/ssrm/settings/BatteryControllerFactory;->createBatteryStatesController()Lcom/android/server/ssrm/settings/BatteryStatesController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/settings/Level;->mBatteryStatesController:Lcom/android/server/ssrm/settings/BatteryStatesController;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/settings/Level;->mConditions:Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/ssrm/settings/Level;->mConditions:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/settings/Level;->onInitialize(Ljava/util/List;)V

    return-void
.end method

.method protected onInitialize(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/ssrm/settings/Condition;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public removeBatteryState(Lcom/android/server/ssrm/settings/BatteryState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/settings/Level;->mBatteryStatesController:Lcom/android/server/ssrm/settings/BatteryStatesController;

    invoke-virtual {v0, p1}, Lcom/android/server/ssrm/settings/BatteryStatesController;->removeState(Lcom/android/server/ssrm/settings/BatteryState;)V

    return-void
.end method

.method setCondition(Lcom/android/server/ssrm/settings/Condition;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SSRM. Condition shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/server/ssrm/settings/Condition;->registerLevel(Lcom/android/server/ssrm/settings/Level;)V

    iget-object v0, p0, Lcom/android/server/ssrm/settings/Level;->mConditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setTemperature(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/settings/Level;->mBatteryStatesController:Lcom/android/server/ssrm/settings/BatteryStatesController;

    invoke-virtual {v0, p2}, Lcom/android/server/ssrm/settings/BatteryStatesController;->setTemperature(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ---\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/ssrm/settings/Level;->mConditions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "  Conditions:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/ssrm/settings/Level;->mConditions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/settings/Condition;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/ssrm/settings/Condition;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/ssrm/settings/Level;->mBatteryStatesController:Lcom/android/server/ssrm/settings/BatteryStatesController;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/android/server/ssrm/settings/Util;->indentText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
