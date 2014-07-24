.class final Lcom/android/server/DirEncryptServiceHelper$Notify;
.super Ljava/lang/Object;
.source "DirEncryptServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DirEncryptServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Notify"
.end annotation


# static fields
.field private static final BASE:I = 0x0

.field public static final CHANGE_ECRYPTFS_PASSWORD:I = 0x8

.field public static final ENCRYPT:I = 0x2

.field public static final ENC_START:I = 0x1

.field public static final FILE_OPEN_ERR:I = 0xb

.field public static final MOUNT:I = 0x3

.field public static final MOUNT_PATH_STATUS:I = 0x9

.field public static final PRESCAN_FULL_ERR:I = 0x6

.field public static final PROGRESS:I = 0x5

.field public static final SECURITY_NOTIFICATION:I = 0x7

.field public static final UNMOUNT:I = 0x4

.field public static final UNMOUNT_POLICY_NEED:I = 0xa


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
