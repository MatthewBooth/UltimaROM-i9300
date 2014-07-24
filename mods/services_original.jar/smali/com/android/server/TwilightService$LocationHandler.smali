.class final Lcom/android/server/TwilightService$LocationHandler;
.super Landroid/os/Handler;
.source "TwilightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TwilightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocationHandler"
.end annotation


# static fields
.field private static final FACTOR_GMT_OFFSET_LONGITUDE:D = 0.004166666666666667

.field private static final LOCATION_UPDATE_DISTANCE_METER:F = 20000.0f

.field private static final LOCATION_UPDATE_ENABLE_INTERVAL_MAX:J = 0xdbba0L

.field private static final LOCATION_UPDATE_ENABLE_INTERVAL_MIN:J = 0x1388L

.field private static final LOCATION_UPDATE_MS:J = 0x5265c00L

.field private static final MIN_LOCATION_UPDATE_MS:J = 0x1b7740L

.field private static final MSG_DO_TWILIGHT_UPDATE:I = 0x4

.field private static final MSG_ENABLE_LOCATION_UPDATES:I = 0x1

.field private static final MSG_GET_NEW_LOCATION_UPDATE:I = 0x2

.field private static final MSG_PROCESS_NEW_LOCATION:I = 0x3


# instance fields
.field private mDidFirstInit:Z

.field private mLastNetworkRegisterTime:J

.field private mLastUpdateInterval:J

.field private mLocation:Landroid/location/Location;

.field private mNetworkListenerEnabled:Z

.field private mPassiveListenerEnabled:Z

.field private final mTwilightCalculator:Lcom/android/server/TwilightCalculator;

.field final synthetic this$0:Lcom/android/server/TwilightService;


