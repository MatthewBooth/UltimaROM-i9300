.class public Lcom/android/server/ssrm/HotGameList;
.super Ljava/lang/Object;
.source "HotGameList.java"


# static fields
.field public static HotGameGroup0:[Ljava/lang/String; = null

.field public static HotGameGroup1:[Ljava/lang/String; = null

.field public static HotGameGroup2:[Ljava/lang/String; = null

.field public static HotGameGroup3:[Ljava/lang/String; = null

.field public static HotGameGroup4:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "SSRMv2:HotGameList"

.field static sKnownGameHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    new-array v7, v12, [Ljava/lang/String;

    const-string v8, "636f6d2e636a656e6d2e4d6f646f6f4d6172626c654b616b616f"

    invoke-static {v8}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    const-string v8, "636f6d2e61726273747564696f732e74696b696b61727466726565"

    invoke-static {v8}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    sput-object v7, Lcom/android/server/ssrm/HotGameList;->HotGameGroup0:[Ljava/lang/String;

    const/16 v7, 0x2f

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "636f6d2e65612e67616d65732e72335f726f77"

    invoke-static {v8}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    const-string v8, "636f6d2e65612e67616d65732e72335f6e61"

    invoke-static {v8}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    const-string v8, "636f6d2e67616d656c6f66742e616e64726f69642e414e4d502e476c6f6674494d484d"

    invoke-static {v8}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    const-string v8, "636f6d2e67616d656c6f66742e616e64726f69642e414e4d502e476c6f66744941484d"

    invoke-static {v8}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v13

    const-string v8, "636f6d2e67616d656c6f66742e616e64726f69642e414e4d502e476c6f66744d42484d"

    invoke-static {v8}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v14

    const/4 v8, 0x5

    const-string v9, "636f6d2e657870657269656e63655f67616d655f33642e747275636b2e7061726b696e67"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "636f6d2e69636c6f75647a6f6e652e547275636b5061726b3344"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x7

    const-string v9, "636f6d2e66756e67616d65732e747275636b2e7061726b696e672e627573"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x8

    const-string v9, "636f6d2e616e64726f6964726f6d616e69612e747275636b7061726b696e67"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x9

    const-string v9, "636f6d2e746170696e61746f722e747275636b2e7061726b696e672e6275733364"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xa

    const-string v9, "636f6d2e50756c7361722e5061726b696e67547275636b3344"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xb

    const-string v9, "636f6d2e66697265747275636b7061726b696e673364"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xc

    const-string v9, "636f6d2e616e64726f6964726f6d616e69612e6575747275636b"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xd

    const-string v9, "6169722e547275636b5061726b696e674d616e6961"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xe

    const-string v9, "636f6d2e6d6164656c65696e65736d69746873692e747275636b7061726b696e67"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xf

    const-string v9, "706c2e73757269782e7061726b696e67747275636b"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x10

    const-string v9, "636f6d2e62697474616c65732e747275636b7061726b696e67"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x11

    const-string v9, "7777772e6368692e5061726b696e67436172"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x12

    const-string v9, "636f6d2e70616e6f736f66742e7061726b696e67747275636b"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x13

    const-string v9, "636f6d2e70616e6f736f66742e7061726b696e67747275636b66726565"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x14

    const-string v9, "636f6d2e76672e747275636b7061726b696e67"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x15

    const-string v9, "636f6d2e6d636b2e73706565647061726b696e67"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x16

    const-string v9, "6169722e4c6561726e6572735061726b696e67"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x17

    const-string v9, "636f6d2e73747564696f3377672e6d6f6e73746572747275636b7061726b696e67"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x18

    const-string v9, "636f6d2e74696d656b696c6c65722e747275636b7061726b696e673344"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x19

    const-string v9, "636f6d2e74726966696e676765722e747275636b7061726b"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x1a

    const-string v9, "636f6d2e616e63686f7267616d652e747275636b7061726b696e673264"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x1b

    const-string v9, "636f6d2e70616c6d706c652e6b6f726573626c2e676f6f676c65"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x1c

    const-string v9, "636f6d2e7061746973747564696f2e6d696c63346b616b616f"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x1d

    const-string v9, "636f6d2e636a656e6d2e6d6f6e73746572"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x1e

    const-string v9, "636f6d2e726f76696f2e616e6772796269726473"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x1f

    const-string v9, "636f6d2e696d616e67692e74656d706c6572756e"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x20

    const-string v9, "636f6d2e616c706861636c6f75642e636173746c656d6173746572"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x21

    const-string v9, "636f6d2e73747564696f373737352e426561744d5033"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x22

    const-string v9, "636f6d2e636a656e6d2e626f6f6e67"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x23

    const-string v9, "636f6d2e6674742e7375686f6a695f676c5f346b616b616f"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x24

    const-string v9, "636f6d2e6269636f72652e67726f6164"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x25

    const-string v9, "636f6d2e67616d656c6f66742e616e64726f69642e414e4d502e476c6f667441364850"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x26

    const-string v9, "636f6d2e67616d656c6f66742e616e64726f69642e47414e442e476c6f667441364850"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x27

    const-string v9, "636f6d2e67616d656c6f66742e616e64726f69642e414e4d502e476c6f66744137484d"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x28

    const-string v9, "636f6d2e67616d656c6f66742e616e64726f69642e47414e442e476c6f667437415353"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x29

    const-string v9, "636f6d2e67616d656c6f66742e616e64726f69642e414e4d502e476c6f66744138484d"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x2a

    const-string v9, "47414e442e476c6f667441"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x2b

    const-string v9, "414e4d502e476c6f667441"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x2c

    const-string v9, "636f6d2e65612e67616d652e70767a325f726f77"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x2d

    const-string v9, "636f6d2e6e6f6b6e6f6b2e42454155545943495459"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x2e

    const-string v9, "6d652e706f752e617070"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    sput-object v7, Lcom/android/server/ssrm/HotGameList;->HotGameGroup1:[Ljava/lang/String;

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "636f6d2e676c752e67756e62726f7332"

    invoke-static {v8}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    const-string v8, "636f6d2e676c752e726f626f636f70"

    invoke-static {v8}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    const-string v8, "636f6d2e736567612e736f6e696364617368"

    invoke-static {v8}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    const-string v8, "636f6d2e676c752e6577617272696f727333"

    invoke-static {v8}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v13

    const-string v8, "636f6d2e736f6369616c7175616e74756d2e61636974796b616b616f"

    invoke-static {v8}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v14

    const/4 v8, 0x5

    const-string v9, "636f6d2e636a656e6d2e6865726f6573"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    sput-object v7, Lcom/android/server/ssrm/HotGameList;->HotGameGroup2:[Ljava/lang/String;

    new-array v7, v13, [Ljava/lang/String;

    const-string v8, "636f6d2e6570696367616d65732e457069634369746164656c"

    invoke-static {v8}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    const-string v8, "636f6d2e65612e67616d65732e72335f726f77"

    invoke-static {v8}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    const-string v8, "636f6d2e65612e67616d65732e72335f6e61"

    invoke-static {v8}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    sput-object v7, Lcom/android/server/ssrm/HotGameList;->HotGameGroup3:[Ljava/lang/String;

    const/16 v7, 0xc

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "636f6d2e62657374736f6c6974616972652e736f6c697461697265"

    invoke-static {v8}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    const-string v8, "636f6d2e6372657363656e746d6f6f6e67616d65732e626c6f636b795f726f616473"

    invoke-static {v8}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    const-string v8, "636f6d2e6d636b2e747275636b73696d756c61746f72"

    invoke-static {v8}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    const-string v8, "636f6d2e6f76696c65782e747275636b73696d756c61746f723364"

    invoke-static {v8}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v13

    const-string v8, "636f6d2e646f79656f6e2e467073446566656e6365"

    invoke-static {v8}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v14

    const/4 v8, 0x5

    const-string v9, "636f6d2e6b696c6f6f2e73756277617973757266"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "636f6d2e706e697867616d65732e77696e74657273706f727473"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x7

    const-string v9, "706c2e6d6163617175652e68616e676d616e706c"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x8

    const-string v9, "636f6d2e6469736e65792e7768657265736d797761746572325f676f6f"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x9

    const-string v9, "636f6d2e6d69646173706c617965722e617070732e706170617065617273616761"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xa

    const-string v9, "636f6d2e6368692e426f6174"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xb

    const-string v9, "636f6d2e706572706c656c61622e73616d706c346b616b616f"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    sput-object v7, Lcom/android/server/ssrm/HotGameList;->HotGameGroup4:[Ljava/lang/String;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Lcom/android/server/ssrm/HotGameList;->sKnownGameHashMap:Ljava/util/HashMap;

    sget-object v0, Lcom/android/server/ssrm/HotGameList;->HotGameGroup0:[Ljava/lang/String;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    sget-object v7, Lcom/android/server/ssrm/HotGameList;->sKnownGameHashMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/ssrm/HotGameList;->HotGameGroup1:[Ljava/lang/String;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    sget-object v7, Lcom/android/server/ssrm/HotGameList;->sKnownGameHashMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/android/server/ssrm/HotGameList;->HotGameGroup2:[Ljava/lang/String;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    sget-object v7, Lcom/android/server/ssrm/HotGameList;->sKnownGameHashMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/android/server/ssrm/HotGameList;->HotGameGroup3:[Ljava/lang/String;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v4, :cond_3

    aget-object v5, v0, v3

    sget-object v7, Lcom/android/server/ssrm/HotGameList;->sKnownGameHashMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    sget-object v0, Lcom/android/server/ssrm/HotGameList;->HotGameGroup4:[Ljava/lang/String;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v4, :cond_4

    aget-object v5, v0, v3

    sget-object v7, Lcom/android/server/ssrm/HotGameList;->sKnownGameHashMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    sget-object v7, Lcom/android/server/ssrm/HotGameList;->sKnownGameHashMap:Ljava/util/HashMap;

    const-string v8, "636f6d2e696d616e67692e74656d706c6572756e32"

    invoke-static {v8}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "636f6d2e696d616e67692e74656d706c6572756e32"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/server/ssrm/HotGameList;->sKnownGameHashMap:Ljava/util/HashMap;

    const-string v8, "636f6d2e676c752e616e64726f69642e67756e62726f735f66726565"

    invoke-static {v8}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "636f6d2e676c752e616e64726f69642e67756e62726f735f66726565"

    invoke-static {v9}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v7, Lcom/android/server/ssrm/SSRMUtil;->DEBUG:Z

    if-eqz v7, :cond_b

    new-instance v7, Ljava/io/File;

    const-string v8, "/data/system/show_hot_game_list"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_b

    new-instance v2, Ljava/io/File;

    const-string v7, "/data/system/ssrm_hot_game_list"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_5
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "HotGameGroup0 =====\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lcom/android/server/ssrm/HotGameList;->HotGameGroup0:[Ljava/lang/String;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v4, :cond_6

    aget-object v5, v0, v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :cond_6
    const-string v7, "\nHotGameGroup1 =====\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lcom/android/server/ssrm/HotGameList;->HotGameGroup1:[Ljava/lang/String;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v4, :cond_7

    aget-object v5, v0, v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_7
    const-string v7, "\nHotGameGroup2 =====\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lcom/android/server/ssrm/HotGameList;->HotGameGroup2:[Ljava/lang/String;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v4, :cond_8

    aget-object v5, v0, v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_8
    const-string v7, "\nHotGameGroup3 =====\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lcom/android/server/ssrm/HotGameList;->HotGameGroup3:[Ljava/lang/String;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v4, :cond_9

    aget-object v5, v0, v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_9
    const-string v7, "\nHotGameGroup4 =====\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lcom/android/server/ssrm/HotGameList;->HotGameGroup4:[Ljava/lang/String;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v4, :cond_a

    aget-object v5, v0, v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_a
    const-string v7, "SSRMv2:HotGameList"

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isKnownGame(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/android/server/ssrm/HotGameList;->sKnownGameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
