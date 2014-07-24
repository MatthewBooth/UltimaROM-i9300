.class Lcom/android/server/ssrm/settings/MainController$1;
.super Ljava/lang/Object;
.source "MainController.java"

# interfaces
.implements Lcom/android/server/ssrm/settings/LevelsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/settings/MainController;->initialize(Lcom/android/server/ssrm/settings/LevelsFactory;Ljava/io/InputStream;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/settings/MainController;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/settings/MainController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/settings/MainController$1;->this$0:Lcom/android/server/ssrm/settings/MainController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createLevel()Lcom/android/server/ssrm/settings/Level;
    .locals 1

    new-instance v0, Lcom/android/server/ssrm/settings/Level;

    invoke-direct {v0}, Lcom/android/server/ssrm/settings/Level;-><init>()V

    return-object v0
.end method

.method public createLevelsController()Lcom/android/server/ssrm/settings/LevelsController;
    .locals 1

    new-instance v0, Lcom/android/server/ssrm/settings/LevelsControllerDefault;

    invoke-direct {v0}, Lcom/android/server/ssrm/settings/LevelsControllerDefault;-><init>()V

    return-object v0
.end method
