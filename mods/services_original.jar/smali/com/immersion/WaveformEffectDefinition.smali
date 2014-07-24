.class public Lcom/immersion/WaveformEffectDefinition;
.super Ljava/lang/Object;
.source "WaveformEffectDefinition.java"


# instance fields
.field private nActuatorIndex:I

.field private nBitDepth:I

.field private nDataSize:I

.field private nMagnitude:I

.field private nSampleRate:I

.field private pData:[B


# direct methods
.method public constructor <init>([BIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/immersion/WaveformEffectDefinition;->setData([B)V

    invoke-virtual {p0, p2}, Lcom/immersion/WaveformEffectDefinition;->setDataSize(I)V

    invoke-virtual {p0, p3}, Lcom/immersion/WaveformEffectDefinition;->setSampleRate(I)V

    invoke-virtual {p0, p4}, Lcom/immersion/WaveformEffectDefinition;->setBitDepth(I)V

    invoke-virtual {p0, p5}, Lcom/immersion/WaveformEffectDefinition;->setMagnitude(I)V

    invoke-virtual {p0, p6}, Lcom/immersion/WaveformEffectDefinition;->setActuatorIndex(I)V

    return-void
.end method


# virtual methods
.method public getActuatorIndex()I
    .locals 1

    iget v0, p0, Lcom/immersion/WaveformEffectDefinition;->nActuatorIndex:I

    return v0
.end method

.method public getBitDepth()I
    .locals 1

    iget v0, p0, Lcom/immersion/WaveformEffectDefinition;->nBitDepth:I

    return v0
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Lcom/immersion/WaveformEffectDefinition;->pData:[B

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    iget v0, p0, Lcom/immersion/WaveformEffectDefinition;->nDataSize:I

    return v0
.end method

.method public getMagnitude()I
    .locals 1

    iget v0, p0, Lcom/immersion/WaveformEffectDefinition;->nMagnitude:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    iget v0, p0, Lcom/immersion/WaveformEffectDefinition;->nSampleRate:I

    return v0
.end method

.method public setActuatorIndex(I)V
    .locals 0

    iput p1, p0, Lcom/immersion/WaveformEffectDefinition;->nActuatorIndex:I

    return-void
.end method

.method public setBitDepth(I)V
    .locals 0

    iput p1, p0, Lcom/immersion/WaveformEffectDefinition;->nBitDepth:I

    return-void
.end method

.method public setData([B)V
    .locals 0

    iput-object p1, p0, Lcom/immersion/WaveformEffectDefinition;->pData:[B

    return-void
.end method

.method public setDataSize(I)V
    .locals 0

    iput p1, p0, Lcom/immersion/WaveformEffectDefinition;->nDataSize:I

    return-void
.end method

.method public setMagnitude(I)V
    .locals 0

    iput p1, p0, Lcom/immersion/WaveformEffectDefinition;->nMagnitude:I

    return-void
.end method

.method public setSampleRate(I)V
    .locals 0

    iput p1, p0, Lcom/immersion/WaveformEffectDefinition;->nSampleRate:I

    return-void
.end method
