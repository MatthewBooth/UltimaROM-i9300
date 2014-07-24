.class public Lcom/immersion/EffectHandle;
.super Ljava/lang/Object;
.source "EffectHandle.java"


# instance fields
.field protected hDeviceHandle:I

.field protected hEffectHandle:I


# direct methods
.method protected constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/immersion/EffectHandle;->hDeviceHandle:I

    iput p2, p0, Lcom/immersion/EffectHandle;->hEffectHandle:I

    return-void
.end method


# virtual methods
.method public destroyStreamingEffect()V
    .locals 3

    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->hDeviceHandle:I

    iget v2, p0, Lcom/immersion/EffectHandle;->hEffectHandle:I

    invoke-virtual {v0, v1, v2}, Lcom/immersion/ImmVibe;->destroyStreamingEffect(II)V

    return-void
.end method

.method public getState()I
    .locals 3

    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->hDeviceHandle:I

    iget v2, p0, Lcom/immersion/EffectHandle;->hEffectHandle:I

    invoke-virtual {v0, v1, v2}, Lcom/immersion/ImmVibe;->getEffectState(II)I

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 2

    invoke-virtual {p0}, Lcom/immersion/EffectHandle;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/immersion/EffectHandle;->getState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public modifyPlayingMagSweepEffect(Lcom/immersion/MagSweepEffectDefinition;)V
    .locals 10

    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->hDeviceHandle:I

    iget v2, p0, Lcom/immersion/EffectHandle;->hEffectHandle:I

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getDuration()I

    move-result v3

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getMagnitude()I

    move-result v4

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getStyle()I

    move-result v5

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getAttackTime()I

    move-result v6

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getAttackLevel()I

    move-result v7

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getFadeTime()I

    move-result v8

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getFadeLevel()I

    move-result v9

    invoke-virtual/range {v0 .. v9}, Lcom/immersion/ImmVibe;->modifyPlayingMagSweepEffect(IIIIIIIII)V

    return-void
.end method

.method public modifyPlayingPeriodicEffect(Lcom/immersion/PeriodicEffectDefinition;)V
    .locals 11

    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->hDeviceHandle:I

    iget v2, p0, Lcom/immersion/EffectHandle;->hEffectHandle:I

    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getDuration()I

    move-result v3

    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getMagnitude()I

    move-result v4

    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getPeriod()I

    move-result v5

    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getStyleAndWaveType()I

    move-result v6

    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getAttackTime()I

    move-result v7

    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getAttackLevel()I

    move-result v8

    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getFadeTime()I

    move-result v9

    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getFadeLevel()I

    move-result v10

    invoke-virtual/range {v0 .. v10}, Lcom/immersion/ImmVibe;->modifyPlayingPeriodicEffect(IIIIIIIIII)V

    return-void
.end method

.method public pause()V
    .locals 3

    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->hDeviceHandle:I

    iget v2, p0, Lcom/immersion/EffectHandle;->hEffectHandle:I

    invoke-virtual {v0, v1, v2}, Lcom/immersion/ImmVibe;->pausePlayingEffect(II)V

    return-void
.end method

.method public playStreamingSample([BI)V
    .locals 3

    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->hDeviceHandle:I

    iget v2, p0, Lcom/immersion/EffectHandle;->hEffectHandle:I

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/immersion/ImmVibe;->playStreamingSample(II[BI)V

    return-void
.end method

.method public playStreamingSampleWithOffset([BII)V
    .locals 6

    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->hDeviceHandle:I

    iget v2, p0, Lcom/immersion/EffectHandle;->hEffectHandle:I

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/immersion/ImmVibe;->playStreamingSampleWithOffset(II[BII)V

    return-void
.end method

.method public resume()V
    .locals 3

    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->hDeviceHandle:I

    iget v2, p0, Lcom/immersion/EffectHandle;->hEffectHandle:I

    invoke-virtual {v0, v1, v2}, Lcom/immersion/ImmVibe;->resumePausedEffect(II)V

    return-void
.end method

.method public stop()V
    .locals 3

    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->hDeviceHandle:I

    iget v2, p0, Lcom/immersion/EffectHandle;->hEffectHandle:I

    invoke-virtual {v0, v1, v2}, Lcom/immersion/ImmVibe;->stopPlayingEffect(II)V

    return-void
.end method
