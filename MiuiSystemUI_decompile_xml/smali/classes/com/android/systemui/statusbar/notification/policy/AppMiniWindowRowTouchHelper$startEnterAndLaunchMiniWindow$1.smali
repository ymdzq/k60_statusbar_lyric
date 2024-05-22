.class final Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper$startEnterAndLaunchMiniWindow$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper$startEnterAndLaunchMiniWindow$1;->this$0:Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper$startEnterAndLaunchMiniWindow$1;->this$0:Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;->mHandler:Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper$mHandler$1;

    .line 4
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 7
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper$startEnterAndLaunchMiniWindow$1;->this$0:Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;

    .line 13
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;->mHandler:Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper$mHandler$1;

    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 17
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper$startEnterAndLaunchMiniWindow$1;->this$0:Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;

    .line 20
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;->mHandler:Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper$mHandler$1;

    .line 22
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 24
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 27
    return-object p0
    .line 29
.end method
