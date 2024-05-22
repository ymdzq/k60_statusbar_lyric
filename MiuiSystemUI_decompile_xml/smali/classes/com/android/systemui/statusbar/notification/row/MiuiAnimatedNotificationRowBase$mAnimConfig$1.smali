.class public final Lcom/android/systemui/statusbar/notification/row/MiuiAnimatedNotificationRowBase$mAnimConfig$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/MiuiAnimatedNotificationRowBase$mAnimConfig$1;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/MiuiAnimatedNotificationRowBase$mAnimConfig$1;->this$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onBegin(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/MiuiAnimatedNotificationRowBase$mAnimConfig$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    .line 7
    return-void

    .line 10
    :pswitch_0
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    .line 11
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/MiuiAnimatedNotificationRowBase$mAnimConfig$1;->this$0:Ljava/lang/Object;

    .line 14
    check-cast p0, Lcom/android/systemui/statusbar/notification/row/MiuiAnimatedNotificationRowBase;

    .line 16
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 18
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 25
    move-result-object p0

    .line 28
    if-nez p0, :cond_1

    .line 29
    goto :goto_0

    .line 31
    :cond_1
    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiViewStateBase;->animatingAddRemove:Z

    .line 33
    :goto_0
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 36
.end method

.method public final onCancel(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/MiuiAnimatedNotificationRowBase$mAnimConfig$1;->$r8$classId:I

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/MiuiAnimatedNotificationRowBase$mAnimConfig$1;->this$0:Ljava/lang/Object;

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 9
    return-void

    .line 12
    :pswitch_0
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/MiuiAnimatedNotificationRowBase;

    .line 13
    const/high16 p0, 0x3f800000    # 1.0f

    .line 15
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setTransitionAlpha(F)V

    .line 17
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 20
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 23
    return-void

    .line 26
    :pswitch_1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 27
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/MiuiAnimatedNotificationRowBase;

    .line 30
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 32
    move-result-object p0

    .line 35
    if-nez p0, :cond_0

    .line 36
    goto :goto_0

    .line 38
    :cond_0
    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiViewStateBase;->animatingAddRemove:Z

    .line 40
    :goto_0
    return-void

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 44
.end method

.method public final onComplete(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/MiuiAnimatedNotificationRowBase$mAnimConfig$1;->$r8$classId:I

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/MiuiAnimatedNotificationRowBase$mAnimConfig$1;->this$0:Ljava/lang/Object;

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    :pswitch_0
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 9
    return-void

    .line 12
    :pswitch_1
    check-cast v1, Ljava/lang/Runnable;

    .line 13
    if-eqz v1, :cond_0

    .line 15
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 17
    :cond_0
    return-void

    .line 20
    :pswitch_2
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 21
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/MiuiAnimatedNotificationRowBase;

    .line 24
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 26
    move-result-object p0

    .line 29
    if-nez p0, :cond_1

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiViewStateBase;->animatingAddRemove:Z

    .line 34
    :goto_0
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
    .line 38
.end method
