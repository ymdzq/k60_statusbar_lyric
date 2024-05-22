.class public final Lcom/android/systemui/qs/QSDetailContent$_handler$1;
.super Landroid/os/Handler;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/QSDetailContent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSDetailContent;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailContent$_handler$1;->this$0:Lcom/android/systemui/qs/QSDetailContent;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    const/16 v1, 0xe9

    .line 4
    if-eq v0, v1, :cond_1

    .line 6
    const/16 v1, 0x91d

    .line 8
    if-eq v0, v1, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailContent$_handler$1;->this$0:Lcom/android/systemui/qs/QSDetailContent;

    .line 13
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 15
    check-cast p1, Lcom/android/systemui/qs/QSDetailContent$Callback;

    .line 17
    invoke-static {p0, p1}, Lcom/android/systemui/qs/QSDetailContent;->access$handleSetCallback(Lcom/android/systemui/qs/QSDetailContent;Lcom/android/systemui/qs/QSDetailContent$Callback;)V

    .line 19
    goto :goto_0

    .line 22
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailContent$_handler$1;->this$0:Lcom/android/systemui/qs/QSDetailContent;

    .line 23
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 25
    check-cast p1, [Lcom/android/systemui/qs/QSDetailContent$Item;

    .line 27
    array-length v0, p1

    .line 29
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 33
    check-cast p1, [Lcom/android/systemui/qs/QSDetailContent$Item;

    .line 34
    invoke-static {p0, p1}, Lcom/android/systemui/qs/QSDetailContent;->access$handleSetItems(Lcom/android/systemui/qs/QSDetailContent;[Lcom/android/systemui/qs/QSDetailContent$Item;)V

    .line 36
    :goto_0
    return-void
    .line 39
.end method
