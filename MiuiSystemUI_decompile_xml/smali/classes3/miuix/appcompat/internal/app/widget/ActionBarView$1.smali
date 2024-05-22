.class public final Lmiuix/appcompat/internal/app/widget/ActionBarView$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$1;->this$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$1;->$r8$classId:I

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBegin(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$1;->$r8$classId:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    return-void

    .line 8
    :sswitch_0
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    return-void

    .line 9
    :sswitch_1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    .line 10
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 11
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    if-eqz p0, :cond_0

    .line 12
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->onShow()V

    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onBegin(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;Ljava/util/Collection;)V

    return-void

    .line 1
    :pswitch_0
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;Ljava/util/Collection;)V

    return-void

    .line 2
    :pswitch_1
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 3
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCancel(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 7
    return-void

    .line 10
    :pswitch_0
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 11
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$1;->this$0:Ljava/lang/Object;

    .line 14
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 16
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 18
    return-void

    .line 21
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
    .line 22
.end method

.method public final onComplete(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$1;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$1;->this$0:Ljava/lang/Object;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 7
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 10
    return-void

    .line 13
    :pswitch_0
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 14
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 17
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->clear()V

    .line 19
    return-void

    .line 22
    :pswitch_1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 23
    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 26
    iget-object p0, v2, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 28
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    .line 30
    move-result p0

    .line 33
    const/4 p1, 0x0

    .line 34
    cmpl-float p0, p0, p1

    .line 35
    if-nez p0, :cond_2

    .line 37
    iget p0, v2, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 39
    if-eqz p0, :cond_1

    .line 41
    const/4 p1, 0x2

    .line 43
    if-eq p0, p1, :cond_0

    .line 44
    goto :goto_0

    .line 46
    :cond_0
    iget-object p0, v2, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 47
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 49
    move-result p0

    .line 52
    const/4 p1, 0x4

    .line 53
    if-eq p0, p1, :cond_3

    .line 54
    iget-object p0, v2, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 56
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 58
    goto :goto_0

    .line 61
    :cond_1
    iget-object p0, v2, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 62
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 64
    move-result p0

    .line 67
    const/16 p1, 0x8

    .line 68
    if-eq p0, p1, :cond_3

    .line 70
    iget-object p0, v2, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 72
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 74
    goto :goto_0

    .line 77
    :cond_2
    iget-object p0, v2, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 78
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 80
    move-result p0

    .line 83
    if-eqz p0, :cond_3

    .line 84
    iget-object p0, v2, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 86
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 88
    :cond_3
    :goto_0
    return-void

    .line 91
    :pswitch_2
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 92
    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 95
    iget-boolean p0, v2, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNeedRequestLayoutOnExpandTitleShowing:Z

    .line 97
    if-eqz p0, :cond_4

    .line 99
    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestLayout()V

    .line 101
    :cond_4
    iput-boolean v1, v2, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNeedRequestLayoutOnExpandTitleShowing:Z

    .line 104
    return-void

    .line 106
    :pswitch_3
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 107
    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 110
    iget-object p0, v2, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 112
    if-eqz p0, :cond_5

    .line 114
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->onHide()V

    .line 116
    :cond_5
    return-void

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 120
.end method

.method public final onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$1;->$r8$classId:I

    .line 2
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$1;->this$0:Ljava/lang/Object;

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    :pswitch_0
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 9
    return-void

    .line 12
    :pswitch_1
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 13
    const-string p0, "actionbar_state_change"

    .line 16
    invoke-static {p2, p0}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 18
    move-result-object p0

    .line 21
    if-nez p0, :cond_0

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 25
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 30
    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 31
    if-nez p1, :cond_1

    .line 33
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 36
    move-result p0

    .line 39
    iput p0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 42
    :goto_0
    return-void

    .line 45
    :pswitch_2
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 46
    check-cast v1, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 49
    iget-boolean p0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNeedRequestLayoutOnExpandTitleShowing:Z

    .line 51
    if-eqz p0, :cond_2

    .line 53
    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 55
    :cond_2
    return-void

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
    .line 60
.end method
