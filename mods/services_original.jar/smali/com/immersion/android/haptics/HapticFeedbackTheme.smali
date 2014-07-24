.class public Lcom/immersion/android/haptics/HapticFeedbackTheme;
.super Ljava/lang/Object;
.source "HapticFeedbackTheme.java"


# static fields
.field protected static final DEF_MAP_EFFECT_DEFN_INDEX:I = 0x0

.field protected static final DEF_MAP_EVENT_INDEX:I = 0x0

.field public static final EFFECT_MAPPING_EFFECT_TYPE:I = 0x0

.field protected static final EFFECT_MAPPING_MOD_EFFECT_HANDLE:I = 0x1

.field protected static final EFFECT_MAPPING_MOD_EFFECT_TYPE:I = 0x2

.field protected static final EFFECT_MAPPING_MOD_EFFECT_VALUE:I = 0x3

.field protected static final EFFECT_MAPPING_PLAY_EFFECT_DEFN:I = 0x1

.field protected static final EFFECT_MAPPING_PLAY_EFFECT_INDEX:I = 0x2

.field public static final EFFECT_MAPPING_SIZE:I = 0x4

.field protected static final EFFECT_MAPPING_STOP_EFFECT_HANDLE:I = 0x1

.field public static final EFFECT_MAPPING_TYPE_MODIFY_EFFECT:I = 0x2

.field public static final EFFECT_MAPPING_TYPE_PLAY_EFFECT:I = 0x0

.field public static final EFFECT_MAPPING_TYPE_STOP_EFFECT:I = 0x1

#the value of this static final field might be set in the static constructor
.field public static final NUM_CONSTANTS:I = 0x0

.field static mUIEvents:Ljava/util/Hashtable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected static final sDefaultThemeIVTFile:Ljava/lang/String; = "/system/media/haptic/defaultHapticTheme.ivt"

.field private static sNbOFConstants:I


# instance fields
.field public mAuthority:Ljava/lang/String;

.field protected mCr:Landroid/content/ContentResolver;

