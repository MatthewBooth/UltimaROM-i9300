.class public Lcom/immersion/IVTWaveformElement;
.super Lcom/immersion/IVTElement;
.source "IVTWaveformElement.java"


# instance fields
.field private definition:Lcom/immersion/WaveformEffectDefinition;


# direct methods
.method public constructor <init>(ILcom/immersion/WaveformEffectDefinition;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/immersion/IVTElement;-><init>(II)V

    iput-object p2, p0, Lcom/immersion/IVTWaveformElement;->definition:Lcom/immersion/WaveformEffectDefinition;

    return-void
.end method


# virtual methods
.method public getBuffer()[I
    .locals 4

    const/4 v3, 0x0

    const/16 v1, 0x8

    new-array v0, v1, [I

    invoke-virtual {p0}, Lcom/immersion/IVTWaveformElement;->getType()I

    move-result v1

    aput v1, v0, v3

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/immersion/IVTWaveformElement;->getTime()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v3, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/immersion/IVTWaveformElement;->definition:Lcom/immersion/WaveformEffectDefinition;

    invoke-virtual {v2}, Lcom/immersion/WaveformEffectDefinition;->getDataSize()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/immersion/IVTWaveformElement;->definition:Lcom/immersion/WaveformEffectDefinition;

    invoke-virtual {v2}, Lcom/immersion/WaveformEffectDefinition;->getSampleRate()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/immersion/IVTWaveformElement;->definition:Lcom/immersion/WaveformEffectDefinition;

    invoke-virtual {v2}, Lcom/immersion/WaveformEffectDefinition;->getBitDepth()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/immersion/IVTWaveformElement;->definition:Lcom/immersion/WaveformEffectDefinition;

    invoke-virtual {v2}, Lcom/immersion/WaveformEffectDefinition;->getMagnitude()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/immersion/IVTWaveformElement;->definition:Lcom/immersion/WaveformEffectDefinition;

    invoke-virtual {v2}, Lcom/immersion/WaveformEffectDefinition;->getActuatorIndex()I

    move-result v2

    aput v2, v0, v1

    return-object v0
.end method

.method public getDefinition()Lcom/immersion/WaveformEffectDefinition;
    .locals 1

    iget-object v0, p0, Lcom/immersion/IVTWaveformElement;->definition:Lcom/immersion/WaveformEffectDefinition;

    return-object v0
.end method

.method public setDefinition(Lcom/immersion/WaveformEffectDefinition;)V
    .locals 0

    iput-object p1, p0, Lcom/immersion/IVTWaveformElement;->definition:Lcom/immersion/WaveformEffectDefinition;

    return-void
.end method
