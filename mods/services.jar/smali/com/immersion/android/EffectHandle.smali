.class public Lcom/immersion/android/EffectHandle;
.super Lcom/immersion/EffectHandle;
.source "EffectHandle.java"


# direct methods
.method protected constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/immersion/EffectHandle;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 3

    const/high16 v2, 0x3000

    const/4 v1, -0x1

    iget v0, p0, Lcom/immersion/android/EffectHandle;->hDeviceHandle:I

    if-eq v1, v0, :cond_0

    iget v0, p0, Lcom/immersion/android/EffectHandle;->hEffectHandle:I

    if-eq v1, v0, :cond_0

    iget v0, p0, Lcom/immersion/android/EffectHandle;->hEffectHandle:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/immersion/android/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/android/EffectHandle;->hDeviceHandle:I

    iget v2, p0, Lcom/immersion/android/EffectHandle;->hEffectHandle:I

    invoke-virtual {v0, v1, v2}, Lcom/immersion/ImmVibe;->destroyStreamingEffect(II)V

    :cond_0
    return-void
.end method
