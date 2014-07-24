.class public Lcom/android/server/TactileAssistSettings;
.super Ljava/lang/Object;
.source "TactileAssistSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;,
        Lcom/android/server/TactileAssistSettings$ActuatorObserver;,
        Lcom/android/server/TactileAssistSettings$TactileAssistObserver;
    }
.end annotation


# static fields
.field private static final BREAK_LEVEL0_PARAM:I = 0x12

.field private static final BREAK_LEVEL1_PARAM:I = 0x13

.field private static final BREAK_LEVEL2_PARAM:I = 0x14

.field private static final BREAK_LEVEL3_PARAM:I = 0x15

.field private static final BREAK_TIME1_PARAM:I = 0x16

.field private static final BREAK_TIME2_PARAM:I = 0x17

.field private static final BREAK_TIME3_PARAM:I = 0x18

.field public static final DEFAULT_THEME_STRENGTH:I = 0x2

.field public static final ERM_ACTUATOR:I = 0x0

.field private static final HAPTIC_FEEDBACK_THEME_AUTHORITY_PREFIX:Ljava/lang/String; = "com.immersion.android.haptictheme."

.field private static final INTERPOLATION_PRECISION:D = 0.001

.field public static final KEY_ENABLE:Ljava/lang/String; = "tactileassist_enable"

.field public static final KEY_LEVEL:Ljava/lang/String; = "tactileassist_level"

.field public static final KEY_MEDIAPLAYER_ENABLE:Ljava/lang/String; = "tactileassist_mediaplayer"

.field public static final KEY_TACTILEASSIST_DENSITY:Ljava/lang/String; = "density"

.field public static final KEY_TACTILEASSIST_ENABLE:Ljava/lang/String; = "enable"

.field public static final KEY_TACTILEASSIST_ENABLE_OLD:Ljava/lang/String; = "enable_old"

.field public static final KEY_TACTILEASSIST_INTERNAL_ENABLE:Ljava/lang/String; = "internal_enable"

.field public static final KEY_TACTILEASSIST_MEDIAPLAYER_ENABLE:Ljava/lang/String; = "mediaplayer"

.field public static final KEY_TACTILEASSIST_SHARPNESS:Ljava/lang/String; = "sharpness"

.field public static final KEY_TACTILEASSIST_STRENGTH:Ljava/lang/String; = "strength"

.field private static final LEVEL0:I = 0x3c

.field private static final LEVEL1:I = 0x64

.field public static final LRA_ACTUATOR:I = 0x2

.field public static final MANIFEST_DATA_COLUMN:I = 0x3

.field public static final MANIFEST_PERVASIVENESS_COLUMN:I = 0x2

.field public static final MANIFEST_STRENGTH_COLUMN:I = 0x1

.field public static final MANIFEST_VERSION_COLUMN:I = 0x0

.field private static final MAX_PWM:I = 0x7f

.field public static final MAX_TACTILEASSIST_FORCE:I = 0xf

.field public static final MAX_TACTILEASSIST_LEVEL:I = 0x3

.field public static final MIN_TACTILEASSIST_FORCE:I = 0x0

.field public static final MIN_TACTILEASSIST_LEVEL:I = 0x1

.field private static final MOTOR_SPIN_UP_TIME_PARAM:I = 0xe

.field private static final NUM_PARAMS:I = 0xe

.field private static final NUM_SEGMENTS:I = 0xa

.field private static final PULSE_BASE_LEVEL_PARAM:I = 0x11

.field private static final PULSE_LEAD0_PARAM:I = 0xd

.field private static final PULSE_LEAD1_PARAM:I = 0xe

.field private static final PULSE_LEVEL0_PARAM:I = 0xf

.field private static final PULSE_LEVEL1_PARAM:I = 0x10

.field public static final PZO_ACTUATOR:I = 0x4

.field private static final RISE_LOOKUP:I = 0x41

.field private static final RISE_TIME_PARAM:I = 0x4a

.field public static final SLOW_ERM_ACTUATOR:I = 0x8

.field private static final SPIN_UP_TIME:I = 0x28

.field public static final TACTILEASSIST_SHARED_PREFS:Ljava/lang/String; = "com.android.settings_tactileassist"

