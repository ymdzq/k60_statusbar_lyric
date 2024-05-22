.class public final Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$1$3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic $listView:Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$1$3;->this$0:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$1$3;->$listView:Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$1$3;->this$0:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->providedChannels:Ljava/util/List;

    .line 4
    check-cast p1, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p1

    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Landroid/app/NotificationChannel;

    .line 22
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$1$3;->$listView:Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;

    .line 24
    if-eqz v1, :cond_0

    .line 26
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 28
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->channelRows:Ljava/util/List;

    .line 31
    check-cast v1, Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object v1

    .line 38
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v2

    .line 48
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ChannelRow;

    .line 49
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->getChannel()Landroid/app/NotificationChannel;

    .line 51
    move-result-object v3

    .line 54
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    move-result v3

    .line 58
    if-eqz v3, :cond_1

    .line 59
    new-instance v3, Landroid/animation/ArgbEvaluator;

    .line 61
    invoke-direct {v3}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 63
    const/4 v4, 0x0

    .line 66
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    move-result-object v4

    .line 70
    iget v5, v2, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->highlightColor:I

    .line 71
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object v5

    .line 76
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    .line 77
    move-result-object v4

    .line 80
    invoke-static {v3, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    .line 81
    move-result-object v3

    .line 84
    const-wide/16 v4, 0xc8

    .line 85
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 87
    new-instance v4, Lcom/android/systemui/statusbar/notification/row/ChannelRow$playHighlight$1;

    .line 90
    invoke-direct {v4, v2}, Lcom/android/systemui/statusbar/notification/row/ChannelRow$playHighlight$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ChannelRow;)V

    .line 92
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 95
    const/4 v2, 0x2

    .line 98
    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 99
    const/4 v2, 0x5

    .line 102
    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 103
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 106
    goto :goto_0

    .line 109
    :cond_2
    return-void
    .line 110
.end method
