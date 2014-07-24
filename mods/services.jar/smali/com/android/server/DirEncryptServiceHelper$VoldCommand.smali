.class final Lcom/android/server/DirEncryptServiceHelper$VoldCommand;
.super Ljava/lang/Object;
.source "DirEncryptServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DirEncryptServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VoldCommand"
.end annotation


# static fields
.field public static final CHANGE_ECRYPTFS_PASSWORD:Ljava/lang/String; = "changeEcryptfsPassword"

.field public static final ENCRYPT:Ljava/lang/String; = "encrypt"

.field public static final ENC_META_CHECK:Ljava/lang/String; = "encMetaCheck"

.field public static final MOUNT:Ljava/lang/String; = "mount"

.field public static final MOUNT_PATH_STATUS:Ljava/lang/String; = "isPathMounted"

.field public static final PASSWORD:Ljava/lang/String; = "password"

.field public static final SS_MIGRATION:Ljava/lang/String; = "ssMigration"

.field public static final UNMOUNT:Ljava/lang/String; = "unmount"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
