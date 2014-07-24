.class public Lcom/immersion/MagSweepEffectDefinition;
.super Ljava/lang/Object;
.source "MagSweepEffectDefinition.java"


# instance fields
.field private nActuatorIndex:I

.field private nAttackLevel:I

.field private nAttackTime:I

.field private nDuration:I

.field private nFadeLevel:I

.field private nFadeTime:I

.field private nMagnitude:I

.field private nStyle:I


# direct methods
.method public constructor <init>(IIIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/immersion/MagSweepEffectDefinition;->setDuration(I)V

    invoke-virtual {p0, p2}, Lcom/immersion/MagSweepEffectDefinition;->setMagnitude(I)V

    invoke-virtual {p0, p3}, Lcom/immersion/MagSweepEffectDefinition;->setStyle(I)V

    invoke-virtual {p0, p4}, Lcom/immersion/MagSweepEffectDefinition;->setAttackTime(I)V

    invoke-virtual {p0, p5}, Lcom/immersion/MagSweepEffectDefinition;->setAttackLevel(I)V

    invoke-virtual {p0, p6}, Lcom/immersion/MagSweepEffectDefinition;->setFadeTime(I)V

    invoke-virtual {p0, p7}, Lcom/immersion/MagSweepEffectDefinition;->setFadeLevel(I)V

    invoke-virtual {p0, p8}, Lcom/immersion/MagSweepEffectDefinition;->setActuatorIndex(I)V

    return-void
.end method


# virtual methods
.method public getActuatorIndex()I
    .locals 1

    iget v0, p0, Lcom/immersion/MagSweepEffectDefinition;->nActuatorIndex:I

    return v0
.end method

.method public getAttackLevel()I
    .locals 1

    iget v0, p0, Lcom/immersion/MagSweepEffectDefinition;->nAttackLevel:I

    return v0
.end method

.method public getAttackTime()I
    .locals 1

    iget v0, p0, Lcom/immersion/MagSweepEffectDefinition;->nAttackTime:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/immersion/MagSweepEffectDefinition;->nDuration:I

    return v0
.end method

.method public getFadeLevel()I
    .locals 1

    iget v0, p0, Lcom/immersion/MagSweepEffectDefinition;->nFadeLevel:I

    return v0
.end method

.method public getFadeTime()I
    .locals 1

    iget v0, p0, Lcom/immersion/MagSweepEffectDefinition;->nFadeTime:I

    return v0
.end method

.method public getMagnitude()I
    .locals 1

    iget v0, p0, Lcom/immersion/MagSweepEffectDefinition;->nMagnitude:I

    return v0
.end method

.method public getStyle()I
    .locals 1

    iget v0, p0, Lcom/immersion/MagSweepEffectDefinition;->nStyle:I

    return v0
.end method

.method public setActuatorIndex(I)V
    .locals 0

    iput p1, p0, Lcom/immersion/MagSweepEffectDefinition;->nActuatorIndex:I

    return-void
.end method

.method public setAttackLevel(I)V
    .locals 0

    iput p1, p0, Lcom/immersion/MagSweepEffectDefinition;->nAttackLevel:I

    return-void
.end method

.method public setAttackTime(I)V
    .locals 0

    iput p1, p0, Lcom/immersion/MagSweepEffectDefinition;->nAttackTime:I

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/immersion/MagSweepEffectDefinition;->nDuration:I

    return-void
.end method

.method public setFadeLevel(I)V
    .locals 0

    iput p1, p0, Lcom/immersion/MagSweepEffectDefinition;->nFadeLevel:I

    return-void
.end method

.method public setFadeTime(I)V
    .locals 0

    iput p1, p0, Lcom/immersion/MagSweepEffectDefinition;->nFadeTime:I

    return-void
.end method

.method public setMagnitude(I)V
    .locals 0

    iput p1, p0, Lcom/immersion/MagSweepEffectDefinition;->nMagnitude:I

    return-void
.end method

.method public setStyle(I)V
    .locals 0

    iput p1, p0, Lcom/immersion/MagSweepEffectDefinition;->nStyle:I

    return-void
.end method
