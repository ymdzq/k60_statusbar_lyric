.class public final Lmiuix/core/util/IOUtils$1;
.super Lmiuix/core/util/Pools$Manager;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/core/util/IOUtils$1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Lmiuix/core/util/Pools$Manager;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final createInstance()Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/core/util/IOUtils$1;->$r8$classId:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    new-instance p0, Ljava/io/CharArrayWriter;

    .line 8
    invoke-direct {p0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 10
    return-object p0

    .line 13
    :pswitch_1
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    .line 14
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 16
    return-object p0

    .line 19
    :goto_0
    new-instance p0, Ljava/io/StringWriter;

    .line 20
    invoke-direct {p0}, Ljava/io/StringWriter;-><init>()V

    .line 22
    return-object p0

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 26
.end method

.method public final onRelease(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/core/util/IOUtils$1;->$r8$classId:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    check-cast p1, Ljava/io/CharArrayWriter;

    .line 8
    invoke-virtual {p1}, Ljava/io/CharArrayWriter;->reset()V

    .line 10
    return-void

    .line 13
    :pswitch_1
    check-cast p1, Ljava/io/ByteArrayOutputStream;

    .line 14
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 16
    return-void

    .line 19
    :goto_0
    check-cast p1, Ljava/io/StringWriter;

    .line 20
    invoke-virtual {p1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    .line 22
    move-result-object p0

    .line 25
    const/4 p1, 0x0

    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 27
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 32
.end method
