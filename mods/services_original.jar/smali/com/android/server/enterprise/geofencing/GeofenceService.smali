.class public Lcom/android/server/enterprise/geofencing/GeofenceService;
.super Landroid/app/enterprise/geofencing/IGeofencing$Stub;
.source "GeofenceService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;,
        Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;
    }
.end annotation


# static fields
.field private static final CHECK_DEVICE_POSITION:I = 0x1

.field private static final DEFAULT_TIME_LIMIT:I = 0xea60

.field private static final REFRESH_GEOFENCING:I = 0x3

.field private static final START_GEOFENCING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GeofenceService"

.field private static mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;


# instance fields
.field private mActiveGeofenceList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/geofencing/Geofence;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private final mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mLocation:Landroid/location/Location;

.field private mLocationManager:Landroid/location/LocationManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mUserRemovedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Landroid/app/enterprise/geofencing/IGeofencing$Stub;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    new-instance v1, Lcom/android/server/enterprise/geofencing/GeofenceService$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/geofencing/GeofenceService$1;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;)V

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/enterprise/geofencing/GeofenceService$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/geofencing/GeofenceService$2;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;)V

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "GeofenceService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/geofencing/GeofenceService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->loadGeofenceActiveList(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/geofencing/GeofenceService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkMonitoring()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/geofencing/GeofenceService;I)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isDeviceInsideGeofence(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/geofencing/GeofenceService;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/geofencing/GeofenceService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/geofencing/GeofenceService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/geofencing/GeofenceService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deleteGeofenceActiveListByAdmin(I)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/location/Location;Z)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideOrOutsideGeo(Landroid/location/Location;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private calcBoundingBox(Ljava/util/List;)Landroid/app/enterprise/geofencing/BoundingBox;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;)",
            "Landroid/app/enterprise/geofencing/BoundingBox;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    new-instance v0, Landroid/app/enterprise/geofencing/BoundingBox;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/geofencing/LatLongPoint;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/enterprise/geofencing/LatLongPoint;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/geofencing/LatLongPoint;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/enterprise/geofencing/LatLongPoint;

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/app/enterprise/geofencing/BoundingBox;-><init>(Landroid/app/enterprise/geofencing/LatLongPoint;Landroid/app/enterprise/geofencing/LatLongPoint;Landroid/app/enterprise/geofencing/LatLongPoint;Landroid/app/enterprise/geofencing/LatLongPoint;)V

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v3, v2, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    iget-object v5, v0, Landroid/app/enterprise/geofencing/BoundingBox;->left:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v5, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    cmpg-double v3, v3, v5

    if-gez v3, :cond_0

    iput-object v2, v0, Landroid/app/enterprise/geofencing/BoundingBox;->left:Landroid/app/enterprise/geofencing/LatLongPoint;

    :cond_0
    iget-wide v3, v2, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    iget-object v5, v0, Landroid/app/enterprise/geofencing/BoundingBox;->right:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v5, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    cmpl-double v3, v3, v5

    if-lez v3, :cond_1

    iput-object v2, v0, Landroid/app/enterprise/geofencing/BoundingBox;->right:Landroid/app/enterprise/geofencing/LatLongPoint;

    :cond_1
    iget-wide v3, v2, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    iget-object v5, v0, Landroid/app/enterprise/geofencing/BoundingBox;->top:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v5, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    cmpl-double v3, v3, v5

    if-lez v3, :cond_2

    iput-object v2, v0, Landroid/app/enterprise/geofencing/BoundingBox;->top:Landroid/app/enterprise/geofencing/LatLongPoint;

    :cond_2
    iget-wide v3, v2, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    iget-object v5, v0, Landroid/app/enterprise/geofencing/BoundingBox;->bottom:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v5, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    cmpg-double v3, v3, v5

    if-gez v3, :cond_3

    iput-object v2, v0, Landroid/app/enterprise/geofencing/BoundingBox;->bottom:Landroid/app/enterprise/geofencing/LatLongPoint;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private checkDeviceInsideBoundingbox(Landroid/location/Location;Landroid/app/enterprise/geofencing/BoundingBox;)Z
    .locals 7

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    iget-object v5, p2, Landroid/app/enterprise/geofencing/BoundingBox;->left:Landroid/app/enterprise/geofencing/LatLongPoint;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iget-object v5, p2, Landroid/app/enterprise/geofencing/BoundingBox;->top:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v5, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    cmpg-double v5, v0, v5

    if-gtz v5, :cond_0

    iget-object v5, p2, Landroid/app/enterprise/geofencing/BoundingBox;->bottom:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v5, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    cmpl-double v5, v0, v5

    if-ltz v5, :cond_0

    iget-object v5, p2, Landroid/app/enterprise/geofencing/BoundingBox;->right:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v5, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    cmpg-double v5, v2, v5

    if-gtz v5, :cond_0

    iget-object v5, p2, Landroid/app/enterprise/geofencing/BoundingBox;->left:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v5, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    cmpl-double v5, v2, v5

    if-ltz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method private checkDeviceInsideCircleSpherical(Landroid/location/Location;Landroid/app/enterprise/geofencing/CircularGeofence;)Z
    .locals 30

    const-wide v2, 0x40b8e30000000000L

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v18

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v20

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/enterprise/geofencing/CircularGeofence;->center:Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v4, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/enterprise/geofencing/CircularGeofence;->center:Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v6, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    const-wide v24, 0x409925604189374cL

    move-object/from16 v0, p2

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/CircularGeofence;->radius:D

    move-wide/from16 v26, v0

    mul-double v22, v24, v26

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    sub-double v28, v16, v14

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    add-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->acos(D)D

    move-result-wide v24

    mul-double v24, v24, v2

    const-wide v26, 0x408f400000000000L

    mul-double v8, v24, v26

    cmpg-double v24, v8, v22

    if-gtz v24, :cond_0

    const/16 v24, 0x1

    :goto_0
    return v24

    :cond_0
    const/16 v24, 0x0

    goto :goto_0
.end method

.method private checkDeviceInsideLinear(Landroid/location/Location;Landroid/app/enterprise/geofencing/LinearGeofence;)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v1, p2, Landroid/app/enterprise/geofencing/LinearGeofence;->optimizedPoints:Ljava/util/List;

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I

    move-result v0

    if-ne v0, v7, :cond_0

    move v6, v7

    :goto_0
    if-ne v6, v7, :cond_1

    move v0, v7

    :goto_1
    return v0

    :cond_0
    move v6, v8

    goto :goto_0

    :cond_1
    move v0, v8

    goto :goto_1
.end method

