.class public Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;
.super Ljava/io/IOException;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final serialVersionUID:J = -0x606a6e83ad3191dbL


# direct methods
.method public constructor <init>(II)V
    .locals 3

    .line 1
    const-string v0, "CodedOutputStream was writing to a flat byte array and ran out of space (pos "

    .line 2
    const-string v1, " limit "

    .line 4
    const-string v2, ")."

    .line 6
    invoke-static {v0, p1, v1, p2, v2}, Landroidx/room/RoomOpenHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 11
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
    .line 15
.end method