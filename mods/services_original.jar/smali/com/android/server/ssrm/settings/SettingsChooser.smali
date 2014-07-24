.class public abstract Lcom/android/server/ssrm/settings/SettingsChooser;
.super Ljava/lang/Object;
.source "SettingsChooser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final SSRM_OPTION_FORCED:Ljava/lang/String; = "forced"

.field public static final SSRM_OPTION_NOTHING:Ljava/lang/String; = "nothing"

.field public static final SSRM_OPTION_NULL:Ljava/lang/String; = "null"

.field public static final SSRM_OPTION_RELEASED:Ljava/lang/String; = "released"

.field public static final SSRM_OPTION_TRIGGERED:Ljava/lang/String; = "triggered"

.field public static final SSRM_OPTION_UNCHANGED:Ljava/lang/String; = "unchanged"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract chooseSetting(Lcom/android/server/ssrm/settings/Setting;Lcom/android/server/ssrm/settings/Setting;)Lcom/android/server/ssrm/settings/Setting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ssrm/settings/Setting",
            "<TT;>;",
            "Lcom/android/server/ssrm/settings/Setting",
            "<TT;>;)",
            "Lcom/android/server/ssrm/settings/Setting",
            "<TT;>;"
        }
    .end annotation
.end method
