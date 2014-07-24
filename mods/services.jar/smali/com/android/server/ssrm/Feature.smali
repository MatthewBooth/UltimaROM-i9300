.class public Lcom/android/server/ssrm/Feature;
.super Ljava/lang/Object;
.source "Feature.java"


# static fields
.field public static AIR_VIEW_PROVIDER_NAME:Ljava/lang/String; = null

.field public static AP_TEMP_PATH:Ljava/lang/String; = null

.field public static BASE_MODEL:Ljava/lang/String; = null

.field public static COMMON_GESTURE_WITH_FINGERHOVER:Z = false

.field public static COMMON_HW_VENDOR_CONFIG:Ljava/lang/String; = null

.field public static COMMON_REGION:Ljava/lang/String; = null

.field public static DISABLE_DYNAMIC_FPS:Z = false

.field public static DISPLAY_WQXGA:Z = false

.field public static DYNAMIC_ANALYSIS:Z = false

.field public static IS_ITALY_MODEL:Z = false

.field public static IS_KOR_MODEL:Z = false

.field public static IS_TABLET:Z = false

.field public static MODEL_CHAGALL:Z = false

.field public static MODEL_D2:Z = false

.field public static MODEL_F_LTE:Z = false

.field public static MODEL_GARDA:Z = false

.field public static MODEL_H:Z = false

.field public static MODEL_HA:Z = false

.field public static MODEL_HEAT:Z = false

.field public static MODEL_HEATLTE:Z = false

.field public static MODEL_HF:Z = false

.field public static MODEL_J:Z = false

.field public static MODEL_J6:Z = false

.field public static MODEL_JA:Z = false

.field public static MODEL_JF:Z = false

.field public static MODEL_JFVE:Z = false

.field public static MODEL_JF_REFRESH:Z = false

.field public static MODEL_JS01:Z = false

.field public static MODEL_K:Z = false

.field public static MODEL_KA:Z = false

.field public static MODEL_KAM:Z = false

.field public static MODEL_KF:Z = false

.field public static MODEL_KQ:Z = false

.field public static MODEL_KS01:Z = false

.field public static MODEL_LT03:Z = false

.field public static MODEL_LT03_3GWIFI:Z = false

.field public static MODEL_LT03_LTE:Z = false

.field public static MODEL_M2:Z = false

.field public static MODEL_MATISSE:Z = false

.field public static MODEL_MILLET:Z = false

.field public static MODEL_MONDRIAN:Z = false

.field public static MODEL_MRVL_SYSFS:Z = false

.field public static MODEL_MS01_3G:Z = false

.field public static MODEL_PICASSO:Z = false

.field public static MODEL_PICASSO_3GWIFI:Z = false

.field public static MODEL_PICASSO_LTE:Z = false

.field public static MODEL_T0:Z = false

.field public static MODEL_V1:Z = false

.field public static MODEL_V1_3GWIFI:Z = false

.field public static MODEL_V1_LTE:Z = false

.field public static MODEL_V2:Z = false

.field public static MODEL_V2_3GWIFI:Z = false

.field public static MODEL_V2_LTE:Z = false

.field public static PRODUCT_H:Z = false

.field public static PRODUCT_J:Z = false

.field public static REGION_CMCC:Z = false

.field public static REGION_CU:Z = false

.field public static REGION_JPN:Z = false

.field public static REGION_VZW:Z = false

.field public static SIOP_FILENAME:Ljava/lang/String; = null

.field public static SIOP_TYPE:Ljava/lang/String; = null

.field public static SSRM_BATTERY_COOLDOWN_ENABLE:Z = false

.field public static SSRM_FILENAME:Ljava/lang/String; = null

.field public static SSRM_HANGOUTS:Z = false

.field public static SSRM_LOW_BATTERY_LIMITATION:Z = false

.field public static SSRM_POWERSTRETCH:Z = false

.field public static SSRM_PST_ENABLE:Z = false

.field public static SSRM_STS_ENABLE:Z = false

.field public static SSRM_TOUCH_BUS_QOS_BOOSTER:Z = false

.field public static SSRM_TOUCH_SEPARATION:Z = false

.field public static SSRM_TURBO_MODE_BOOSTER:Z = false

.field public static SSRM_VZW_COOLDOWN_ENABLE:Z = false

.field public static STATIC_ANALYSIS:Z = false

