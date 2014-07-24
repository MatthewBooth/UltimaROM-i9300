.class Lcom/android/server/MsapWifiService$VenueInfoCacheItem;
.super Ljava/lang/Object;
.source "MsapWifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MsapWifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VenueInfoCacheItem"
.end annotation


# instance fields
.field mBssId:Ljava/lang/String;

.field mParseError:I

.field mServerId:Ljava/lang/String;

.field mSsId:Ljava/lang/String;

.field mVenueHash:Ljava/lang/String;

.field mVenueName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/MsapWifiService;


# direct methods
.method constructor <init>(Lcom/android/server/MsapWifiService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->this$0:Lcom/android/server/MsapWifiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mVenueHash:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mServerId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mBssId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mSsId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mVenueName:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mParseError:I

    return-void
.end method

.method constructor <init>(Lcom/android/server/MsapWifiService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->this$0:Lcom/android/server/MsapWifiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mVenueHash:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mServerId:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mBssId:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mSsId:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mVenueName:Ljava/lang/String;

    iput p7, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mParseError:I

    return-void
.end method

.method private compareString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    if-nez p2, :cond_1

    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    :cond_0
    move-object v0, p1

    goto :goto_0

    :cond_1
    move-object v1, p2

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;

    iget-object v2, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mVenueHash:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mVenueHash:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->compareString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mServerId:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mServerId:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->compareString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mBssId:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mBssId:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->compareString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mSsId:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mSsId:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->compareString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mVenueName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mVenueName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->compareString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mVenueHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mBssId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mSsId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mVenueName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method
