.class Lcom/android/server/RecognitionManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "RecognitionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RecognitionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/RecognitionManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/RecognitionManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/RecognitionManagerService$MyPackageMonitor;->this$0:Lcom/android/server/RecognitionManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onSomePackagesChanged()V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/RecognitionManagerService$MyPackageMonitor;->this$0:Lcom/android/server/RecognitionManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/RecognitionManagerService;->getCurRecognizer(I)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->anyPackagesAppearing()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/RecognitionManagerService$MyPackageMonitor;->this$0:Lcom/android/server/RecognitionManagerService;

    invoke-virtual {v3, v5, v2}, Lcom/android/server/RecognitionManagerService;->findAvailRecognizer(Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/server/RecognitionManagerService$MyPackageMonitor;->this$0:Lcom/android/server/RecognitionManagerService;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/RecognitionManagerService;->setCurRecognizer(Landroid/content/ComponentName;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/content/PackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/android/server/RecognitionManagerService$MyPackageMonitor;->this$0:Lcom/android/server/RecognitionManagerService;

    iget-object v4, p0, Lcom/android/server/RecognitionManagerService$MyPackageMonitor;->this$0:Lcom/android/server/RecognitionManagerService;

    invoke-virtual {v4, v5, v2}, Lcom/android/server/RecognitionManagerService;->findAvailRecognizer(Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/server/RecognitionManagerService;->setCurRecognizer(Landroid/content/ComponentName;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/content/PackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/RecognitionManagerService$MyPackageMonitor;->this$0:Lcom/android/server/RecognitionManagerService;

    iget-object v4, p0, Lcom/android/server/RecognitionManagerService$MyPackageMonitor;->this$0:Lcom/android/server/RecognitionManagerService;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/android/server/RecognitionManagerService;->findAvailRecognizer(Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/server/RecognitionManagerService;->setCurRecognizer(Landroid/content/ComponentName;I)V

    goto :goto_0
.end method
