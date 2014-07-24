.class Lcom/android/server/pm/PackageManagerService$18;
.super Ljava/lang/Thread;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->checkDPMAndSaveHash(Ljava/lang/String;Ljava/io/File;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$apkFilePath:Ljava/io/File;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/io/File;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$18;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$18;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$18;->val$apkFilePath:Ljava/io/File;

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$18;->val$userHandle:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$18;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$18;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$18;->val$apkFilePath:Ljava/io/File;

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$18;->val$userHandle:I

    #calls: Lcom/android/server/pm/PackageManagerService;->saveHash(Ljava/lang/String;Ljava/io/File;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->access$5500(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/io/File;I)V

    return-void
.end method
