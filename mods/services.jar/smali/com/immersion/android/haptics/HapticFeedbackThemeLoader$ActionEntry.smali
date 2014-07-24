.class Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$ActionEntry;
.super Ljava/lang/Object;
.source "HapticFeedbackThemeLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionEntry"
.end annotation


# instance fields
.field effectEntries:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectActionEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;


# direct methods
.method private constructor <init>(Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;)V
    .locals 1

    iput-object p1, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$ActionEntry;->this$0:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$ActionEntry;->effectEntries:Ljava/util/Vector;

    return-void
.end method

.method synthetic constructor <init>(Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$ActionEntry;-><init>(Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;)V

    return-void
.end method