.field static final TAG:Ljava/lang/String; = "SSRMv2:Feature"

.field public static sApTempPathExist:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v5, ""

    sput-object v5, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    const-string v5, ""

    sput-object v5, Lcom/android/server/ssrm/Feature;->SIOP_FILENAME:Ljava/lang/String;

    const-string v5, ""

    sput-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v5, ""

    sput-object v5, Lcom/android/server/ssrm/Feature;->AIR_VIEW_PROVIDER_NAME:Ljava/lang/String;

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->DISABLE_DYNAMIC_FPS:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->COMMON_GESTURE_WITH_FINGERHOVER:Z

    const-string v5, ""

    sput-object v5, Lcom/android/server/ssrm/Feature;->COMMON_REGION:Ljava/lang/String;

    const-string v5, ""

    sput-object v5, Lcom/android/server/ssrm/Feature;->COMMON_HW_VENDOR_CONFIG:Ljava/lang/String;

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->IS_KOR_MODEL:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->IS_ITALY_MODEL:Z

    const-string v5, ""

    sput-object v5, Lcom/android/server/ssrm/Feature;->SIOP_TYPE:Ljava/lang/String;

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_JA:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_JF:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_J:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_JFVE:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_HA:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_H:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_KAM:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_KA:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_KQ:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_KF:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_LT03:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_LT03_3GWIFI:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_LT03_LTE:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_J6:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_JS01:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_V1:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_V1_3GWIFI:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_V1_LTE:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_V2:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_V2_3GWIFI:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_V2_LTE:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_CHAGALL:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_MONDRIAN:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_PICASSO:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_PICASSO_3GWIFI:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_PICASSO_LTE:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_MILLET:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_MATISSE:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->IS_TABLET:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_F_LTE:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_MS01_3G:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_JF_REFRESH:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_D2:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_KS01:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_HEAT:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_T0:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_MRVL_SYSFS:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_GARDA:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->REGION_VZW:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->REGION_CU:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->REGION_CMCC:Z

    const-string v5, ""

    sput-object v5, Lcom/android/server/ssrm/Feature;->AP_TEMP_PATH:Ljava/lang/String;

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->sApTempPathExist:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->STATIC_ANALYSIS:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->DYNAMIC_ANALYSIS:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->PRODUCT_J:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->PRODUCT_H:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->DISPLAY_WQXGA:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->REGION_JPN:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_HEATLTE:Z

    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_M2:Z

    :try_start_0
    const-string v5, "com.android.server.SsrmService"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v5, "BASE_MODEL"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sput-object v5, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    const-string v5, "SIOP_FILENAME"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sput-object v5, Lcom/android/server/ssrm/Feature;->SIOP_FILENAME:Ljava/lang/String;

    const-string v5, "SSRM_FILENAME"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sput-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v5, "AIR_VIEW_PROVIDER_NAME"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sput-object v5, Lcom/android/server/ssrm/Feature;->AIR_VIEW_PROVIDER_NAME:Ljava/lang/String;

    const-string v5, "DISABLE_DYNAMIC_FPS"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->DISABLE_DYNAMIC_FPS:Z

    const-string v5, "COMMON_GESTURE_WITH_FINGERHOVER"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->COMMON_GESTURE_WITH_FINGERHOVER:Z

    const-string v5, "COMMON_REGION"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sput-object v5, Lcom/android/server/ssrm/Feature;->COMMON_REGION:Ljava/lang/String;

    const-string v5, "COMMON_HW_VENDOR_CONFIG"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sput-object v5, Lcom/android/server/ssrm/Feature;->COMMON_HW_VENDOR_CONFIG:Ljava/lang/String;

    const-string v5, "KOR"

    sget-object v8, Lcom/android/server/ssrm/Feature;->COMMON_REGION:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->IS_KOR_MODEL:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v8, "CscFeature_Common_ConfigSiop"

    invoke-virtual {v5, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v8, "CscFeature_Common_ConfigSiop"

    invoke-virtual {v5, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/server/ssrm/Feature;->SIOP_TYPE:Ljava/lang/String;

    const-string v5, "SIOPS4ITALY"

    sget-object v8, Lcom/android/server/ssrm/Feature;->SIOP_TYPE:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "ssrm_jf_italy"

    sput-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->IS_ITALY_MODEL:Z

    :cond_0
    const-string v5, "ha"

    sget-object v8, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HA:Z

    :cond_1
    const-string v5, "hf"

    sget-object v8, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    :cond_2
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HA:Z

    if-nez v5, :cond_3

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v5, :cond_4

    :cond_3
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_H:Z

    :cond_4
    const-string v5, "kam"

    sget-object v8, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_KAM:Z

    :cond_5
    const-string v5, "ka"

    sget-object v8, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_KA:Z

    :cond_6
    const-string v5, "kf"

    sget-object v8, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_KF:Z

    :cond_7
    const-string v5, "kq"

    sget-object v8, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_KQ:Z

    :cond_8
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_KA:Z

    if-nez v5, :cond_9

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_KQ:Z

    if-nez v5, :cond_9

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_KF:Z

    if-eqz v5, :cond_a

    :cond_9
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    :cond_a
    const-string v5, "ja"

    sget-object v8, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_JA:Z

    :cond_b
    const-string v5, "jf"

    sget-object v8, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_JF:Z

    :cond_c
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_JA:Z

    if-nez v5, :cond_d

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_JF:Z

    if-eqz v5, :cond_e

    :cond_d
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_J:Z

    :cond_e
    const-string v5, "heat3g"

    sget-object v8, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HEAT:Z

    :cond_f
    const-string v5, "garda"

    sget-object v8, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_GARDA:Z

    :cond_10
    const-string v5, "heatlte"

    sget-object v8, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HEATLTE:Z

    :cond_11
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    if-eqz v5, :cond_34

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HA:Z

    if-eqz v5, :cond_12

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "lt03"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_LT03_3GWIFI:Z

    :cond_12
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v5, :cond_13

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "lt03"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_13

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_LT03_LTE:Z

    :cond_13
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_LT03_3GWIFI:Z

    if-nez v5, :cond_14

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_LT03_LTE:Z

    if-eqz v5, :cond_3a

    :cond_14
    move v5, v7

    :goto_0
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_LT03:Z

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HA:Z

    if-eqz v5, :cond_15

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string/jumbo v8, "vienna"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_V1_3GWIFI:Z

    :cond_15
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v5, :cond_16

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string/jumbo v8, "vienna"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_16

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_V1_LTE:Z

    :cond_16
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_V1_3GWIFI:Z

    if-nez v5, :cond_17

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_V1_LTE:Z

    if-eqz v5, :cond_3b

    :cond_17
    move v5, v7

    :goto_1
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_V1:Z

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HA:Z

    if-eqz v5, :cond_18

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string/jumbo v8, "v2"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_V2_3GWIFI:Z

    :cond_18
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v5, :cond_19

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string/jumbo v8, "v2"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_V2_LTE:Z

    :cond_19
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_V2_3GWIFI:Z

    if-nez v5, :cond_1a

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_V2_LTE:Z

    if-eqz v5, :cond_3c

    :cond_1a
    move v5, v7

    :goto_2
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_V2:Z

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HA:Z

    if-eqz v5, :cond_1b

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "picasso"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1b

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_PICASSO_3GWIFI:Z

    :cond_1b
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v5, :cond_1c

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "picasso"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1c

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_PICASSO_LTE:Z

    :cond_1c
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_PICASSO_3GWIFI:Z

    if-nez v5, :cond_1d

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_PICASSO_LTE:Z

    if-eqz v5, :cond_3d

    :cond_1d
    move v5, v7

    :goto_3
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_PICASSO:Z

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "millet"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1e

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_MILLET:Z

    :cond_1e
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "matisse"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1f

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_MATISSE:Z

    :cond_1f
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HA:Z

    if-eqz v5, :cond_20

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "chagall"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_20

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_CHAGALL:Z

    :cond_20
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v5, :cond_21

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "mondrian"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_21

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_MONDRIAN:Z

    :cond_21
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v5, :cond_22

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "flte"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_22

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_F_LTE:Z

    :cond_22
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v5, :cond_23

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "ks01"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_23

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_KS01:Z

    :cond_23
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_JF:Z

    if-eqz v5, :cond_24

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "jfve"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_24

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_JFVE:Z

    :cond_24
    const-string v5, "VZW"

    const-string v8, "ro.csc.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->REGION_VZW:Z

    :cond_25
    const-string v5, "CHU"

    const-string v8, "ro.csc.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->REGION_CU:Z

    :cond_26
    const-string v5, "CHM"

    const-string v8, "ro.csc.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->REGION_CMCC:Z

    :cond_27
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "jpn"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_28

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->REGION_JPN:Z

    :cond_28
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "js01"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_29

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_JS01:Z

    :cond_29
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "ms013g"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2a

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_MS01_3G:Z

    :cond_2a
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_JF:Z

    if-eqz v5, :cond_2b

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "refresh"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2b

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_JF_REFRESH:Z

    :cond_2b
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "d2"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2c

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_D2:Z

    :cond_2c
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_KAM:Z

    if-eqz v5, :cond_2d

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "m2"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2d

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_M2:Z

    :cond_2d
    const-string/jumbo v5, "t0"

    sget-object v8, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_t0_"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2e

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_T0:Z

    :cond_2e
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "mrvl"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2f

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_MRVL_SYSFS:Z

    :cond_2f
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "ja"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_30

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "jf"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_31

    :cond_30
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_J:Z

    :cond_31
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_ha_"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_32

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_hf_"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_33

    :cond_32
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_H:Z

    :cond_33
    const-string/jumbo v5, "tablet"

    const-string v8, "ro.build.characteristics"

    const-string v9, "default"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->IS_TABLET:Z

    :cond_34
    new-instance v3, Ljava/io/File;

    const-string v5, "/sys/class/sec/sec-thermistor/temperature"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/devices/platform/sec-thermistor/temperature"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/server/ssrm/Feature;->AP_TEMP_PATH:Ljava/lang/String;

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->sApTempPathExist:Z

    :goto_4
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    if-eqz v5, :cond_40

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->DYNAMIC_ANALYSIS:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_H:Z

    if-nez v5, :cond_35

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_J:Z

    if-nez v5, :cond_35

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_J6:Z

    if-eqz v5, :cond_41

    :cond_35
    move v5, v7

    :goto_6
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->SSRM_TOUCH_BUS_QOS_BOOSTER:Z

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_JF:Z

    if-nez v5, :cond_36

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_J6:Z

    if-eqz v5, :cond_42

    :cond_36
    move v5, v7

    :goto_7
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->SSRM_TURBO_MODE_BOOSTER:Z

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_H:Z

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->SSRM_TOUCH_SEPARATION:Z

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_H:Z

    if-nez v5, :cond_37

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_J:Z

    if-nez v5, :cond_37

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_MS01_3G:Z

    if-eqz v5, :cond_43

    :cond_37
    move v5, v7

    :goto_8
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->SSRM_POWERSTRETCH:Z

    sput-boolean v7, Lcom/android/server/ssrm/Feature;->SSRM_HANGOUTS:Z

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_J:Z

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->SSRM_STS_ENABLE:Z

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->SSRM_PST_ENABLE:Z

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->REGION_VZW:Z

    if-nez v5, :cond_44

    move v5, v7

    :goto_9
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->SSRM_BATTERY_COOLDOWN_ENABLE:Z

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->REGION_VZW:Z

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->SSRM_VZW_COOLDOWN_ENABLE:Z

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_V1_3GWIFI:Z

    if-nez v5, :cond_38

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_KA:Z

    if-nez v5, :cond_38

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_KQ:Z

    if-eqz v5, :cond_39

    :cond_38
    move v6, v7

    :cond_39
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->SSRM_LOW_BATTERY_LIMITATION:Z

    return-void

    :cond_3a
    move v5, v6

    goto/16 :goto_0

    :cond_3b
    move v5, v6

    goto/16 :goto_1

    :cond_3c
    move v5, v6

    goto/16 :goto_2

    :cond_3d
    move v5, v6

    goto/16 :goto_3

    :cond_3e
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/server/ssrm/Feature;->AP_TEMP_PATH:Ljava/lang/String;

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->sApTempPathExist:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    const-string v5, "SSRMv2:Feature"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "e = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_3f
    const/4 v5, 0x0

    :try_start_2
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->sApTempPathExist:Z

    goto/16 :goto_4

    :cond_40
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->STATIC_ANALYSIS:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5

    :cond_41
    move v5, v6

    goto/16 :goto_6

    :cond_42
    move v5, v6

    goto/16 :goto_7

    :cond_43
    move v5, v6

    goto :goto_8

    :cond_44
    move v5, v6

    goto :goto_9
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
