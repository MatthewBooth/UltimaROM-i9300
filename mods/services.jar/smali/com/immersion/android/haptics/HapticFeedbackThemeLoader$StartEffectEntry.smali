.class Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$StartEffectEntry;
.super Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectActionEntry;
.source "HapticFeedbackThemeLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartEffectEntry"
.end annotation


# instance fields
.field public mEffectName:Ljava/lang/String;

.field public mId:Ljava/lang/String;

.field final synthetic this$0:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;


# direct methods
.method private constructor <init>(Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$StartEffectEntry;->this$0:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;

    invoke-direct {p0, p1, v0}, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectActionEntry;-><init>(Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$1;)V

    iput-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$StartEffectEntry;->mId:Ljava/lang/String;

    iput-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$StartEffectEntry;->mEffectName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$StartEffectEntry;-><init>(Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;)V

    return-void
.end method
