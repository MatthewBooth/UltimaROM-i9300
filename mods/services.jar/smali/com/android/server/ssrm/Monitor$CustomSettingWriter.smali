.class Lcom/android/server/ssrm/Monitor$CustomSettingWriter;
.super Lcom/android/server/ssrm/settings/SettingWriter;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomSettingWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/ssrm/settings/SettingWriter",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/Monitor;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$CustomSettingWriter;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-direct {p0, p2}, Lcom/android/server/ssrm/settings/SettingWriter;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected applySetting(Lcom/android/server/ssrm/settings/Setting;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ssrm/settings/Setting",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected convertToValue(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic convertToValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/Monitor$CustomSettingWriter;->convertToValue(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
