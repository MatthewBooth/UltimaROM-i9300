.class public Lcom/android/server/wifi_offload/ExceptionalAppList;
.super Ljava/lang/Object;
.source "ExceptionalAppList.java"


# static fields
.field public static appList:[Ljava/lang/String;

.field public static appList_Tablet:[Ljava/lang/String;

.field private static final mDependentPackagesTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static wifiAppList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x35

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "636f6d2e63657175696e742e65636964"

    invoke-static {v1}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "636f6d2e6d6f626974762e636c69656e742e6e666c32303130"

    invoke-static {v1}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "636f6d2e676f74762e6e666c67616d6563656e7465722e75732e6c697465"

    invoke-static {v1}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "636f6d2e73616d73756e672e766d6d687578"

    invoke-static {v1}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, "636f6d2e767a772e68732e616e64726f69642e6d6f646c697465"

    invoke-static {v1}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "636f6d2e73616d73756e672e76766d"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "636f6d2e767a6e6176696761746f722e53434849353335"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "636f6d2e767a6e6176696761746f722e53434849323030"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "636f6d2e767a6e6176696761746f722e53434849343135"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "636f6d2e767a6e6176696761746f722e53434849363035"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "636f6d2e767a6e6176696761746f722e53434849353435"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "636f6d2e767a6e6176696761746f722e47656e657269631f"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "636f6d2e616e64726f69642e63616c656e646172"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "636f6d2e7365632e616e64726f69642e6170702e63616d657261"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "636f6d2e616e64726f69642e636f6e7461637473"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "636f6d2e7365632e616e64726f69642e6170702e706f70757063616c63756c61746f72"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "636f6d2e676f6f676c652e616e64726f69642e617070732e6d617073"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "636f6d2e616e64726f69642e6d6d73"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "636f6d2e7365632e616e64726f69642e6170702e6d75736963"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "636f6d2e7365632e616e64726f69642e6170702e736574757077697a617264"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "636f6d2e616e64726f69642e73657474696e6773"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "636f6d2e7365632e616e64726f69642e6170702e766964656f706c61796572"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "636f6d2e7365632e616e64726f69642e6170702e636c6f636b7061636b616765"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "636f6d2e7365632e616e64726f69642e67616c6c6572793364"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "636f6d2e7365632e616e64726f69642e6170702e6d7966696c6573"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "636f6d2e73616d73756e672e7475746f7269616c"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "636f6d2e676f6f676c652e616e64726f69642e6d75736963"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "636f6d2e616e64726f69642e646576656c6f706d656e74"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "636f6d2e7365632e616e64726f69642e6170702e6d656d6f"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "636f6d2e64696f74656b2e70656e6d656d6f"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "636f6d2e676f6f676c652e616e64726f69642e766f696365736561726368"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "636f6d2e73616d73756e672e737067"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "636f6d2e7065656c2e617070"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "636f6d2e616e64726f69642e70686f6e65"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "636f6d2e7365632e616e64726f69642e6170702e636f6e74726f6c70616e656c"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "636f6d2e616e64726f69642e68696464656e6d656e75"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "636f6d2e7365632e616e64726f69642e6170702e736572766963656d6f6465617070"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "636f6d2e616e64726f69642e73616d73756e67746573742e53696d706c6546756e6374696f6e54657374"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "636f6d2e616e64726f69642e73616d73756e67746573742e466163746f727954657374"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "636f6d2e7365632e616e64726f69642e6170702e70686f6e657574696c"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "636f6d2e7365632e616e64726f69642e6170702e666163746f72796d6f6465"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "636f6d2e7365632e616e64726f69642e6170702e646c6e61"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "636f6d2e616e64726f69642e70726f7669646572732e646f776e6c6f6164732e7569"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "636f6d2e676f6f676c652e616e64726f69642e676f6f676c65717569636b736561726368626f78"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "636f6d2e7365632e616e64726f69642e6170702e73616d73756e6761707073"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "636f6d2e676f6f676c652e616e64726f69642e74616c6b"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "636f6d2e7365632e616e64726f69642e6170702e7665"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "636f6d2e67616d656c6f66742e616e64726f69642e564552495a4f4e2e476c6f66744c504850"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "636f6d2e7365632e616e64726f69642e696e7075746d6574686f64"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "636f6d2e7365632e616e64726f69642e6561737973657474696e6773"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "636f6d2e73616d73756e672e67726f757063617374"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "636f6d2e7365632e616e64726f69642e6175746f6d6f746976652e64726976656c696e6b"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "636f6d2e766572697a6f6e2e6d6573736167696e672e767a6d736773"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/wifi_offload/ExceptionalAppList;->appList:[Ljava/lang/String;

    const/16 v0, 0x2a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "636f6d2e6d6f626974762e636c69656e742e6e666c32303130"

    invoke-static {v1}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "636f6d2e73616d73756e672e766d6d687578"

    invoke-static {v1}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "636f6d2e767a772e68732e616e64726f69642e6d6f646c697465"

    invoke-static {v1}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "636f6d2e767a6e6176696761746f722e5461626c6574"

    invoke-static {v1}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, "636f6d2e616e64726f69642e63616c656e646172"

    invoke-static {v1}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "636f6d2e7365632e616e64726f69642e6170702e63616d657261"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "636f6d2e616e64726f69642e636f6e7461637473"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "636f6d2e7365632e616e64726f69642e6170702e706f70757063616c63756c61746f72"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "636f6d2e676f6f676c652e616e64726f69642e617070732e6d617073"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "636f6d2e7365632e616e64726f69642e6170702e6d75736963"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "636f6d2e7365632e616e64726f69642e6170702e736574757077697a617264"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "636f6d2e616e64726f69642e73657474696e6773"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "636f6d2e7365632e616e64726f69642e6170702e766964656f706c61796572"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "636f6d2e7365632e616e64726f69642e67616c6c6572793364"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "636f6d2e7365632e616e64726f69642e6170702e6d7966696c6573"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "636f6d2e73616d73756e672e7475746f7269616c"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "636f6d2e676f6f676c652e616e64726f69642e6d75736963"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "636f6d2e616e64726f69642e646576656c6f706d656e74"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "636f6d2e7365632e616e64726f69642e6170702e6d656d6f"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "636f6d2e64696f74656b2e70656e6d656d6f"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "636f6d2e676f6f676c652e616e64726f69642e766f696365736561726368"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "636f6d2e73616d73756e672e737067"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "636f6d2e7065656c2e617070"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "636f6d2e616e64726f69642e70686f6e65"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "636f6d2e7365632e616e64726f69642e6170702e636f6e74726f6c70616e656c"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "636f6d2e616e64726f69642e68696464656e6d656e75"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "636f6d2e7365632e616e64726f69642e6170702e736572766963656d6f6465617070"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "636f6d2e616e64726f69642e73616d73756e67746573742e53696d706c6546756e6374696f6e54657374"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "636f6d2e616e64726f69642e73616d73756e67746573742e466163746f727954657374"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "636f6d2e7365632e616e64726f69642e6170702e70686f6e657574696c"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "636f6d2e7365632e616e64726f69642e6170702e666163746f72796d6f6465"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "636f6d2e7365632e616e64726f69642e6170702e646c6e61"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "636f6d2e616e64726f69642e70726f7669646572732e646f776e6c6f6164732e7569"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "636f6d2e676f6f676c652e616e64726f69642e676f6f676c65717569636b736561726368626f78"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "636f6d2e7365632e616e64726f69642e6170702e73616d73756e6761707073"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "636f6d2e676f6f676c652e616e64726f69642e74616c6b"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "636f6d2e7365632e616e64726f69642e6170702e7665"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "636f6d2e67616d656c6f66742e616e64726f69642e564552495a4f4e2e476c6f66744c504850"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "636f6d2e7365632e616e64726f69642e696e7075746d6574686f64"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "636f6d2e7365632e616e64726f69642e6561737973657474696e6773"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "636f6d2e73616d73756e672e67726f757063617374"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "636f6d2e766572697a6f6e2e6d6573736167696e672e767a6d736773"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/wifi_offload/ExceptionalAppList;->appList_Tablet:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    invoke-static {}, Lcom/android/server/wifi_offload/ExceptionalAppList;->buildTable()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi_offload/ExceptionalAppList;->mDependentPackagesTable:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildTable()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "636f6d2e616e64726f69642e65786368616e6765"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "636f6d2e616e64726f69642e656d61696c"

    invoke-static {v2}, Lcom/android/server/wifi_offload/ExceptionalAppList;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method private static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getListOfDependentPackageNamesForDataUsage(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v1, Lcom/android/server/wifi_offload/ExceptionalAppList;->mDependentPackagesTable:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method
