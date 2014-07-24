.class public Lcom/immersion/WrappableDevice;
.super Lcom/immersion/Device;
.source "WrappableDevice.java"


# instance fields
.field protected mDevice:Lcom/immersion/Device;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/immersion/Device;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/immersion/WrappableDevice;->mDevice:Lcom/immersion/Device;

    iput v1, p0, Lcom/immersion/WrappableDevice;->hDeviceHandle:I

    iput v1, p0, Lcom/immersion/WrappableDevice;->nDeviceIndex:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Lcom/immersion/Device;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/immersion/WrappableDevice;->mDevice:Lcom/immersion/Device;

    invoke-virtual {p0, p1}, Lcom/immersion/WrappableDevice;->setDeviceHandle(I)V

    invoke-virtual {p0, p2}, Lcom/immersion/WrappableDevice;->setDeviceIndex(I)V

    return-void
.end method

.method public constructor <init>(Lcom/immersion/Device;)V
    .locals 2

    iget v0, p1, Lcom/immersion/Device;->hDeviceHandle:I

    iget v1, p1, Lcom/immersion/Device;->nDeviceIndex:I

    invoke-direct {p0, v0, v1}, Lcom/immersion/WrappableDevice;-><init>(II)V

    iput-object p1, p0, Lcom/immersion/WrappableDevice;->mDevice:Lcom/immersion/Device;

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lcom/immersion/WrappableDevice;->mDevice:Lcom/immersion/Device;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/immersion/WrappableDevice;->mDevice:Lcom/immersion/Device;

    :cond_0
    return-void
.end method

.method public getDeviceHandle()I
    .locals 1

    iget v0, p0, Lcom/immersion/WrappableDevice;->hDeviceHandle:I

    return v0
.end method

.method public getDeviceIndex()I
    .locals 1

    iget v0, p0, Lcom/immersion/WrappableDevice;->nDeviceIndex:I

    return v0
.end method

.method public setDeviceHandle(I)V
    .locals 0

    iput p1, p0, Lcom/immersion/WrappableDevice;->hDeviceHandle:I

    return-void
.end method

.method public setDeviceIndex(I)V
    .locals 0

    iput p1, p0, Lcom/immersion/WrappableDevice;->nDeviceIndex:I

    return-void
.end method
