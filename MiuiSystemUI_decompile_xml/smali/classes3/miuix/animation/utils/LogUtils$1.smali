.class Lmiuix/animation/utils/LogUtils$1;
.super Landroid/os/Handler;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget p0, p1, Landroid/os/Message;->what:I

    .line 2
    if-nez p0, :cond_0

    .line 4
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->access$000()Ljava/util/Map;

    .line 6
    move-result-object p0

    .line 9
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v0

    .line 15
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 19
    check-cast p0, Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    const-string v1, "thread log, "

    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 29
    check-cast v1, Ljava/lang/String;

    .line 31
    invoke-static {v0, v1, p0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 36
    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 37
    return-void
    .line 39
.end method
