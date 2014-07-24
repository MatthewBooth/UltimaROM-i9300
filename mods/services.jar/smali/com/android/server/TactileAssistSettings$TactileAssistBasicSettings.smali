.class Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;
.super Ljava/lang/Object;
.source "TactileAssistSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TactileAssistSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TactileAssistBasicSettings"
.end annotation


# static fields
.field static final density_ERM:[I

.field static final density_LRA:[I

.field static final density_PIEZO:[I

.field static final density_Slow_ERM:[I

.field static final sharpness_ERM:[I

.field static final sharpness_LRA:[I

.field static final sharpness_PIEZO:[I

.field static final sharpness_Slow_ERM:[I

.field static final strength_ERM:[I

.field static final strength_LRA:[I

.field static final strength_PIEZO:[I

.field static final strength_Slow_ERM:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->strength_ERM:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->density_ERM:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->sharpness_ERM:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->strength_Slow_ERM:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->density_Slow_ERM:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->sharpness_Slow_ERM:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->strength_LRA:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->density_LRA:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->sharpness_LRA:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->strength_PIEZO:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->density_PIEZO:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_b

    sput-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->sharpness_PIEZO:[I

    return-void

    :array_0
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDensity(II)I
    .locals 2

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->density_PIEZO:[I

    invoke-static {p1}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getIntensity(I)I

    move-result v1

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    sget-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->density_LRA:[I

    invoke-static {p1}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getIntensity(I)I

    move-result v1

    aget v0, v0, v1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    if-ne p0, v0, :cond_2

    sget-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->density_Slow_ERM:[I

    invoke-static {p1}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getIntensity(I)I

    move-result v1

    aget v0, v0, v1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->density_ERM:[I

    invoke-static {p1}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getIntensity(I)I

    move-result v1

    aget v0, v0, v1

    goto :goto_0
.end method

.method private static getIntensity(I)I
    .locals 1

    if-lez p0, :cond_1

    const/4 v0, 0x3

    if-le p0, v0, :cond_0

    const/4 p0, 0x3

    :cond_0
    add-int/lit8 p0, p0, -0x1

    :cond_1
    return p0
.end method

.method public static getSharpness(II)I
    .locals 2

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->sharpness_PIEZO:[I

    invoke-static {p1}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getIntensity(I)I

    move-result v1

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    sget-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->sharpness_LRA:[I

    invoke-static {p1}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getIntensity(I)I

    move-result v1

    aget v0, v0, v1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    if-ne p0, v0, :cond_2

    sget-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->sharpness_Slow_ERM:[I

    invoke-static {p1}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getIntensity(I)I

    move-result v1

    aget v0, v0, v1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->sharpness_ERM:[I

    invoke-static {p1}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getIntensity(I)I

    move-result v1

    aget v0, v0, v1

    goto :goto_0
.end method

.method public static getStrength(II)I
    .locals 2

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->strength_PIEZO:[I

    invoke-static {p1}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getIntensity(I)I

    move-result v1

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    sget-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->strength_LRA:[I

    invoke-static {p1}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getIntensity(I)I

    move-result v1

    aget v0, v0, v1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    if-ne p0, v0, :cond_2

    sget-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->strength_Slow_ERM:[I

    invoke-static {p1}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getIntensity(I)I

    move-result v1

    aget v0, v0, v1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->strength_ERM:[I

    invoke-static {p1}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getIntensity(I)I

    move-result v1

    aget v0, v0, v1

    goto :goto_0
.end method
