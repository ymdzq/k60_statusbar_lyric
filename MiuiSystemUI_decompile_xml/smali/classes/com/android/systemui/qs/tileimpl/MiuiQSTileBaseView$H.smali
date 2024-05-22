.class public final Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView$H;
.super Landroid/os/Handler;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView$H;->this$0:Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;

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
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView$H;->this$0:Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;

    .line 7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 13
    :cond_0
    return-void
    .line 16
.end method
