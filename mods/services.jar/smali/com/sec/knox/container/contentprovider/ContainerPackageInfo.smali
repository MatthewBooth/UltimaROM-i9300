.class public Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;
.super Ljava/lang/Object;
.source "ContainerPackageInfo.java"


# instance fields
.field private appPackage:Ljava/lang/String;

.field private containerId:I

.field private installationSource:I

.field private signature:Ljava/lang/String;

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->containerId:I

    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->appPackage:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->signature:Ljava/lang/String;

    iput v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->installationSource:I

    iput v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->uid:I

    return-void
.end method


# virtual methods
.method public getAppPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->appPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getContainerId()I
    .locals 1

    iget v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->containerId:I

    return v0
.end method

.method public getInstallationSource()I
    .locals 1

    iget v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->installationSource:I

    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->uid:I

    return v0
.end method

.method public setAppPackage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->appPackage:Ljava/lang/String;

    return-void
.end method

.method public setContainerId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->containerId:I

    return-void
.end method

.method public setInstallationSource(I)V
    .locals 0

    iput p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->installationSource:I

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->signature:Ljava/lang/String;

    return-void
.end method

.method public setUid(I)V
    .locals 0

    iput p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->uid:I

    return-void
.end method