.field public static final TAG:Ljava/lang/String; = "TactileAssist"

.field private static instance:Lcom/android/server/TactileAssistSettings;

.field private static mActuators:[I

.field private static mContentResolver:Landroid/content/ContentResolver;

.field private static mContext:Landroid/content/Context;

.field private static mERMObserver:Lcom/android/server/TactileAssistSettings$ActuatorObserver;

.field private static mLRAObserver:Lcom/android/server/TactileAssistSettings$ActuatorObserver;

.field private static mPZOObserver:Lcom/android/server/TactileAssistSettings$ActuatorObserver;

.field private static mSERMObserver:Lcom/android/server/TactileAssistSettings$ActuatorObserver;

.field private static mSelectedParams:[I

.field private static mTactileAssistObserver:Lcom/android/server/TactileAssistSettings$TactileAssistObserver;

.field private static sharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/TactileAssistSettings;->mActuators:[I

    const/16 v0, 0xe

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/TactileAssistSettings;->mSelectedParams:[I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/TactileAssistSettings;->instance:Lcom/android/server/TactileAssistSettings;

    return-void

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/android/server/TactileAssistSettings;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/server/TactileAssistSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sput-object v4, Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "com.android.settings_tactileassist"

    invoke-virtual {p1, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    sput-object v4, Lcom/android/server/TactileAssistSettings;->sharedPrefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v2, 0x1

    :goto_0
    if-ge v1, v2, :cond_0

    const/4 v0, -0x1

    const/4 v0, 0x2

    :try_start_0
    sget-object v4, Lcom/android/server/TactileAssistSettings;->mActuators:[I

    const/4 v5, 0x2

    aput v0, v4, v5

    new-instance v4, Lcom/android/server/TactileAssistSettings$ActuatorObserver;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v5}, Lcom/android/server/TactileAssistSettings$ActuatorObserver;-><init>(Lcom/android/server/TactileAssistSettings;I)V

    sput-object v4, Lcom/android/server/TactileAssistSettings;->mLRAObserver:Lcom/android/server/TactileAssistSettings$ActuatorObserver;

    const-string v4, "def_tactileassist_sharpness_lra"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x1

    sget-object v6, Lcom/android/server/TactileAssistSettings;->mLRAObserver:Lcom/android/server/TactileAssistSettings$ActuatorObserver;

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v4, "def_tactileassist_strength_lra"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x1

    sget-object v6, Lcom/android/server/TactileAssistSettings;->mLRAObserver:Lcom/android/server/TactileAssistSettings$ActuatorObserver;

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v4, "def_tactileassist_density_lra"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x1

    sget-object v6, Lcom/android/server/TactileAssistSettings;->mLRAObserver:Lcom/android/server/TactileAssistSettings$ActuatorObserver;

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v4

    add-int/lit8 v1, v1, 0x1

    throw v4

    :cond_0
    sget-object v4, Lcom/android/server/TactileAssistSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sput-object v4, Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Lcom/android/server/TactileAssistSettings$TactileAssistObserver;

    invoke-direct {v4, p0}, Lcom/android/server/TactileAssistSettings$TactileAssistObserver;-><init>(Lcom/android/server/TactileAssistSettings;)V

    sput-object v4, Lcom/android/server/TactileAssistSettings;->mTactileAssistObserver:Lcom/android/server/TactileAssistSettings$TactileAssistObserver;

    const-string v4, "def_tactileassist_enable"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/server/TactileAssistSettings;->mTactileAssistObserver:Lcom/android/server/TactileAssistSettings$TactileAssistObserver;

    invoke-virtual {v4, v3, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v4, "def_tactileassist_internal_enable"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/server/TactileAssistSettings;->mTactileAssistObserver:Lcom/android/server/TactileAssistSettings$TactileAssistObserver;

    invoke-virtual {v4, v3, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v4, "def_tactileassist_level"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/server/TactileAssistSettings;->mTactileAssistObserver:Lcom/android/server/TactileAssistSettings$TactileAssistObserver;

    invoke-virtual {v4, v3, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method static synthetic access$000()Landroid/content/ContentResolver;
    .locals 1

    sget-object v0, Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/server/TactileAssistSettings;->getActuatorTypeString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/TactileAssistSettings;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/TactileAssistSettings;->storeLevels(IIII)V

    return-void
.end method

.method private static getActuatorTypeString(I)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p0, :cond_0

    const-string v0, "erm"

    :goto_0
    return-object v0

    :cond_0
    const/16 v1, 0x8

    if-ne p0, v1, :cond_1

    const-string/jumbo v0, "slow_erm"

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    const-string v0, "lra"

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne p0, v1, :cond_3

    const-string v0, "piezo"

    goto :goto_0

    :cond_3
    const-string v1, "TactileAssist"

    const-string v2, "Error: getActuatorTypeString actuatorType does not point to an ERM, LRA or PIEZO actuator."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/TactileAssistSettings;
    .locals 2

    sget-object v0, Lcom/android/server/TactileAssistSettings;->instance:Lcom/android/server/TactileAssistSettings;

    if-nez v0, :cond_1

    const-class v1, Lcom/android/server/TactileAssistSettings;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/TactileAssistSettings;->instance:Lcom/android/server/TactileAssistSettings;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/TactileAssistSettings;

    invoke-direct {v0, p0}, Lcom/android/server/TactileAssistSettings;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/TactileAssistSettings;->instance:Lcom/android/server/TactileAssistSettings;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/android/server/TactileAssistSettings;->instance:Lcom/android/server/TactileAssistSettings;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getSpinUpTime(III)I
    .locals 13

    const/16 v0, 0x9

    new-array v9, v0, [I

    fill-array-data v9, :array_0

    const/16 v0, 0xa

    new-array v10, v0, [I

    const/4 v8, 0x0

    :goto_0
    const/16 v0, 0x9

    if-ge v8, v0, :cond_0

    aget v0, v9, v8

    aput v0, v10, v8

    aget v0, v10, v8

    if-gt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    if-ge v8, v0, :cond_2

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    aget v4, v10, v4

    const-wide/high16 v5, 0x3ff0

    move v7, p1

    invoke-static/range {v0 .. v7}, Lcom/android/server/TactileAssistSettings;->interpolatedValue(DDIDI)D

    move-result-wide v11

    :goto_1
    int-to-double v0, p2

    mul-double/2addr v11, v0

    const-wide/high16 v0, 0x4024

    div-double/2addr v11, v0

    const-wide/high16 v0, 0x3fe0

    add-double/2addr v0, v11

    double-to-int v0, v0

    return v0

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    if-le v8, v0, :cond_3

    const/16 v0, 0x8

    aget v0, v10, v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4022

    const/16 v4, 0x7f

    const-wide/high16 v5, 0x4024

    move v7, p1

    invoke-static/range {v0 .. v7}, Lcom/android/server/TactileAssistSettings;->interpolatedValue(DDIDI)D

    move-result-wide v11

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v8, -0x1

    aget v0, v10, v0

    int-to-double v0, v0

    int-to-double v2, v8

    aget v4, v10, v8

    add-int/lit8 v5, v8, 0x1

    int-to-double v5, v5

    move v7, p1

    invoke-static/range {v0 .. v7}, Lcom/android/server/TactileAssistSettings;->interpolatedValue(DDIDI)D

    move-result-wide v11

    goto :goto_1

    :array_0
    .array-data 0x4
        0x11t 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x3ft 0x0t 0x0t 0x0t
        0x4dt 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x6dt 0x0t 0x0t 0x0t
        0x74t 0x0t 0x0t 0x0t
        0x7ft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static interpolatedValue(DDIDI)D
    .locals 6

    const-wide v4, -0x40af9db22d0e5604L

    const-wide v2, 0x3f50624dd2f1a9fcL

    int-to-double v0, p7

    sub-double/2addr v0, p0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    sub-int v0, p7, p4

    int-to-double v0, v0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    int-to-double v0, p7

    sub-double/2addr v0, p0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_3

    sub-int v0, p7, p4

    int-to-double v0, v0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_3

    :cond_1
    const-wide/high16 p2, -0x4010

    :cond_2
    :goto_0
    return-wide p2

    :cond_3
    int-to-double v0, p7

    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v2

    if-lez v0, :cond_2

    sub-int v0, p4, p7

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v0, v0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_4

    move-wide p2, p5

    goto :goto_0

    :cond_4
    sub-double v0, p5, p2

    int-to-double v2, p7

    sub-double/2addr v2, p0

    mul-double/2addr v0, v2

    int-to-double v2, p4

    sub-double/2addr v2, p0

    div-double/2addr v0, v2

    add-double/2addr p2, v0

    goto :goto_0
.end method

.method private static isHapticThemePackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 7

    const/16 v4, 0x8

    :try_start_0
    invoke-virtual {p0, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    :goto_0
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    aget-object v4, v4, v2

    iget-object v0, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v4, "com.immersion.android.haptictheme."

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "TactileAssist"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING: Query "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "failed."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isInEESMode([I)Z
    .locals 4

    const/16 v3, 0xd

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget v2, p0, v0

    if-eqz v2, :cond_1

    :cond_0
    :goto_1
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    aget v2, p0, v3

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static storeAppList(Landroid/content/SharedPreferences$Editor;)V
    .locals 13

    const/4 v12, 0x4

    sget-object v10, Lcom/android/server/TactileAssistSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    if-eqz v8, :cond_3

    if-eqz p0, :cond_3

    invoke-virtual {v8, v12}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-string v10, "TactileAssist"

    invoke-static {v10, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "TactileAssist"

    const-string v11, "List of disabled apps :"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_0

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/android/server/TactileAssistSettings;->isHapticThemePackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "android.permission.VIBRATE"

    invoke-virtual {v8, v10, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_2

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_0

    const-string v10, "TactileAssist"

    invoke-static {v10, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "TactileAssist"

    invoke-static {v10, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v10, "disabled"

    invoke-interface {p0, v7, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v10, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v5, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v9, v1, v3

    iget-object v10, v9, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    const-string v11, "disabled"

    invoke-interface {p0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    return-void
.end method

.method private declared-synchronized storeLevels(IIII)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v1, "TactileAssist"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "TactileAssist"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "actuator type value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "TactileAssist"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "strength value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "TactileAssist"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "density value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "TactileAssist"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sharpness value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/android/server/TactileAssistSettings;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "strength_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/TactileAssistSettings;->getActuatorTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "density_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/TactileAssistSettings;->getActuatorTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sharpness_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/TactileAssistSettings;->getActuatorTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public getActuators()[I
    .locals 1

    sget-object v0, Lcom/android/server/TactileAssistSettings;->mActuators:[I

    return-object v0
.end method

.method public declared-synchronized storeTactileAssistSettings(IIIZ)V
    .locals 11

    monitor-enter p0

    :try_start_0
    const-string v7, "TactileAssist"

    const/4 v8, 0x4

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "TactileAssist"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enable value "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "TactileAssist"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "internal enable value "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "TactileAssist"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "intensity value "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "TactileAssist"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveAppList value "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v7, Lcom/android/server/TactileAssistSettings;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v7, -0x1

    if-eq p1, v7, :cond_1

    const-string v8, "enable"

    if-nez p1, :cond_b

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v1, v8, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_1
    const/4 v7, -0x1

    if-eq p2, v7, :cond_2

    const-string v8, "internal_enable"

    if-nez p2, :cond_c

    const/4 v7, 0x0

    :goto_1
    invoke-interface {v1, v8, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz p4, :cond_5

    :try_start_1
    sget-object v7, Lcom/android/server/TactileAssistSettings;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "disabled"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    const-string v7, "TactileAssist"

    const/4 v8, 0x6

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "TactileAssist"

    const-string v8, "Unable to cleanup the list of disabled apk."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {v1}, Lcom/android/server/TactileAssistSettings;->storeAppList(Landroid/content/SharedPreferences$Editor;)V

    :cond_5
    const-string v7, "android.process.acore"

    const-string v8, "disabled"

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v7, "system_server"

    const-string v8, "disabled"

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v7, "com.android.contacts"

    const-string v8, "disabled"

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v7, "com.android.camera"

    const-string v8, "disabled"

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v7, "com.android.gallery3d"

    const-string v8, "disabled"

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v7, "com.android.launcher"

    const-string v8, "disabled"

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v7, "com.google.android.tts"

    const-string v8, "disabled"

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v7, "com.google.android.marvin.talkback"

    const-string v8, "disabled"

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v7, "com.svox.pico"

    const-string v8, "disabled"

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v7, -0x1

    if-eq p3, v7, :cond_a

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    sget-object v7, Lcom/android/server/TactileAssistSettings;->mActuators:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/4 v8, -0x1

    if-eq v7, v8, :cond_6

    sget-object v7, Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "def_tactileassist_density_erm"

    sget-object v9, Lcom/android/server/TactileAssistSettings;->mActuators:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    invoke-static {v9, p3}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getDensity(II)I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v7, Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "def_tactileassist_strength_erm"

    sget-object v9, Lcom/android/server/TactileAssistSettings;->mActuators:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    invoke-static {v9, p3}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getStrength(II)I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v7, Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "def_tactileassist_sharpness_erm"

    sget-object v9, Lcom/android/server/TactileAssistSettings;->mActuators:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    invoke-static {v9, p3}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getSharpness(II)I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6
    sget-object v7, Lcom/android/server/TactileAssistSettings;->mActuators:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    const/4 v8, -0x1

    if-eq v7, v8, :cond_7

    sget-object v7, Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "def_tactileassist_density_serm"

    sget-object v9, Lcom/android/server/TactileAssistSettings;->mActuators:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-static {v9, p3}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getDensity(II)I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v7, Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "def_tactileassist_strength_serm"

    sget-object v9, Lcom/android/server/TactileAssistSettings;->mActuators:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-static {v9, p3}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getStrength(II)I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v7, Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "def_tactileassist_sharpness_serm"

    sget-object v9, Lcom/android/server/TactileAssistSettings;->mActuators:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-static {v9, p3}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getSharpness(II)I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_7
    sget-object v7, Lcom/android/server/TactileAssistSettings;->mActuators:[I

    const/4 v8, 0x2

    aget v7, v7, v8

    const/4 v8, -0x1

    if-eq v7, v8, :cond_8

    sget-object v7, Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "def_tactileassist_density_lra"

    sget-object v9, Lcom/android/server/TactileAssistSettings;->mActuators:[I

    const/4 v10, 0x2

    aget v9, v9, v10

    invoke-static {v9, p3}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getDensity(II)I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v7, Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "def_tactileassist_strength_lra"

    sget-object v9, Lcom/android/server/TactileAssistSettings;->mActuators:[I

    const/4 v10, 0x2

    aget v9, v9, v10

    invoke-static {v9, p3}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getStrength(II)I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v7, Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "def_tactileassist_sharpness_lra"

    sget-object v9, Lcom/android/server/TactileAssistSettings;->mActuators:[I

    const/4 v10, 0x2

    aget v9, v9, v10

    invoke-static {v9, p3}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getSharpness(II)I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_8
    sget-object v7, Lcom/android/server/TactileAssistSettings;->mActuators:[I

    const/4 v8, 0x3

    aget v7, v7, v8

    const/4 v8, -0x1

    if-eq v7, v8, :cond_9

    sget-object v7, Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "def_tactileassist_density_pzo"

    sget-object v9, Lcom/android/server/TactileAssistSettings;->mActuators:[I

    const/4 v10, 0x3

    aget v9, v9, v10

    invoke-static {v9, p3}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getDensity(II)I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v7, Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "def_tactileassist_strength_pzo"

    sget-object v9, Lcom/android/server/TactileAssistSettings;->mActuators:[I

    const/4 v10, 0x3

    aget v9, v9, v10

    invoke-static {v9, p3}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getStrength(II)I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v7, Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "def_tactileassist_sharpness_pzo"

    sget-object v9, Lcom/android/server/TactileAssistSettings;->mActuators:[I

    const/4 v10, 0x3

    aget v9, v9, v10

    invoke-static {v9, p3}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getSharpness(II)I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_9
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_a
    monitor-exit p0

    return-void

    :cond_b
    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_c
    const/4 v7, 0x1

    goto/16 :goto_1

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method
