.class public Lcom/immersion/PeriodicEffectDefinition;
.super Ljava/lang/Object;
.source "PeriodicEffectDefinition.java"


# instance fields
.field private nActuatorIndex:I

.field private nAttackLevel:I

.field private nAttackTime:I

.field private nDuration:I

.field private nFadeLevel:I

.field private nFadeTime:I

.field private nMagnitude:I

.field private nPeriod:I

.field private nStyleAndWaveType:I


# direct methods
.method public constructor <init>(IIIIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/immersion/PeriodicEffectDefinition;->setDuration(I)V

    invoke-virtual {p0, p2}, Lcom/immersion/PeriodicEffectDefinition;->setMagnitude(I)V

    invoke-virtual {p0, p3}, Lcom/immersion/PeriodicEffectDefinition;->setPeriod(I)V

    invoke-virtual {p0, p4}, Lcom/immersion/PeriodicEffectDefinition;->setStyleAndWaveType(I)V

    invoke-virtual {p0, p5}, Lcom/immersion/PeriodicEffectDefinition;->setAttackTime(I)V

    invoke-virtual {p0, p6}, Lcom/immersion/PeriodicEffectDefinition;->setAttackLevel(I)V

    invoke-virtual {p0, p7}, Lcom/immersion/PeriodicEffectDefinition;->setFadeTime(I)V

    invoke-virtual {p0, p8}, Lcom/immersion/PeriodicEffectDefinition;->setFadeLevel(I)V

    invoke-virtual {p0, p9}, Lcom/immersion/PeriodicEffectDefinition;->setActuatorIndex(I)V

    return-void
.end method


# virtual methods
.method public getActuatorIndex()I
    .locals 1

    iget v0, p0, Lcom/immersion/PeriodicEffectDefinition;->nActuatorIndex:I

    return v0
.end method

.method public getAttackLevel()I
    .locals 1

    iget v0, p0, Lcom/immersion/PeriodicEffectDefinition;->nAttackLevel:I

    return v0
.end method

.method public getAttackTime()I
    .locals 1

    iget v0, p0, Lcom/immersion/PeriodicEffectDefinition;->nAttackTime:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/immersion/PeriodicEffectDefinition;->nDuration:I

    return v0
.end method

.method public getFadeLevel()I
    .locals 1

    iget v0, p0, Lcom/immersion/PeriodicEffectDefinition;->nFadeLevel:I

    return v0
.end method

.method public getFadeTime()I
    .locals 1

    iget v0, p0, Lcom/immersion/PeriodicEffectDefinition;->nFadeTime:I

    return v0
.end method

.method public getMagnitude()I
    .locals 1

    iget v0, p0, Lcom/immersion/PeriodicEffectDefinition;->nMagnitude:I

    return v0
.end method

.method public getPeriod()I
    .locals 1

    iget v0, p0, Lcom/immersion/PeriodicEffectDefinition;->nPeriod:I

    return v0
.end method

.method public getStyleAndWaveType()I
    .locals 1

    iget v0, p0, Lcom/immersion/PeriodicEffectDefinition;->nStyleAndWaveType:I

    return v0
.end method

.method public setActuatorIndex(I)V
    .locals 0

    iput p1, p0, Lcom/immersion/PeriodicEffectDefinition;->nActuatorIndex:I

    return-void
.end method

.method public setAttackLevel(I)V
    .locals 0

    iput p1, p0, Lcom/immersion/PeriodicEffectDefinition;->nAttackLevel:I

    return-void
.end method

.method public setAttackTime(I)V
    .locals 0

    iput p1, p0, Lcom/immersion/PeriodicEffectDefinition;->nAttackTime:I

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/immersion/PeriodicEffectDefinition;->nDuration:I

    return-void
.end method

.method public setFadeLevel(I)V
    .locals 0

    iput p1, p0, Lcom/immersion/PeriodicEffectDefinition;->nFadeLevel:I

    return-void
.end method

.method public setFadeTime(I)V
    .locals 0

    iput p1, p0, Lcom/immersion/PeriodicEffectDefinition;->nFadeTime:I

    return-void
.end method

.method public setMagnitude(I)V
    .locals 0

    iput p1, p0, Lcom/immersion/PeriodicEffectDefinition;->nMagnitude:I

    return-void
.end method

.method public setPeriod(I)V
    .locals 0

    iput p1, p0, Lcom/immersion/PeriodicEffectDefinition;->nPeriod:I

    return-void
.end method

.method public setStyleAndWaveType(I)V
    .locals 0

    iput p1, p0, Lcom/immersion/PeriodicEffectDefinition;->nStyleAndWaveType:I

    return-void
.end method