.method private declared-synchronized checkDeviceInsideOrOutsideGeo(Landroid/location/Location;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/enterprise/geofencing/Geofence;

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkGeofenceInsideOrOutside(Landroid/location/Location;Landroid/app/enterprise/geofencing/Geofence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    move-object v2, v3

    :goto_1
    monitor-exit p0

    throw v4

    :cond_1
    const/4 v4, 0x1

    if-ne p2, v4, :cond_2

    :try_start_2
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->sendIntenttoAdmins(Ljava/util/List;)V

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    :goto_2
    move-object v2, v3

    :goto_3
    monitor-exit p0

    return-object v4

    :cond_3
    move-object v4, v3

    goto :goto_2

    :cond_4
    move-object v4, v2

    goto :goto_3

    :catchall_1
    move-exception v4

    goto :goto_1
.end method

.method private checkDeviceInsidePolygon(Landroid/location/Location;Landroid/app/enterprise/geofencing/PolygonalGeofence;)Z
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-object v1, p2, Landroid/app/enterprise/geofencing/PolygonalGeofence;->optimizedPoints:Ljava/util/List;

    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I

    move-result v0

    if-ne v0, v9, :cond_0

    move v8, v9

    :goto_0
    if-ne v8, v9, :cond_1

    move v0, v9

    :goto_1
    return v0

    :cond_0
    move v8, v10

    goto :goto_0

    :cond_1
    iget-object v3, p2, Landroid/app/enterprise/geofencing/PolygonalGeofence;->pointsWithinGraceLimit:Ljava/util/List;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I

    move-result v0

    if-ne v0, v9, :cond_2

    move v8, v9

    :goto_2
    if-ne v8, v9, :cond_3

    move v0, v9

    goto :goto_1

    :cond_2
    move v8, v10

    goto :goto_2

    :cond_3
    move v0, v10

    goto :goto_1
.end method

.method private checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;DD)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    new-array v5, v7, [D

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    new-array v6, v7, [D

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v7, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    aput-wide v7, v5, v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v7, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    aput-wide v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    add-int/lit8 v3, v4, -0x1

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_5

    aget-wide v7, v6, v2

    cmpl-double v7, v7, p4

    if-lez v7, :cond_2

    const/4 v7, 0x1

    :goto_2
    aget-wide v8, v6, v3

    cmpl-double v8, v8, p4

    if-lez v8, :cond_3

    const/4 v8, 0x1

    :goto_3
    if-eq v7, v8, :cond_1

    aget-wide v7, v5, v3

    aget-wide v9, v5, v2

    sub-double/2addr v7, v9

    aget-wide v9, v6, v2

    sub-double v9, p4, v9

    mul-double/2addr v7, v9

    aget-wide v9, v6, v3

    aget-wide v11, v6, v2

    sub-double/2addr v9, v11

    div-double/2addr v7, v9

    aget-wide v9, v5, v2

    add-double/2addr v7, v9

    cmpg-double v7, p2, v7

    if-gtz v7, :cond_1

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :cond_1
    :goto_4
    add-int/lit8 v1, v2, 0x1

    move v3, v2

    move v2, v1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    return v0
.end method

.method private checkGeofenceInsideOrOutside(Landroid/location/Location;Landroid/app/enterprise/geofencing/Geofence;)Z
    .locals 3

    const/4 v1, 0x1

    iget v0, p2, Landroid/app/enterprise/geofencing/Geofence;->type:I

    if-ne v0, v1, :cond_0

    check-cast p2, Landroid/app/enterprise/geofencing/CircularGeofence;

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideCircleSpherical(Landroid/location/Location;Landroid/app/enterprise/geofencing/CircularGeofence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p2, Landroid/app/enterprise/geofencing/Geofence;->type:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    move-object v0, p2

    check-cast v0, Landroid/app/enterprise/geofencing/PolygonalGeofence;

    iget-object v0, v0, Landroid/app/enterprise/geofencing/PolygonalGeofence;->boundingBox:Landroid/app/enterprise/geofencing/BoundingBox;

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideBoundingbox(Landroid/location/Location;Landroid/app/enterprise/geofencing/BoundingBox;)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p2, Landroid/app/enterprise/geofencing/PolygonalGeofence;

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsidePolygon(Landroid/location/Location;Landroid/app/enterprise/geofencing/PolygonalGeofence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_1
    iget v0, p2, Landroid/app/enterprise/geofencing/Geofence;->type:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    move-object v0, p2

    check-cast v0, Landroid/app/enterprise/geofencing/LinearGeofence;

    iget-object v0, v0, Landroid/app/enterprise/geofencing/LinearGeofence;->boundingBox:Landroid/app/enterprise/geofencing/BoundingBox;

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideBoundingbox(Landroid/location/Location;Landroid/app/enterprise/geofencing/BoundingBox;)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p2, Landroid/app/enterprise/geofencing/LinearGeofence;

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideLinear(Landroid/location/Location;Landroid/app/enterprise/geofencing/LinearGeofence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized checkMonitoring()V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->setLocationManager()V

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    sget-object v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    new-instance v4, Landroid/location/Criteria;

    invoke-direct {v4}, Landroid/location/Criteria;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/location/Criteria;->setAccuracy(I)V

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/location/Criteria;->setBearingRequired(Z)V

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/location/Criteria;->setCostAllowed(Z)V

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/location/Criteria;->setPowerRequirement(I)V

    new-instance v0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;Lcom/android/server/enterprise/geofencing/GeofenceService$1;)V

    sput-object v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getEffectiveMinTimeParameter()J

    move-result-wide v1

    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getEffectiveMinDistanceParameter()F

    move-result v3

    sget-object v5, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    iget-object v6, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(JFLandroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_2
    const-string v0, "GeofenceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkMonitoring - EX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deviceLocationUnavailableMessage(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private convertToLinear(Landroid/app/enterprise/geofencing/LinearGeofence;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/geofencing/LinearGeofence;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;"
        }
    .end annotation

    iget-object v9, p1, Landroid/app/enterprise/geofencing/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    add-int/lit8 v1, v3, -0x1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    div-int/lit8 v9, v3, 0x2

    if-ge v0, v9, :cond_0

    iget-object v9, p1, Landroid/app/enterprise/geofencing/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v10, v9, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    iget-object v9, p1, Landroid/app/enterprise/geofencing/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v12, v9, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    add-double v9, v10, v12

    const-wide/high16 v11, 0x3fe0

    mul-double v4, v9, v11

    iget-object v9, p1, Landroid/app/enterprise/geofencing/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v10, v9, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    iget-object v9, p1, Landroid/app/enterprise/geofencing/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v12, v9, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    add-double v9, v10, v12

    const-wide/high16 v11, 0x3fe0

    mul-double v6, v9, v11

    new-instance v2, Landroid/app/enterprise/geofencing/LatLongPoint;

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v8
.end method

.method private createGracePoints(Ljava/util/List;D)Ljava/util/List;
    .locals 47
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;D)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;"
        }
    .end annotation

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v31, 0x0

    const-wide/16 v7, 0x0

    const-wide v17, 0x3f747ae147ae147bL

    const-wide v20, 0x3f747ae147ae147bL

    const-wide v41, 0x3ee2cc82c7677f8dL

    mul-double p2, p2, v41

    const/4 v14, 0x0

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v41

    move/from16 v0, v41

    if-ge v14, v0, :cond_b

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v41

    add-int/lit8 v41, v41, -0x1

    move/from16 v0, v41

    if-ne v14, v0, :cond_5

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/geofencing/LatLongPoint;

    const/16 v41, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/enterprise/geofencing/LatLongPoint;

    :goto_1
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v41, v0

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v43, v0

    sub-double v41, v41, v43

    const-wide/16 v43, 0x0

    cmpl-double v41, v41, v43

    if-nez v41, :cond_0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v41, v0

    const-wide/16 v43, 0x0

    cmpl-double v41, v41, v43

    if-ltz v41, :cond_6

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v41, v0

    sub-double v41, v41, v17

    move-wide/from16 v0, v41

    iput-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    :cond_0
    :goto_2
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v43, v0

    sub-double v41, v41, v43

    const-wide/16 v43, 0x0

    cmpl-double v41, v41, v43

    if-nez v41, :cond_1

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    const-wide/16 v43, 0x0

    cmpl-double v41, v41, v43

    if-ltz v41, :cond_7

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    sub-double v41, v41, v20

    move-wide/from16 v0, v41

    iput-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    :cond_1
    :goto_3
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v43, v0

    sub-double v41, v41, v43

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v43, v0

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v45, v0

    sub-double v43, v43, v45

    div-double v29, v41, v43

    invoke-static/range {v29 .. v30}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v41

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v26, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v41, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v43, v0

    add-double v41, v41, v43

    const-wide/high16 v43, 0x4000

    div-double v41, v41, v43

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v43, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v45, v0

    add-double v43, v43, v45

    const-wide/high16 v45, 0x4000

    div-double v43, v43, v45

    move-object/from16 v0, v26

    move-wide/from16 v1, v41

    move-wide/from16 v3, v43

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    const-wide/high16 v41, 0x3ff0

    div-double v41, v41, v29

    move-wide/from16 v0, v41

    neg-double v0, v0

    move-wide/from16 v31, v0

    const-wide/high16 v41, 0x3ff0

    mul-double v43, v31, v31

    add-double v41, v41, v43

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v41

    div-double v7, p2, v41

    const-wide/16 v41, 0x0

    cmpl-double v41, v29, v41

    if-lez v41, :cond_2

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v43, v0

    cmpg-double v41, v41, v43

    if-ltz v41, :cond_3

    :cond_2
    const-wide/16 v41, 0x0

    cmpg-double v41, v29, v41

    if-gez v41, :cond_8

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v43, v0

    cmpl-double v41, v41, v43

    if-lez v41, :cond_8

    :cond_3
    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    mul-double v43, v31, v7

    add-double v36, v41, v43

    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    sub-double v41, v36, v41

    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v43, v0

    mul-double v43, v43, v31

    add-double v41, v41, v43

    div-double v34, v41, v31

    new-instance v41, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v41

    move-wide/from16 v1, v34

    move-wide/from16 v3, v36

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/geofencing/LatLongPoint;

    add-int/lit8 v41, v14, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/enterprise/geofencing/LatLongPoint;

    goto/16 :goto_1

    :cond_6
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v41, v0

    add-double v41, v41, v17

    move-wide/from16 v0, v41

    iput-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    goto/16 :goto_2

    :cond_7
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    add-double v41, v41, v20

    move-wide/from16 v0, v41

    iput-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    goto/16 :goto_3

    :cond_8
    const-wide/16 v41, 0x0

    cmpl-double v41, v29, v41

    if-lez v41, :cond_9

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v43, v0

    cmpl-double v41, v41, v43

    if-gtz v41, :cond_a

    :cond_9
    const-wide/16 v41, 0x0

    cmpg-double v41, v29, v41

    if-gez v41, :cond_4

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v43, v0

    cmpg-double v41, v41, v43

    if-gez v41, :cond_4

    :cond_a
    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    mul-double v43, v31, v7

    sub-double v36, v41, v43

    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    sub-double v41, v36, v41

    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v43, v0

    mul-double v43, v43, v31

    add-double v41, v41, v43

    div-double v34, v41, v31

    new-instance v41, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v41

    move-wide/from16 v1, v34

    move-wide/from16 v3, v36

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_b
    const/16 v38, 0x0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v41

    add-int/lit8 v40, v41, -0x1

    const/4 v14, 0x0

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v41

    add-int/lit8 v16, v41, -0x1

    :goto_5
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v41

    add-int/lit8 v41, v41, -0x1

    move/from16 v0, v41

    if-ge v14, v0, :cond_c

    move-object/from16 v0, v33

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/Double;

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    move-object/from16 v0, v33

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/Double;

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    move-object/from16 v0, v19

    move/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v19

    move/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v43, v0

    mul-double v43, v43, v24

    sub-double v41, v41, v43

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v43, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v45, v0

    mul-double v45, v45, v22

    sub-double v43, v43, v45

    sub-double v41, v41, v43

    sub-double v43, v22, v24

    div-double v9, v41, v43

    mul-double v41, v22, v9

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v43, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v45, v0

    mul-double v45, v45, v22

    sub-double v43, v43, v45

    add-double v11, v41, v43

    new-instance v41, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v41

    invoke-direct {v0, v9, v10, v11, v12}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v41

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v39, v38, 0x1

    move/from16 v40, v38

    add-int/lit8 v15, v14, 0x1

    move/from16 v16, v14

    move v14, v15

    move/from16 v38, v39

    goto/16 :goto_5

    :cond_c
    return-object v13
.end method

.method private declared-synchronized deleteFromDB(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "_id"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "GEOFENCING"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFieldsAsUser(Ljava/lang/String;Ljava/util/HashMap;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    monitor-exit p0

    return v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized deleteGeofenceActiveListByAdmin(I)V
    .locals 5

    monitor-enter p0

    const/4 v3, 0x1

    :try_start_0
    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v0, v3

    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "GEOFENCING"

    invoke-virtual {v3, v4, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    const-string v4, "_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "GeofenceService"

    const-string v4, "deleteGeofenceActiveListByAdmin - EX"

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private static deserializeGeoFence([B)Ljava/lang/Object;
    .locals 6

    const/4 v4, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    move-object v3, v4

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v3, v4

    goto :goto_0
.end method

.method private deviceLocationUnavailableMessage(I)V
    .locals 5

    const-string v2, "GeofenceService"

    const-string v3, "DEVICE_LOCATION_UNAVAILABLE"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "edm.intent.action.device.location.unavailable"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "edm.intent.extra.geofence.user.id"

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v2, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v4, "android.permission.sec.MDM_GEOFENCING"

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private enforceGeofencingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    const-string v1, "android.permission.sec.MDM_GEOFENCING"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private findCollinear(Ljava/util/List;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;"
        }
    .end annotation

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v7, v12, :cond_5

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v12, v9, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    iget-wide v14, v10, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    iget-wide v0, v11, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    mul-double/2addr v12, v14

    iget-wide v14, v10, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    iget-wide v0, v11, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v16, v0

    iget-wide v0, v9, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    iget-wide v14, v11, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    iget-wide v0, v9, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v16, v0

    iget-wide v0, v10, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    mul-double v14, v14, v16

    add-double v2, v12, v14

    const-wide/16 v12, 0x0

    cmpl-double v12, v2, v12

    if-nez v12, :cond_3

    invoke-interface {v4, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v4, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v4, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->findFirst(Ljava/util/List;)Landroid/app/enterprise/geofencing/LatLongPoint;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->findLast(Ljava/util/List;)Landroid/app/enterprise/geofencing/LatLongPoint;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_4
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v8
.end method

.method private findFirst(Ljava/util/List;)Landroid/app/enterprise/geofencing/LatLongPoint;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;)",
            "Landroid/app/enterprise/geofencing/LatLongPoint;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/geofencing/LatLongPoint;

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v2, v2, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    iget-wide v4, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v2, v2, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    iget-wide v4, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/geofencing/LatLongPoint;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private findLast(Ljava/util/List;)Landroid/app/enterprise/geofencing/LatLongPoint;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;)",
            "Landroid/app/enterprise/geofencing/LatLongPoint;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/geofencing/LatLongPoint;

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v2, v2, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    iget-wide v4, v1, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v2, v2, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    iget-wide v4, v1, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/geofencing/LatLongPoint;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getActiveGeofenceIdsbyAdmin(Ljava/util/List;I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-string v10, "_id"

    aput-object v10, v0, v9

    iget-object v9, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "GEOFENCING"

    invoke-virtual {v9, v10, v0, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v9, "_id"

    invoke-virtual {v4, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v9, "adminUid"

    invoke-virtual {v4, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, p2, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {p1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v9, "GeofenceService"

    const-string v10, "getActiveGeofenceIdsbyAdmin - EX"

    invoke-static {v9, v10, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    if-eqz v9, :cond_4

    move-object v5, v8

    :cond_4
    move-object v8, v5

    goto :goto_0
.end method

.method private getEffectiveMinDistanceParameter()F
    .locals 9

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x2

    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "distance"

    aput-object v7, v0, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "state"

    aput-object v7, v0, v6

    iget-object v6, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "GEOFENCINGSETTINGS"

    invoke-virtual {v6, v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    const-string/jumbo v6, "state"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "distance"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/geofencing/GeofenceService;->parseStringToFloat(Ljava/lang/String;)F

    move-result v4

    cmpl-float v6, v3, v8

    if-nez v6, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    cmpl-float v6, v4, v8

    if-eqz v6, :cond_0

    cmpl-float v6, v3, v4

    if-lez v6, :cond_0

    move v3, v4

    goto :goto_0

    :cond_2
    return v3
.end method

.method private getEffectiveMinTimeParameter()J
    .locals 12

    const-wide/16 v10, 0x0

    const-wide/16 v3, 0x0

    const/4 v8, 0x2

    new-array v0, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "time"

    aput-object v9, v0, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "state"

    aput-object v9, v0, v8

    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "GEOFENCINGSETTINGS"

    invoke-virtual {v8, v9, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    const-string/jumbo v8, "state"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "time"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/geofencing/GeofenceService;->parseStringToLong(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v8, v3, v10

    if-nez v8, :cond_1

    move-wide v3, v5

    goto :goto_0

    :cond_1
    cmp-long v8, v5, v10

    if-eqz v8, :cond_0

    cmp-long v8, v3, v5

    if-lez v8, :cond_0

    move-wide v3, v5

    goto :goto_0

    :cond_2
    cmp-long v8, v3, v10

    if-nez v8, :cond_3

    const-wide/32 v3, 0xea60

    :cond_3
    return-wide v3
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 5

    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "ADMIN_INFO"

    const-string v4, "adminName"

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private isAdminHasGeofence(I)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    :try_start_0
    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v0, v4

    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "GEOFENCING"

    invoke-virtual {v4, v5, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v2

    :try_start_2
    const-string v4, "GeofenceService"

    const-string v5, "isAdminHasGeofence - EX"

    invoke-static {v4, v5, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_1

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_1
    throw v3

    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method private isDeviceInsideGeofence(I)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v8, "GeofenceService"

    const-string v9, "isDeviceInsideGeofence"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    const/4 v0, 0x0

    const/4 v4, 0x0

    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    invoke-virtual {v1, v11}, Landroid/location/Criteria;->setAccuracy(I)V

    invoke-virtual {v1, v10}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    invoke-virtual {v1, v10}, Landroid/location/Criteria;->setBearingRequired(Z)V

    invoke-virtual {v1, v10}, Landroid/location/Criteria;->setCostAllowed(Z)V

    invoke-virtual {v1, v11}, Landroid/location/Criteria;->setPowerRequirement(I)V

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocation:Landroid/location/Location;

    if-nez v4, :cond_0

    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v1, v9}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v8, "passive"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v8, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :cond_0
    :goto_0
    if-nez v4, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deviceLocationUnavailableMessage(I)V

    :goto_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catch_0
    move-exception v2

    const-string v8, "GeofenceService"

    const-string v9, "isDeviceInsideGeofence - EX"

    invoke-static {v8, v9, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v4, v10}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideOrOutsideGeo(Landroid/location/Location;Z)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getActiveGeofenceIdsbyAdmin(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method private declared-synchronized loadGeofenceActiveList(I)V
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "user"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "GEOFENCINGSETTINGS"

    const-string v10, "adminUid"

    iget v11, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "GEOFENCINGSETTINGS"

    const-string/jumbo v10, "state"

    invoke-virtual {v8, v3, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->updateGeofenceActiveListbyAdmin(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v8, "GeofenceService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadGeofenceActiveList - EX"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    :cond_2
    monitor-exit p0

    return-void
.end method

.method private parseStringToFloat(Ljava/lang/String;)F
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseStringToLong(Ljava/lang/String;)J
    .locals 3

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method private sendIntenttoAdmins(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v14, "GeofenceService"

    const-string v15, "sendIntenttoAdmins"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "user"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/UserManager;

    invoke-virtual {v13}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/UserInfo;

    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "ADMIN"

    const-string v16, "adminUid"

    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    move/from16 v17, v0

    invoke-virtual/range {v14 .. v17}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getActiveGeofenceIdsbyAdmin(Ljava/util/List;I)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_3

    new-instance v6, Landroid/content/Intent;

    const-string v14, "edm.intent.action.device.inside"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    new-array v5, v14, [I

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    if-ge v2, v14, :cond_2

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const-string v14, "edm.intent.extra.geofence.id"

    invoke-virtual {v6, v14, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const-string v14, "edm.intent.extra.geofence.user.id"

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v14, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    move-result v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    new-instance v15, Landroid/os/UserHandle;

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    invoke-direct/range {v15 .. v16}, Landroid/os/UserHandle;-><init>(I)V

    const-string v16, "android.permission.sec.MDM_GEOFENCING"

    move-object/from16 v0, v16

    invoke-virtual {v14, v6, v15, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "GEOFENCINGSETTINGS"

    const-string/jumbo v16, "state"

    move-object/from16 v0, v16

    invoke-virtual {v14, v9, v15, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    new-instance v6, Landroid/content/Intent;

    const-string v14, "edm.intent.action.device.outside"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v14, "edm.intent.extra.geofence.user.id"

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v14, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    move-result v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    new-instance v15, Landroid/os/UserHandle;

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    invoke-direct/range {v15 .. v16}, Landroid/os/UserHandle;-><init>(I)V

    const-string v16, "android.permission.sec.MDM_GEOFENCING"

    move-object/from16 v0, v16

    invoke-virtual {v14, v6, v15, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v14

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private serializeGeoFence(Ljava/lang/Object;)[B
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-interface {v2, p1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/io/ObjectOutput;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private setLocationManager()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    return-void
.end method

.method private declared-synchronized updateGeofenceActiveListbyAdmin(I)V
    .locals 13

    const/4 v12, 0x3

    const/4 v11, 0x2

    monitor-enter p0

    const/4 v9, 0x3

    :try_start_0
    new-array v1, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "_id"

    aput-object v10, v1, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "type"

    aput-object v10, v1, v9

    const/4 v9, 0x2

    const-string v10, "blobdata"

    aput-object v10, v1, v9

    iget-object v9, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "GEOFENCING"

    invoke-virtual {v9, v10, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "_id"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iget-object v9, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "type"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v9, "blobdata"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    if-ne v8, v11, :cond_2

    invoke-static {v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/geofencing/PolygonalGeofence;

    iput v5, v7, Landroid/app/enterprise/geofencing/PolygonalGeofence;->id:I

    iput v8, v7, Landroid/app/enterprise/geofencing/PolygonalGeofence;->type:I

    iget-object v9, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_1
    const-string v9, "GeofenceService"

    const-string/jumbo v10, "updateGeofenceActiveList - EX"

    invoke-static {v9, v10, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :cond_2
    if-ne v8, v12, :cond_3

    :try_start_2
    invoke-static {v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/enterprise/geofencing/LinearGeofence;

    iput v5, v6, Landroid/app/enterprise/geofencing/LinearGeofence;->id:I

    iput v8, v6, Landroid/app/enterprise/geofencing/LinearGeofence;->type:I

    iget-object v9, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    :cond_3
    :try_start_3
    invoke-static {v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/geofencing/CircularGeofence;

    iput v5, v0, Landroid/app/enterprise/geofencing/CircularGeofence;->id:I

    iput v8, v0, Landroid/app/enterprise/geofencing/CircularGeofence;->type:I

    iget-object v9, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method private validateCircularGeofence(Landroid/app/enterprise/geofencing/LatLongPoint;D)Z
    .locals 5

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmpg-double v1, p2, v1

    if-gtz v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v1, p1, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    const-wide v3, 0x4056800000000000L

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_2

    iget-wide v1, p1, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    const-wide v3, -0x3fa9800000000000L

    cmpg-double v1, v1, v3

    if-ltz v1, :cond_2

    iget-wide v1, p1, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    const-wide v3, 0x4066800000000000L

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_2

    iget-wide v1, p1, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    const-wide v3, -0x3f99800000000000L

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validatePolygonalGeofence(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v4, v1, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    const-wide v6, 0x4056800000000000L

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_0

    iget-wide v4, v1, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    const-wide v6, -0x3fa9800000000000L

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_0

    iget-wide v4, v1, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    const-wide v6, 0x4066800000000000L

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_0

    iget-wide v4, v1, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    const-wide v6, -0x3f99800000000000L

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    return v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1
.end method

.method private writeGeofenceToDB(Landroid/app/enterprise/ContextInfo;I[B)I
    .locals 5

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-nez p3, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "blobdata"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "GEOFENCING"

    invoke-virtual {v3, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insertValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->updateGeofenceActiveListbyAdmin(I)V

    goto :goto_0
.end method


# virtual methods
.method public createGeofence(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/geofencing/CircularGeofence;)I
    .locals 9

    const/4 v8, 0x1

    const-string v5, "GeofenceService"

    const-string v6, "createGeofence"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v1, -0x1

    iget-object v5, p2, Landroid/app/enterprise/geofencing/CircularGeofence;->center:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v6, p2, Landroid/app/enterprise/geofencing/CircularGeofence;->radius:D

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/enterprise/geofencing/GeofenceService;->validateCircularGeofence(Landroid/app/enterprise/geofencing/LatLongPoint;D)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->serializeGeoFence(Ljava/lang/Object;)[B

    move-result-object v4

    if-nez v4, :cond_0

    move v2, v1

    :goto_0
    return v2

    :cond_0
    invoke-direct {p0, p1, v8, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->writeGeofenceToDB(Landroid/app/enterprise/ContextInfo;I[B)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    move v2, v1

    goto :goto_0
.end method

.method public createGeofence(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/geofencing/Geofence;)I
    .locals 3

    const/4 v0, -0x1

    iget v1, p2, Landroid/app/enterprise/geofencing/Geofence;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    check-cast p2, Landroid/app/enterprise/geofencing/CircularGeofence;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createGeofence(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/geofencing/CircularGeofence;)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p2, Landroid/app/enterprise/geofencing/Geofence;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    check-cast p2, Landroid/app/enterprise/geofencing/PolygonalGeofence;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createGeofence(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/geofencing/PolygonalGeofence;)I

    move-result v0

    goto :goto_0

    :cond_2
    iget v1, p2, Landroid/app/enterprise/geofencing/Geofence;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    check-cast p2, Landroid/app/enterprise/geofencing/LinearGeofence;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createGeofence(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/geofencing/LinearGeofence;)I

    move-result v0

    goto :goto_0
.end method

.method public createGeofence(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/geofencing/LinearGeofence;)I
    .locals 15

    const-string v11, "GeofenceService"

    const-string v12, "createGeofence"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    move-object/from16 v0, p1

    iget v7, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v8, -0x1

    move-object/from16 v0, p2

    iget-wide v5, v0, Landroid/app/enterprise/geofencing/LinearGeofence;->width:D

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p2

    iget-wide v11, v0, Landroid/app/enterprise/geofencing/LinearGeofence;->width:D

    const-wide/16 v13, 0x0

    cmpg-double v11, v11, v13

    if-gtz v11, :cond_2

    const-wide/high16 v11, 0x3ff0

    move-object/from16 v0, p2

    iput-wide v11, v0, Landroid/app/enterprise/geofencing/LinearGeofence;->width:D

    :cond_0
    :goto_0
    move-object/from16 v0, p2

    iget-object v11, v0, Landroid/app/enterprise/geofencing/LinearGeofence;->points:Ljava/util/List;

    move-object/from16 v0, p2

    iget-wide v12, v0, Landroid/app/enterprise/geofencing/LinearGeofence;->width:D

    invoke-virtual {p0, v11, v12, v13}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createPolygonalPoints2(Ljava/util/List;D)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x2

    if-le v11, v12, :cond_5

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->validatePolygonalGeofence(Ljava/util/List;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->findCollinear(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x2

    if-gt v11, v12, :cond_3

    :cond_1
    const/4 v11, -0x1

    :goto_1
    return v11

    :cond_2
    move-object/from16 v0, p2

    iget-wide v11, v0, Landroid/app/enterprise/geofencing/LinearGeofence;->width:D

    const-wide v13, 0x412e848000000000L

    cmpl-double v11, v11, v13

    if-lez v11, :cond_0

    const-wide v11, 0x412e847e00000000L

    move-object/from16 v0, p2

    iput-wide v11, v0, Landroid/app/enterprise/geofencing/LinearGeofence;->width:D

    goto :goto_0

    :cond_3
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->calcBoundingBox(Ljava/util/List;)Landroid/app/enterprise/geofencing/BoundingBox;

    move-result-object v4

    new-instance v1, Landroid/app/enterprise/geofencing/LinearGeofence;

    invoke-direct/range {v1 .. v6}, Landroid/app/enterprise/geofencing/LinearGeofence;-><init>(Ljava/util/List;Ljava/util/List;Landroid/app/enterprise/geofencing/BoundingBox;D)V

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->serializeGeoFence(Ljava/lang/Object;)[B

    move-result-object v10

    const/4 v11, 0x3

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v11, v10}, Lcom/android/server/enterprise/geofencing/GeofenceService;->writeGeofenceToDB(Landroid/app/enterprise/ContextInfo;I[B)I

    move-result v8

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    move v11, v8

    goto :goto_1

    :cond_5
    move v11, v8

    goto :goto_1
.end method

.method public createGeofence(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/geofencing/PolygonalGeofence;)I
    .locals 13

    const-string v1, "GeofenceService"

    const-string v2, "createGeofence"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v8, -0x1

    iget-object v1, p2, Landroid/app/enterprise/geofencing/PolygonalGeofence;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    iget-object v1, p2, Landroid/app/enterprise/geofencing/PolygonalGeofence;->points:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->validatePolygonalGeofence(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p2, Landroid/app/enterprise/geofencing/PolygonalGeofence;->points:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->findCollinear(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_1

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->calcBoundingBox(Ljava/util/List;)Landroid/app/enterprise/geofencing/BoundingBox;

    move-result-object v6

    iget-wide v1, p2, Landroid/app/enterprise/geofencing/PolygonalGeofence;->graceDistance:D

    const-wide/16 v11, 0x0

    cmpl-double v1, v1, v11

    if-nez v1, :cond_3

    move-object v5, v4

    :goto_1
    new-instance v0, Landroid/app/enterprise/geofencing/PolygonalGeofence;

    iget-object v1, p2, Landroid/app/enterprise/geofencing/PolygonalGeofence;->points:Ljava/util/List;

    iget-wide v2, p2, Landroid/app/enterprise/geofencing/PolygonalGeofence;->graceDistance:D

    invoke-direct/range {v0 .. v6}, Landroid/app/enterprise/geofencing/PolygonalGeofence;-><init>(Ljava/util/List;DLjava/util/List;Ljava/util/List;Landroid/app/enterprise/geofencing/BoundingBox;)V

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->serializeGeoFence(Ljava/lang/Object;)[B

    move-result-object v10

    const/4 v1, 0x2

    invoke-direct {p0, p1, v1, v10}, Lcom/android/server/enterprise/geofencing/GeofenceService;->writeGeofenceToDB(Landroid/app/enterprise/ContextInfo;I[B)I

    move-result v8

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    move v1, v8

    goto :goto_0

    :cond_3
    iget-wide v1, p2, Landroid/app/enterprise/geofencing/PolygonalGeofence;->graceDistance:D

    invoke-direct {p0, v4, v1, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createGracePoints(Ljava/util/List;D)Ljava/util/List;

    move-result-object v5

    goto :goto_1
.end method

.method public createPolygonalPoints2(Ljava/util/List;D)Ljava/util/List;
    .locals 58
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;D)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;"
        }
    .end annotation

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v41, Ljava/util/ArrayList;

    invoke-direct/range {v41 .. v41}, Ljava/util/ArrayList;-><init>()V

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v39, 0x0

    const-wide/16 v7, 0x0

    const-wide v22, 0x3f747ae147ae147bL

    const-wide v26, 0x3f747ae147ae147bL

    const/16 v42, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide v52, 0x3ee2cc82c7677f8dL

    mul-double p2, p2, v52

    const/16 v21, 0x0

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v52

    move/from16 v0, v21

    move/from16 v1, v52

    if-ge v0, v1, :cond_15

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v52

    add-int/lit8 v52, v52, -0x1

    move/from16 v0, v21

    move/from16 v1, v52

    if-ne v0, v1, :cond_8

    add-int/lit8 v52, v21, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/enterprise/geofencing/LatLongPoint;

    :goto_1
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v52, v0

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    sub-double v52, v52, v54

    const-wide/16 v54, 0x0

    cmpl-double v52, v52, v54

    if-nez v52, :cond_0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v52, v0

    const-wide/16 v54, 0x0

    cmpl-double v52, v52, v54

    if-ltz v52, :cond_9

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v52, v0

    sub-double v52, v52, v22

    move-wide/from16 v0, v52

    iput-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    :cond_0
    :goto_2
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    sub-double v52, v52, v54

    const-wide/16 v54, 0x0

    cmpl-double v52, v52, v54

    if-nez v52, :cond_1

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    const-wide/16 v54, 0x0

    cmpl-double v52, v52, v54

    if-ltz v52, :cond_a

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    sub-double v52, v52, v26

    move-wide/from16 v0, v52

    iput-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    :cond_1
    :goto_3
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    sub-double v52, v52, v54

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v56, v0

    sub-double v54, v54, v56

    div-double v37, v52, v54

    invoke-static/range {v37 .. v38}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v52

    move-object/from16 v0, v41

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v32, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v52, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    add-double v52, v52, v54

    const-wide/high16 v54, 0x4000

    div-double v52, v52, v54

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v56, v0

    add-double v54, v54, v56

    const-wide/high16 v56, 0x4000

    div-double v54, v54, v56

    move-object/from16 v0, v32

    move-wide/from16 v1, v52

    move-wide/from16 v3, v54

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    const-wide/high16 v52, 0x3ff0

    div-double v52, v52, v37

    move-wide/from16 v0, v52

    neg-double v0, v0

    move-wide/from16 v39, v0

    const-wide/high16 v52, 0x3ff0

    mul-double v54, v39, v39

    add-double v52, v52, v54

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v52

    div-double v7, p2, v52

    const-wide/16 v52, 0x0

    cmpl-double v52, v37, v52

    if-lez v52, :cond_2

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    cmpg-double v52, v52, v54

    if-ltz v52, :cond_3

    :cond_2
    const-wide/16 v52, 0x0

    cmpg-double v52, v37, v52

    if-gez v52, :cond_d

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    cmpl-double v52, v52, v54

    if-lez v52, :cond_d

    :cond_3
    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    mul-double v54, v39, v7

    add-double v47, v52, v54

    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    sub-double v52, v47, v52

    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    mul-double v54, v54, v39

    add-double v52, v52, v54

    div-double v43, v52, v39

    new-instance v52, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v52

    move-wide/from16 v1, v43

    move-wide/from16 v3, v47

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v24

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    mul-double v54, v39, v7

    sub-double v49, v52, v54

    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    sub-double v52, v49, v52

    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    mul-double v54, v54, v39

    add-double v52, v52, v54

    div-double v45, v52, v39

    new-instance v52, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v52

    move-wide/from16 v1, v45

    move-wide/from16 v3, v49

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v25

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v21, :cond_4

    move-object/from16 v42, v5

    :cond_4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v52

    add-int/lit8 v52, v52, -0x1

    move/from16 v0, v21

    move/from16 v1, v52

    if-ne v0, v1, :cond_5

    move-object/from16 v42, v6

    :cond_5
    if-eqz v21, :cond_6

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v52

    add-int/lit8 v52, v52, -0x1

    move/from16 v0, v21

    move/from16 v1, v52

    if-ne v0, v1, :cond_7

    :cond_6
    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    mul-double v54, v39, v7

    add-double v47, v52, v54

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    sub-double v52, v47, v52

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    mul-double v54, v54, v39

    add-double v52, v52, v54

    div-double v43, v52, v39

    if-nez v21, :cond_b

    new-instance v52, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v52

    move-wide/from16 v1, v43

    move-wide/from16 v3, v47

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v20

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    mul-double v54, v39, v7

    sub-double v49, v52, v54

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    sub-double v52, v49, v52

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    mul-double v54, v54, v39

    add-double v52, v52, v54

    div-double v45, v52, v39

    if-nez v21, :cond_c

    new-instance v52, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v52

    move-wide/from16 v1, v45

    move-wide/from16 v3, v49

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v52

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_5
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/geofencing/LatLongPoint;

    add-int/lit8 v52, v21, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/enterprise/geofencing/LatLongPoint;

    goto/16 :goto_1

    :cond_9
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v52, v0

    add-double v52, v52, v22

    move-wide/from16 v0, v52

    iput-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    goto/16 :goto_2

    :cond_a
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    add-double v52, v52, v26

    move-wide/from16 v0, v52

    iput-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    goto/16 :goto_3

    :cond_b
    new-instance v9, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-wide/from16 v0, v43

    move-wide/from16 v2, v47

    invoke-direct {v9, v0, v1, v2, v3}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    goto :goto_4

    :cond_c
    new-instance v10, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-wide/from16 v0, v45

    move-wide/from16 v2, v49

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    goto :goto_5

    :cond_d
    const-wide/16 v52, 0x0

    cmpl-double v52, v37, v52

    if-lez v52, :cond_e

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    cmpl-double v52, v52, v54

    if-gtz v52, :cond_f

    :cond_e
    const-wide/16 v52, 0x0

    cmpg-double v52, v37, v52

    if-gez v52, :cond_7

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    cmpg-double v52, v52, v54

    if-gez v52, :cond_7

    :cond_f
    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    mul-double v54, v39, v7

    sub-double v47, v52, v54

    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    sub-double v52, v47, v52

    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    mul-double v54, v54, v39

    add-double v52, v52, v54

    div-double v43, v52, v39

    new-instance v52, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v52

    move-wide/from16 v1, v43

    move-wide/from16 v3, v47

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v24

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    mul-double v54, v39, v7

    add-double v49, v52, v54

    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    sub-double v52, v49, v52

    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    mul-double v54, v54, v39

    add-double v52, v52, v54

    div-double v45, v52, v39

    new-instance v52, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v52

    move-wide/from16 v1, v45

    move-wide/from16 v3, v49

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v25

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v21, :cond_10

    move-object/from16 v42, v5

    :cond_10
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v52

    add-int/lit8 v52, v52, -0x1

    move/from16 v0, v21

    move/from16 v1, v52

    if-ne v0, v1, :cond_11

    move-object/from16 v42, v6

    :cond_11
    if-eqz v21, :cond_12

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v52

    add-int/lit8 v52, v52, -0x1

    move/from16 v0, v21

    move/from16 v1, v52

    if-ne v0, v1, :cond_7

    :cond_12
    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    mul-double v54, v39, v7

    sub-double v47, v52, v54

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    sub-double v52, v47, v52

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    mul-double v54, v54, v39

    add-double v52, v52, v54

    div-double v43, v52, v39

    if-nez v21, :cond_13

    new-instance v52, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v52

    move-wide/from16 v1, v43

    move-wide/from16 v3, v47

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v20

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    mul-double v54, v39, v7

    add-double v49, v52, v54

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    sub-double v52, v49, v52

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    mul-double v54, v54, v39

    add-double v52, v52, v54

    div-double v45, v52, v39

    if-nez v21, :cond_14

    new-instance v52, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v52

    move-wide/from16 v1, v45

    move-wide/from16 v3, v49

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v52

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_13
    new-instance v9, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-wide/from16 v0, v43

    move-wide/from16 v2, v47

    invoke-direct {v9, v0, v1, v2, v3}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    goto :goto_6

    :cond_14
    new-instance v10, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-wide/from16 v0, v45

    move-wide/from16 v2, v49

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    goto/16 :goto_5

    :cond_15
    const/16 v51, 0x0

    const/16 v21, 0x0

    :goto_7
    invoke-interface/range {v41 .. v41}, Ljava/util/List;->size()I

    move-result v52

    add-int/lit8 v52, v52, -0x2

    move/from16 v0, v21

    move/from16 v1, v52

    if-ge v0, v1, :cond_16

    move-object/from16 v0, v41

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/lang/Double;

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v28

    add-int/lit8 v52, v21, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/lang/Double;

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v30

    move-object/from16 v0, v24

    move/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/app/enterprise/geofencing/LatLongPoint;

    add-int/lit8 v52, v51, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v34

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    move-object/from16 v0, v34

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    mul-double v54, v54, v30

    sub-double v52, v52, v54

    move-object/from16 v0, v33

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    move-object/from16 v0, v33

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v56, v0

    mul-double v56, v56, v28

    sub-double v54, v54, v56

    sub-double v52, v52, v54

    sub-double v54, v28, v30

    div-double v12, v52, v54

    mul-double v52, v28, v12

    move-object/from16 v0, v33

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    move-object/from16 v0, v33

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v56, v0

    mul-double v56, v56, v28

    sub-double v54, v54, v56

    add-double v16, v52, v54

    new-instance v52, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v52

    move-wide/from16 v1, v16

    invoke-direct {v0, v12, v13, v1, v2}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v20

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v25

    move/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/app/enterprise/geofencing/LatLongPoint;

    add-int/lit8 v52, v51, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    move-object/from16 v0, v36

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    mul-double v54, v54, v30

    sub-double v52, v52, v54

    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v56, v0

    mul-double v56, v56, v28

    sub-double v54, v54, v56

    sub-double v52, v52, v54

    sub-double v54, v28, v30

    div-double v14, v52, v54

    mul-double v52, v28, v14

    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v56, v0

    mul-double v56, v56, v28

    sub-double v54, v54, v56

    add-double v18, v52, v54

    new-instance v52, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v52

    move-wide/from16 v1, v18

    invoke-direct {v0, v14, v15, v1, v2}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v52

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v51, v51, 0x1

    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_7

    :cond_16
    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v52

    add-int/lit8 v21, v52, -0x1

    :goto_8
    if-ltz v21, :cond_17

    move/from16 v0, v21

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v52

    move-object/from16 v0, v20

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v21, v21, -0x1

    goto :goto_8

    :cond_17
    return-object v20
.end method

.method public declared-synchronized destroyGeofence(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v3, "GeofenceService"

    const-string v4, "destroyGeofence"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deleteFromDB(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isAdminHasGeofence(I)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "GEOFENCINGSETTINGS"

    const-string/jumbo v5, "state"

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public findDistance(Landroid/app/enterprise/geofencing/LatLongPoint;Landroid/app/enterprise/geofencing/LatLongPoint;)D
    .locals 19

    const-wide v1, 0x40aeed880a82edb3L

    move-object/from16 v0, p1

    iget-wide v13, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    move-object/from16 v0, p1

    iget-wide v13, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    move-object/from16 v0, p2

    iget-wide v13, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    move-object/from16 v0, p2

    iget-wide v13, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v15, v15, v17

    sub-double v17, v11, v9

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->acos(D)D

    move-result-wide v13

    mul-double v3, v13, v1

    return-wide v3
.end method

.method public getGeofences(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/Geofence;",
            ">;"
        }
    .end annotation

    const-string v11, "GeofenceService"

    const-string v12, "getGeofences"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x3

    new-array v2, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "_id"

    aput-object v12, v2, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "type"

    aput-object v12, v2, v11

    const/4 v11, 0x2

    const-string v12, "blobdata"

    aput-object v12, v2, v11

    iget-object v11, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "GEOFENCING"

    invoke-virtual {v11, v12, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_4

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "_id"

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string/jumbo v11, "type"

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string v11, "blobdata"

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    invoke-static {v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/enterprise/geofencing/PolygonalGeofence;

    iput v6, v8, Landroid/app/enterprise/geofencing/PolygonalGeofence;->id:I

    iput v10, v8, Landroid/app/enterprise/geofencing/PolygonalGeofence;->type:I

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v11, "GeofenceService"

    const-string v12, "getGeofences - EX"

    invoke-static {v11, v12, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v9, 0x0

    :cond_0
    :goto_1
    return-object v9

    :cond_1
    const/4 v11, 0x3

    if-ne v10, v11, :cond_2

    :try_start_1
    invoke-static {v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/geofencing/LinearGeofence;

    iput v6, v7, Landroid/app/enterprise/geofencing/LinearGeofence;->id:I

    iput v10, v7, Landroid/app/enterprise/geofencing/LinearGeofence;->type:I

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/geofencing/GeofenceService;->convertToLinear(Landroid/app/enterprise/geofencing/LinearGeofence;)Ljava/util/List;

    move-result-object v11

    iput-object v11, v7, Landroid/app/enterprise/geofencing/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/geofencing/CircularGeofence;

    iput v6, v0, Landroid/app/enterprise/geofencing/CircularGeofence;->id:I

    iput v10, v0, Landroid/app/enterprise/geofencing/CircularGeofence;->type:I

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v11

    if-eqz v11, :cond_0

    const/4 v9, 0x0

    goto :goto_1
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    return-object v0
.end method

.method public getMinDistanceParameter(Landroid/app/enterprise/ContextInfo;)F
    .locals 4

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "GEOFENCINGSETTINGS"

    const-string v3, "distance"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->parseStringToFloat(Ljava/lang/String;)F

    move-result v1

    return v1
.end method

.method public getMinTimeParameter(Landroid/app/enterprise/ContextInfo;)J
    .locals 4

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "GEOFENCINGSETTINGS"

    const-string/jumbo v3, "time"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->parseStringToLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method public isDeviceInsideGeofence(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isDeviceInsideGeofence(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isGeofencingEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v5, "GEOFENCINGSETTINGS"

    const-string/jumbo v6, "state"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move v1, v2

    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 0

    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deleteGeofenceActiveListByAdmin(I)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setMinDistanceParameter(Landroid/app/enterprise/ContextInfo;F)Z
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v3, 0x0

    cmpg-float v3, p2, v3

    if-gez v3, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "GEOFENCINGSETTINGS"

    const-string v5, "distance"

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setMinTimeParameter(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-gez v3, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "GEOFENCINGSETTINGS"

    const-string/jumbo v5, "time"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public startGeofencing(Landroid/app/enterprise/ContextInfo;)Z
    .locals 6

    const/4 v2, 0x1

    const-string v3, "GeofenceService"

    const-string/jumbo v4, "startGeofencing"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isAdminHasGeofence(I)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    if-nez v3, :cond_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "GEOFENCINGSETTINGS"

    const-string/jumbo v5, "state"

    invoke-virtual {v3, v0, v4, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->updateGeofenceActiveListbyAdmin(I)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public stopGeofencing(Landroid/app/enterprise/ContextInfo;)Z
    .locals 6

    const/4 v2, 0x0

    const-string v3, "GeofenceService"

    const-string/jumbo v4, "stopGeofencing"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isAdminHasGeofence(I)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "GEOFENCINGSETTINGS"

    const-string/jumbo v5, "state"

    invoke-virtual {v3, v0, v4, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deleteGeofenceActiveListByAdmin(I)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public systemReady()V
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    iput v3, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
