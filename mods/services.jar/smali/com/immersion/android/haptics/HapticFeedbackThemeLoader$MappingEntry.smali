.class Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$MappingEntry;
.super Ljava/lang/Object;
.source "HapticFeedbackThemeLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MappingEntry"
.end annotation


# instance fields
.field public actions:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$ActionEntry;",
            ">;"
        }
    .end annotation
.end field

.field public event:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EventEntry;

.field final synthetic this$0:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;


# direct methods
.method private constructor <init>(Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;)V
    .locals 1

    iput-object p1, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$MappingEntry;->this$0:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$MappingEntry;->event:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EventEntry;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$MappingEntry;->actions:Ljava/util/Vector;

    return-void
.end method

.method synthetic constructor <init>(Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$MappingEntry;-><init>(Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;)V

    return-void
.end method
