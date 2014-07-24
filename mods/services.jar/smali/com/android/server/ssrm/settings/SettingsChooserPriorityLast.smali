.class public Lcom/android/server/ssrm/settings/SettingsChooserPriorityLast;
.super Lcom/android/server/ssrm/settings/SettingsChooser;
.source "SettingsChooserPriorityLast.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/ssrm/settings/SettingsChooser",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/ssrm/settings/SettingsChooser;-><init>()V

    return-void
.end method


# virtual methods
.method public chooseSetting(Lcom/android/server/ssrm/settings/Setting;Lcom/android/server/ssrm/settings/Setting;)Lcom/android/server/ssrm/settings/Setting;
    .locals 0
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

    return-object p2
.end method