# direct methods
.method private constructor <init>(Lcom/android/server/TwilightService;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/TwilightService$LocationHandler;->this$0:Lcom/android/server/TwilightService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-wide/32 v0, -0x1b7740

    iput-wide v0, p0, Lcom/android/server/TwilightService$LocationHandler;->mLastNetworkRegisterTime:J

    new-instance v0, Lcom/android/server/TwilightCalculator;

    invoke-direct {v0}, Lcom/android/server/TwilightCalculator;-><init>()V

    iput-object v0, p0, Lcom/android/server/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/TwilightService;Lcom/android/server/TwilightService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/TwilightService$LocationHandler;-><init>(Lcom/android/server/TwilightService;)V

    return-void
.end method

.method private retrieveLocation()V
    .locals 13

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/server/TwilightService$LocationHandler;->this$0:Lcom/android/server/TwilightService;

    #getter for: Lcom/android/server/TwilightService;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v6}, Lcom/android/server/TwilightService;->access$300(Lcom/android/server/TwilightService;)Landroid/location/LocationManager;

    move-result-object v6

    new-instance v7, Landroid/location/Criteria;

    invoke-direct {v7}, Landroid/location/Criteria;-><init>()V

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/TwilightService$LocationHandler;->this$0:Lcom/android/server/TwilightService;

    #getter for: Lcom/android/server/TwilightService;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v6}, Lcom/android/server/TwilightService;->access$300(Lcom/android/server/TwilightService;)Landroid/location/LocationManager;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-eqz v4, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v4}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v6

    invoke-virtual {v1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    :cond_1
    move-object v4, v1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroid/text/format/Time;->set(J)V

    const-wide v7, 0x3f71111111111111L

    iget-wide v9, v0, Landroid/text/format/Time;->gmtoff:J

    iget v6, v0, Landroid/text/format/Time;->isDst:I

    if-lez v6, :cond_4

    const/16 v6, 0xe10

    :goto_1
    int-to-long v11, v6

    sub-long/2addr v9, v11

    long-to-double v9, v9

    mul-double v2, v7, v9

    new-instance v4, Landroid/location/Location;

    const-string v6, "fake"

    invoke-direct {v4, v6}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    const v6, 0x48cb9d00

    invoke-virtual {v4, v6}, Landroid/location/Location;->setAccuracy(F)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setTime(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    :cond_3
    invoke-direct {p0, v4}, Lcom/android/server/TwilightService$LocationHandler;->setLocation(Landroid/location/Location;)V

    return-void

    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private setLocation(Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-direct {p0}, Lcom/android/server/TwilightService$LocationHandler;->updateTwilightState()V

    return-void
.end method

.method private updateTwilightState()V
    .locals 25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TwilightService$LocationHandler;->this$0:Lcom/android/server/TwilightService;

    const/4 v4, 0x0

    #calls: Lcom/android/server/TwilightService;->setTwilightState(Lcom/android/server/TwilightService$TwilightState;)V
    invoke-static {v3, v4}, Lcom/android/server/TwilightService;->access$500(Lcom/android/server/TwilightService;Lcom/android/server/TwilightService$TwilightState;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    const-wide/32 v3, 0x5265c00

    sub-long v3, v15, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/TwilightCalculator;->calculateTwilight(JDD)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    iget-wide v0, v3, Lcom/android/server/TwilightCalculator;->mSunset:J

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    move-wide v3, v15

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/TwilightCalculator;->calculateTwilight(JDD)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    iget v3, v3, Lcom/android/server/TwilightCalculator;->mState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v12, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    iget-wide v0, v3, Lcom/android/server/TwilightCalculator;->mSunrise:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    iget-wide v0, v3, Lcom/android/server/TwilightCalculator;->mSunset:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    const-wide/32 v3, 0x5265c00

    add-long/2addr v3, v15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/TwilightCalculator;->calculateTwilight(JDD)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    iget-wide v10, v3, Lcom/android/server/TwilightCalculator;->mSunrise:J

    new-instance v2, Lcom/android/server/TwilightService$TwilightState;

    move v3, v12

    move-wide/from16 v4, v23

    move-wide/from16 v6, v18

    move-wide/from16 v8, v20

    invoke-direct/range {v2 .. v11}, Lcom/android/server/TwilightService$TwilightState;-><init>(ZJJJJ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TwilightService$LocationHandler;->this$0:Lcom/android/server/TwilightService;

    #calls: Lcom/android/server/TwilightService;->setTwilightState(Lcom/android/server/TwilightService$TwilightState;)V
    invoke-static {v3, v2}, Lcom/android/server/TwilightService;->access$500(Lcom/android/server/TwilightService;Lcom/android/server/TwilightService$TwilightState;)V

    const-wide/16 v13, 0x0

    const-wide/16 v3, -0x1

    cmp-long v3, v18, v3

    if-eqz v3, :cond_1

    const-wide/16 v3, -0x1

    cmp-long v3, v20, v3

    if-nez v3, :cond_3

    :cond_1
    const-wide/32 v3, 0x2932e00

    add-long v13, v15, v3

    :goto_2
    new-instance v22, Landroid/content/Intent;

    const-string v3, "com.android.server.action.UPDATE_TWILIGHT_STATE"

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TwilightService$LocationHandler;->this$0:Lcom/android/server/TwilightService;

    #getter for: Lcom/android/server/TwilightService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/TwilightService;->access$600(Lcom/android/server/TwilightService;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TwilightService$LocationHandler;->this$0:Lcom/android/server/TwilightService;

    #getter for: Lcom/android/server/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v3}, Lcom/android/server/TwilightService;->access$700(Lcom/android/server/TwilightService;)Landroid/app/AlarmManager;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TwilightService$LocationHandler;->this$0:Lcom/android/server/TwilightService;

    #getter for: Lcom/android/server/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v3}, Lcom/android/server/TwilightService;->access$700(Lcom/android/server/TwilightService;)Landroid/app/AlarmManager;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v3, v4, v13, v14, v0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    :cond_2
    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_3
    const-wide/32 v3, 0xea60

    add-long/2addr v13, v3

    cmp-long v3, v15, v20

    if-lez v3, :cond_4

    add-long/2addr v13, v10

    goto :goto_2

    :cond_4
    cmp-long v3, v15, v18

    if-lez v3, :cond_5

    add-long v13, v13, v20

    goto :goto_2

    :cond_5
    add-long v13, v13, v18

    goto :goto_2
.end method


# virtual methods
.method public enableLocationUpdates()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/location/Location;

    iget-object v0, p0, Lcom/android/server/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    #calls: Lcom/android/server/TwilightService;->hasMoved(Landroid/location/Location;Landroid/location/Location;)Z
    invoke-static {v0, v9}, Lcom/android/server/TwilightService;->access$100(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v8

    iget-object v0, p0, Lcom/android/server/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    invoke-virtual {v9}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Lcom/android/server/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    :cond_1
    const/4 v7, 0x1

    :goto_1
    if-nez v8, :cond_2

    if-eqz v7, :cond_0

    :cond_2
    invoke-direct {p0, v9}, Lcom/android/server/TwilightService$LocationHandler;->setLocation(Landroid/location/Location;)V

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    :pswitch_1
    iget-boolean v0, p0, Lcom/android/server/TwilightService$LocationHandler;->mNetworkListenerEnabled:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/TwilightService$LocationHandler;->mLastNetworkRegisterTime:J

    const-wide/32 v2, 0x1b7740

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/TwilightService$LocationHandler;->mNetworkListenerEnabled:Z

    iget-object v0, p0, Lcom/android/server/TwilightService$LocationHandler;->this$0:Lcom/android/server/TwilightService;

    #getter for: Lcom/android/server/TwilightService;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/android/server/TwilightService;->access$300(Lcom/android/server/TwilightService;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/TwilightService$LocationHandler;->this$0:Lcom/android/server/TwilightService;

    #getter for: Lcom/android/server/TwilightService;->mEmptyLocationListener:Landroid/location/LocationListener;
    invoke-static {v1}, Lcom/android/server/TwilightService;->access$200(Lcom/android/server/TwilightService;)Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :pswitch_2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/TwilightService$LocationHandler;->this$0:Lcom/android/server/TwilightService;

    #getter for: Lcom/android/server/TwilightService;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/android/server/TwilightService;->access$300(Lcom/android/server/TwilightService;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    :goto_2
    iget-boolean v0, p0, Lcom/android/server/TwilightService$LocationHandler;->mNetworkListenerEnabled:Z

    if-nez v0, :cond_4

    if-eqz v10, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/TwilightService$LocationHandler;->mNetworkListenerEnabled:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/TwilightService$LocationHandler;->mLastNetworkRegisterTime:J

    iget-object v0, p0, Lcom/android/server/TwilightService$LocationHandler;->this$0:Lcom/android/server/TwilightService;

    #getter for: Lcom/android/server/TwilightService;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/android/server/TwilightService;->access$300(Lcom/android/server/TwilightService;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "network"

    const-wide/32 v2, 0x5265c00

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/TwilightService$LocationHandler;->this$0:Lcom/android/server/TwilightService;

    #getter for: Lcom/android/server/TwilightService;->mEmptyLocationListener:Landroid/location/LocationListener;
    invoke-static {v5}, Lcom/android/server/TwilightService;->access$200(Lcom/android/server/TwilightService;)Landroid/location/LocationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    iget-boolean v0, p0, Lcom/android/server/TwilightService$LocationHandler;->mDidFirstInit:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/TwilightService$LocationHandler;->mDidFirstInit:Z

    iget-object v0, p0, Lcom/android/server/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/server/TwilightService$LocationHandler;->retrieveLocation()V

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/android/server/TwilightService$LocationHandler;->this$0:Lcom/android/server/TwilightService;

    #getter for: Lcom/android/server/TwilightService;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/android/server/TwilightService;->access$300(Lcom/android/server/TwilightService;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "passive"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    :goto_3
    iget-boolean v0, p0, Lcom/android/server/TwilightService$LocationHandler;->mPassiveListenerEnabled:Z

    if-nez v0, :cond_5

    if-eqz v11, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/TwilightService$LocationHandler;->mPassiveListenerEnabled:Z

    iget-object v0, p0, Lcom/android/server/TwilightService$LocationHandler;->this$0:Lcom/android/server/TwilightService;

    #getter for: Lcom/android/server/TwilightService;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/android/server/TwilightService;->access$300(Lcom/android/server/TwilightService;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "passive"

    const-wide/16 v2, 0x0

    const v4, 0x469c4000

    iget-object v5, p0, Lcom/android/server/TwilightService$LocationHandler;->this$0:Lcom/android/server/TwilightService;

    #getter for: Lcom/android/server/TwilightService;->mLocationListener:Landroid/location/LocationListener;
    invoke-static {v5}, Lcom/android/server/TwilightService;->access$400(Lcom/android/server/TwilightService;)Landroid/location/LocationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_5
    iget-boolean v0, p0, Lcom/android/server/TwilightService$LocationHandler;->mNetworkListenerEnabled:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/server/TwilightService$LocationHandler;->mPassiveListenerEnabled:Z

    if-nez v0, :cond_0

    :cond_6
    iget-wide v0, p0, Lcom/android/server/TwilightService$LocationHandler;->mLastUpdateInterval:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ff8

    mul-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/TwilightService$LocationHandler;->mLastUpdateInterval:J

    iget-wide v0, p0, Lcom/android/server/TwilightService$LocationHandler;->mLastUpdateInterval:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/server/TwilightService$LocationHandler;->mLastUpdateInterval:J

    :cond_7
    :goto_4
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/android/server/TwilightService$LocationHandler;->mLastUpdateInterval:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :catch_0
    move-exception v6

    const/4 v10, 0x0

    goto/16 :goto_2

    :catch_1
    move-exception v6

    const/4 v11, 0x0

    goto :goto_3

    :cond_8
    iget-wide v0, p0, Lcom/android/server/TwilightService$LocationHandler;->mLastUpdateInterval:J

    const-wide/32 v2, 0xdbba0

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/android/server/TwilightService$LocationHandler;->mLastUpdateInterval:J

    goto :goto_4

    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/TwilightService$LocationHandler;->updateTwilightState()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public processNewLocation(Landroid/location/Location;)V
    .locals 2

    const/4 v1, 0x3

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public requestLocationUpdate()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public requestTwilightUpdate()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