.field protected mEffectDefinitionNames:[Ljava/lang/String;

.field protected mEffectDefinitions:[Lcom/immersion/IVTBuffer;

.field protected mMapping:[[[I

.field public mSuccessfullyFilled:Z

.field public mSuccessfullyLoaded:Z

.field protected mTSDevices:[Lcom/immersion/Device;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    sput v1, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LONG_PRESS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "VIRTUAL_KEY"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_TAP"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x2710

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SAFE_MODE_DISABLED"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x2711

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SAFE_MODE_ENABLED"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x4e20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "BUTTON_CLICK"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x4e2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "BUTTON_PRESS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x4e84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LISTVIEW_CLICK"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x4e8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LISTVIEW_PRESS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x4eac

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LISTVIEW_SCROLL_END_BOUNCE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5223

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SCROLLER_SCROLL_END_BOUNCE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x4ea2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LISTVIEW_FLING_END_BOUNCE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x4e98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LISTVIEW_ITEMSCROLL"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x4fb0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "TABHOST_TABCHANGE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x4fba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "TABHOST_TABPRESS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5014

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "EXPANDABLELISTVIEW_CLICK"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5078

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SEEKBAR_TOUCH"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x4ee8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "TEXTVIEW_SETCURSOR"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x4ef2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "TEXTVIEW_SELECTCHAR"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x4efc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "TEXTVIEW_SELECTWORD"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x4f06

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "TEXTVIEW_SELECTLINE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x4f10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "TEXTVIEW_TAPWORD"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x4f1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "TEXTVIEW_FOCUS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x61a8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_TAP_BACKSPACE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x61b2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_OPTIONS_MENU_OPEN"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x61d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_RIBBON_SELECT"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x61da

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_RIBBON_ADD_TO_DICTIONARY"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x61e4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_RIBBON_TOUCH"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x61ee

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_BACKSPACE_END"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x61f8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_SHIFT_STATE_UPPER_CASE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x6202

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_SHIFT_STATE_MIXED_CASE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x620c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_SHIFT_STATE_LOWER_CASE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x6216

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_SHIFT_TOGGLE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x6220

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_TAP_ALT"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x622a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_TAP_SHIFT"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x6234

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_TAP_MODE_CHANGE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x623e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_TAP_SPACE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x62a2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_KEY_EDGE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x6248

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_POPUP_MENU_OPEN"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x6252

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_POPUP_MENU_CLOSE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x6266

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_RIBBON_HIGHLIGHT_WORD"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x6284

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_RIBBON_HIGHLIGHT_WORD_CHANGED"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x50dc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "AUTOCOMPLETETEXTVIEW_LISTCHANGE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x62c0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_REPEAT_KEY_BACKSPACE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x62b6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_REPEAT_KEY_SPACE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x62ca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_REPEAT_KEY_DEFAULT"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x62e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_TAP_TAB"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x4f4c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "NOTIFICATION_GENERAL"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5140

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "STATUSBAR_CLEAR_BUTTON_PRESS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x514a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "STATUSBAR_CLEAR_BUTTON_CLICK"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5154

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "STATUSBAR_PRESS_EXPAND"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5168

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "STATUSBAR_PRESS_COLLAPSE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x517c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "STATUSBAR_ITEM_PRESS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5186

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "STATUSBAR_ITEM_CLICK"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x515e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "STATUSBAR_ITEM_SHOW_HIDE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5172

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "STATUSBAR_FLING_END"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x51a4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "VIEWANIMATOR_ANIMATION_START"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x51b8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "VIEWANIMATOR_ANIMATION_END"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5208

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SCROLLER_SCROLL"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5212

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SCROLLER_FLING"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x521c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SCROLLER_FLING_END"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5226

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SCROLLER_ABORT"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5221

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SCROLLER_FLING_END_BOUNCE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x526c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "STACKVIEW_SCROLL"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x54c4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "OPTIONS_MENU_SHOW"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x54ce

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "OPTIONS_MENU_HIDE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x54d8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "OPTIONS_MENU_PRESS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x54e2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "OPTIONS_MENU_CLICK"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5528

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "PROGRESSBAR_START"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5532

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "PROGRESSBAR_END"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x553c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "PROGRESSBAR_INCREMENT"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x558c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "WORKSPACE_FLING_START"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5596

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "WORKSPACE_FLING_END"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x55a0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "WORKSPACE_FLING_EDGE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5640

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LAUNCHER_ALLAPPSDRAWER_CLICK"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x564a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LAUNCHER_ALLAPPSDRAWER_PRESS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5654

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LAUNCHER_FOLDER_CLICK"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x565e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LAUNCHER_FOLDER_PRESS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x565f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LAUNCHER_FOLDER_HOVER"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5668

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LAUNCHER_SHORTCUT_CLICK"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5672

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LAUNCHER_SHORTCUT_PRESS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x567c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LAUNCHER_WIDGET_RESIZE_START"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5686

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LAUNCHER_WIDGET_RESIZE_END"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5690

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LAUNCHER_WIDGET_RESIZE_SNAP"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5695

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LAUNCHER_SHORTCUT_REMOVE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x6457

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "HOMESCREEN_ICON_DROP"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x6458

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "HOMESCREEN_ICON_SNAP"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x56b8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ACTIVITY_LAUNCH"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5780

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CALL_DROPPED_LOST_SIGNAL"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x578a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CALL_DROPPED_OTHER"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x52ee

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "GALLERY_FLING_START"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x52f8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "GALLERY_FLING_END"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5302

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "GALLERY_SCROLL"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x530c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "GALLERY_FLING_EDGE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5316

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "GALLERY_ALBUM_CLOSE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5320

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "GALLERY_ALBUM_OPEN"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x532a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "GALLERY_IMAGE_CLOSE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x52d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "GALLERY_IMAGE_CLICK"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x52da

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "GALLERY_IMAGE_PRESS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x52e4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "GALLERY_IMAGE_SELECT"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x52e5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "GALLERY_THUMBNAIL_SELECT"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5303

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "GALLERY_FILMSTRIP_PRESS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5304

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "GALLERY_FILMSTRIP_SNAP"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5305

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "GALLERY_SWITCH_FULLSCREEN"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5306

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "GALLERY_SWITCH_FILMSTRIP"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x57e4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CAMERA_ZOOM"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x57e5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CAMERA_ZOOM_MIN_MAX"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x57e6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CAMERA_PIE_OPEN"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x57e7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CAMERA_PIE_CLOSE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x57e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CAMERA_PIE_SELECT_ITEM"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x57e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CAMERA_PIE_SELECT_ITEM_SLIDE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x57ee

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CAMERA_SHUTTER_PRESS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x57f8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CAMERA_SHUTTER_CLICK"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5802

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CAMERA_PREVIEW_PRESS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x580c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CAMERA_PREVIEW_CLICK"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5816

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CAMERA_DRAWER_OPEN"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5820

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CAMERA_MODE_FLIP"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x57ea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CAMERA_SWITCHER_PRESS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x57eb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CAMERA_SWITCHER_CLICK"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5848

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ACTIVATE_RINGER_MODE_VIBRATE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5988

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SLIDING_DRAWER_PRESS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5992

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SLIDING_DRAWER_CLICK"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x599c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SLIDING_DRAWER_TRANSITING"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x59a6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SLIDING_DRAWER_FULL_OPEN"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x59b0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SLIDING_DRAWER_FULL_CLOSED"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x6338

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "NUMBERPICKER_ITEMSCROLL"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x6339

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "NUMBERPICKER_INPUT_PRESS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x6428

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "DATE_PICKER_DAY_TAP"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x639c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "WAVEVIEW_TOUCH"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x63a1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "WAVEVIEW_SNAP"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x63a6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "WAVEVIEW_RELEASE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5190

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "STATUSBAR_VIEW_SWAP"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x63ce

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "DOWNLOAD_START"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x63d8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "DOWNLOAD_END"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x63e2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "BROWSER_DROPDOWN_OPEN"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x63e7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "BROWSER_DROPDOWN_CLOSE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x63ec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "BROWSER_CLOSE_PAGE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x640a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CALCULATOR_FLING_START"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x6414

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CALCULATOR_FLING_END"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x641e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CALCULATOR_FLING_EDGE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x63f6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CALENDAR_DAY_SELECT"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x63fb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CALENDAR_FLING_START"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x6400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CALENDAR_FLING_END"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x58b6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "PHONE_UNLOCK_SUCCESS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x58c0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "PHONE_UNLOCK_FAILURE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x6432

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LOCK_SCREEN_UNLOCK"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x643c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LOCK_SCREEN_CAMERA"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x6446

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LOCK_SCREEN_RING_MODE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x644b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LOCK_SCREEN_VIBRATION_MODE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x58ac

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LOCK_PATTERN"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x597e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SLIDING_TAB_RELEASE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5974

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SLIDING_TAB_TOUCH"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x6450

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "HOMESCREEN_MENUOPEN"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x6455

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "HOMESCREEN_MENUCLOSE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x645a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SEND_MAIL"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x645f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ADD_ATTACHMENT"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x56ea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "APPLICATION_LAUNCH"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x6464

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "POWER_CHARGING"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x6469

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "POWER_DISCHARGING"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x59d8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SWIPEHELPER_REMOVE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x59d9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SWIPEHELPER_PRESS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x6478

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SWIPEHELPER_INFORM"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x646e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "DIALER_FIVE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x6473

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "DIALER_SEND"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    sput v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->NUM_CONSTANTS:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/ContentResolver;[Lcom/immersion/Device;)V
    .locals 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, ""

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mAuthority:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyLoaded:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyFilled:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mTSDevices:[Lcom/immersion/Device;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mEffectDefinitions:[Lcom/immersion/IVTBuffer;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mEffectDefinitionNames:[Ljava/lang/String;

    const/4 v1, 0x0

    check-cast v1, [[[I

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mMapping:[[[I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mCr:Landroid/content/ContentResolver;

    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mAuthority:Ljava/lang/String;

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mTSDevices:[Lcom/immersion/Device;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyFilled:Z

    const-string v1, "content://com.immersion.android.haptics.defaulttheme"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyLoaded:Z

    sget v1, Lcom/immersion/android/haptics/HapticFeedbackTheme;->NUM_CONSTANTS:I

    new-array v1, v1, [[[I

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mMapping:[[[I

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/immersion/IVTBuffer;

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mEffectDefinitions:[Lcom/immersion/IVTBuffer;

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v13, v1, [B

    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    const-string v1, "/system/media/haptic/defaultHapticTheme.ivt"

    invoke-direct {v10, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/FileInputStream;->available()I

    move-result v12

    :goto_0
    if-lez v12, :cond_0

    invoke-virtual {v10, v13}, Ljava/io/FileInputStream;->read([B)I

    move-result v12

    const/4 v1, 0x0

    invoke-virtual {v7, v13, v1, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v10}, Ljava/io/FileInputStream;->available()I

    move-result v12

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mEffectDefinitions:[Lcom/immersion/IVTBuffer;

    const/4 v2, 0x0

    new-instance v3, Lcom/immersion/IVTBuffer;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/immersion/IVTBuffer;-><init>([B)V

    aput-object v3, v1, v2

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mEffectDefinitionNames:[Ljava/lang/String;

    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mEffectDefinitionNames:[Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "HapticFeedbackDefaultEffects"

    aput-object v3, v1, v2

    invoke-virtual {p0}, Lcom/immersion/android/haptics/HapticFeedbackTheme;->loadDefaultTheme()V

    :cond_1
    :goto_2
    return-void

    :catch_0
    move-exception v9

    const-string v1, "HapticFeedbackManager"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "HapticFeedbackManager"

    const-string v2, "HapticFeedbackTheme --> Fail to load default theme data at: /system/media/haptic/defaultHapticTheme.ivt"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mEffectDefinitions:[Lcom/immersion/IVTBuffer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    goto :goto_1

    :cond_3
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mCr:Landroid/content/ContentResolver;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyLoaded:Z

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mCr:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mAuthority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "manifest"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    new-instance v11, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;

    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mCr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mAuthority:Ljava/lang/String;

    sget-object v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    invoke-direct {v11, v1, v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/Hashtable;)V

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    invoke-virtual {v11}, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->getThemeLoadedSuccessfully()Z

    move-result v1

    iput-boolean v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyLoaded:Z

    iget-boolean v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyLoaded:Z

    if-eqz v1, :cond_6

    new-instance v14, Lcom/immersion/android/haptics/HapticFeedbackThemeData;

    invoke-direct {v14}, Lcom/immersion/android/haptics/HapticFeedbackThemeData;-><init>()V

    invoke-virtual {v11, v14}, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->fillTheme(Lcom/immersion/android/haptics/HapticFeedbackThemeData;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyFilled:Z

    iget-boolean v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyLoaded:Z

    iget-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyFilled:Z

    and-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyLoaded:Z

    iget-boolean v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyLoaded:Z

    if-eqz v1, :cond_5

    iget-object v1, v14, Lcom/immersion/android/haptics/HapticFeedbackThemeData;->effectDefns:[Lcom/immersion/IVTBuffer;

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mEffectDefinitions:[Lcom/immersion/IVTBuffer;

    iget-object v1, v14, Lcom/immersion/android/haptics/HapticFeedbackThemeData;->effectNames:[Ljava/lang/String;

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mEffectDefinitionNames:[Ljava/lang/String;

    iget-object v1, v14, Lcom/immersion/android/haptics/HapticFeedbackThemeData;->mapping:[[[I

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mMapping:[[[I

    :cond_5
    :goto_3
    const-string v1, "HapticFeedbackManager"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HapticFeedbackTheme --> loading result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyLoaded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->getThemeLoadingLogOutput()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_6
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyFilled:Z

    goto :goto_3

    :cond_7
    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_8
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyLoaded:Z

    goto/16 :goto_2
.end method


# virtual methods
.method protected loadDefaultTheme()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mEffectDefinitions:[Lcom/immersion/IVTBuffer;

    aget-object v0, v7, v9

    sget v7, Lcom/immersion/android/haptics/HapticFeedbackTheme;->NUM_CONSTANTS:I

    new-array v6, v7, [Ljava/lang/Integer;

    sget-object v7, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Integer;

    const/4 v3, 0x0

    :goto_0
    array-length v7, v6

    if-ge v3, v7, :cond_2

    sget-object v7, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    aget-object v8, v6, v3

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v7, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v7, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/immersion/IVTBuffer;->getEffectIndexFromName(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    const/4 v7, -0x1

    if-eq v7, v4, :cond_1

    iget-object v7, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mMapping:[[[I

    new-array v8, v10, [[I

    aput-object v8, v7, v5

    iget-object v7, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mMapping:[[[I

    aget-object v7, v7, v5

    const/4 v8, 0x4

    new-array v8, v8, [I

    aput-object v8, v7, v9

    iget-object v7, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mMapping:[[[I

    aget-object v7, v7, v5

    aget-object v7, v7, v9

    aput v9, v7, v9

    iget-object v7, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mMapping:[[[I

    aget-object v7, v7, v5

    aget-object v7, v7, v9

    aput v9, v7, v10

    iget-object v7, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mMapping:[[[I

    aget-object v7, v7, v5

    aget-object v7, v7, v9

    const/4 v8, 0x2

    aput v4, v7, v8

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v4, -0x1

    goto :goto_1

    :cond_1
    iget-object v8, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mMapping:[[[I

    const/4 v7, 0x0

    check-cast v7, [[I

    aput-object v7, v8, v5

    goto :goto_2

    :cond_2
    return-void
.end method

.method public performHapticFeedback(ILcom/immersion/Device;)Z
    .locals 12

    new-instance v7, Ljava/lang/StringBuffer;

    const-string v9, "performHapticFeedback:"

    invoke-direct {v7, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    const/4 v3, 0x0

    const/4 v6, 0x1

    iget-boolean v9, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyLoaded:Z

    if-nez v9, :cond_1

    const-string v9, "HapticFeedbackManager"

    const/4 v10, 0x6

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "HapticFeedbackManager"

    const-string v10, "HapticFeedbackTheme --> Fail to performHapticFeedback() due to theme corruption."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v9, 0x0

    :goto_0
    return v9

    :cond_1
    if-nez v5, :cond_3

    const-string v9, "HapticFeedbackManager"

    const/4 v10, 0x5

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "HapticFeedbackManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HapticFeedbackTheme --> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " RESULT: FALSE, unsupported effect id: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "effectId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v9, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v9, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mMapping:[[[I

    aget-object v9, v9, v3

    if-nez v9, :cond_5

    const-string v9, "HapticFeedbackManager"

    const/4 v10, 0x5

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "HapticFeedbackManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HapticFeedbackTheme --> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " RESULT: FALSE, no mapping for this ui event"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v9, 0x0

    goto :goto_0

    :cond_5
    iget-object v9, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mMapping:[[[I

    aget-object v4, v9, v3

    const/4 v2, 0x0

    :goto_1
    array-length v9, v4

    if-ge v2, v9, :cond_b

    aget-object v1, v4, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ", actionIndex="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", effectType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v9, 0x0

    aget v9, v1, v9

    packed-switch v9, :pswitch_data_0

    const-string v9, "UNSUPPORTED"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "HapticFeedbackManager"

    const/4 v10, 0x5

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "HapticFeedbackManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HapticFeedbackTheme --> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " RESULT: FALSE, unsupported effect type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget v11, v1, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v6, 0x0

    :cond_7
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PLAY, effectName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mEffectDefinitionNames:[Ljava/lang/String;

    const/4 v11, 0x1

    aget v11, v1, v11

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", effectIndex="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    aget v10, v1, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v8, 0x1

    :try_start_0
    iget-object v9, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mEffectDefinitions:[Lcom/immersion/IVTBuffer;

    const/4 v10, 0x1

    aget v10, v1, v10

    aget-object v9, v9, v10

    const/4 v10, 0x2

    aget v10, v1, v10

    invoke-virtual {p2, v9, v10}, Lcom/immersion/Device;->playIVTEffect(Lcom/immersion/IVTBuffer;I)Lcom/immersion/EffectHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    if-eqz v8, :cond_7

    const-string v9, "HapticFeedbackManager"

    const/4 v10, 0x4

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v9, "HapticFeedbackManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HapticFeedbackTheme --> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " RESULT: TRUE"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_0
    move-exception v0

    const/4 v8, 0x0

    const-string v9, "HapticFeedbackManager"

    const/4 v10, 0x5

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v9, "HapticFeedbackManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HapticFeedbackTheme --> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " RESULT: FALSE, error while playing effect: \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/4 v6, 0x0

    goto :goto_3

    :pswitch_1
    const-string v9, "STOP"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "HapticFeedbackManager"

    const/4 v10, 0x5

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v9, "HapticFeedbackManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HapticFeedbackTheme --> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " RESULT: FALSE, stopping playing effect is not yet supported."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_2

    :pswitch_2
    const-string v9, "MODIFY"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "HapticFeedbackManager"

    const/4 v10, 0x5

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_a

    const-string v9, "HapticFeedbackManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HapticFeedbackTheme --> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " RESULT: FALSE, modifying playing effect is not yet supported."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_b
    move v9, v6

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public ping()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    iget-boolean v0, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyFilled:Z

    if-nez v0, :cond_1

    iput-boolean v7, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyLoaded:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mAuthority:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mAuthority:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    const-string v0, "HapticFeedbackManager"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "HapticFeedbackManager"

    const-string v1, "HapticFeedbackTheme --> authority is null or it is empty string"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-boolean v7, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyLoaded:Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mAuthority:Ljava/lang/String;

    const-string v1, "content://com.immersion.android.haptics.defaulttheme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "HapticFeedbackManager"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "HapticFeedbackManager"

    const-string v1, "HapticFeedbackTheme --> authority set to the default theme"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iput-boolean v8, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyLoaded:Z

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mCr:Landroid/content/ContentResolver;

    if-nez v0, :cond_8

    const-string v0, "HapticFeedbackManager"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "HapticFeedbackManager"

    const-string v1, "HapticFeedbackTheme --> mCr is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iput-boolean v7, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyLoaded:Z

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mCr:Landroid/content/ContentResolver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "manifest"

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_9

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    iput-boolean v8, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyLoaded:Z

    const-string v0, "HapticFeedbackManager"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HapticFeedbackManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HapticFeedbackTheme --> Everything\'s is alright with the theme with authority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    if-eqz v6, :cond_a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_a
    const-string v0, "HapticFeedbackManager"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "HapticFeedbackManager"

    const-string v1, "HapticFeedbackTheme --> cursor is null, or its size is not 1"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iput-boolean v7, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyLoaded:Z

    goto/16 :goto_0
.end method
