.class Lcom/android/server/ssrm/Monitor$9;
.super Lcom/android/server/ssrm/Monitor$CustomSettingWriter;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/Monitor;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$9;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-direct {p0, p1, p2}, Lcom/android/server/ssrm/Monitor$CustomSettingWriter;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public applySetting(Lcom/android/server/ssrm/settings/Setting;)V
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
