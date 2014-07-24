.class Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;
.super Ljava/lang/Object;
.source "EnterpriseContainerCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContainerInprogressData"
.end annotation


# instance fields
.field public mContainerId:I

.field public mCreateFlag:I

.field public mIsCanceled:Z

.field public mRequestId:I

.field final synthetic this$0:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;


# direct methods
.method constructor <init>(Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;->this$0:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;->mContainerId:I

    iput v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;->mRequestId:I

    iput-boolean v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;->mIsCanceled:Z

    iput v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;->mCreateFlag:I

    return-void
.end method
