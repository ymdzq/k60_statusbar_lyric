.class public final Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$6;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;

.field public final synthetic val$firstNum:Z

.field public final synthetic val$lastNum:Z

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;ZLandroid/view/View;ZI)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$6;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$6;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;

    .line 4
    iput-boolean p2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$6;->val$firstNum:Z

    .line 6
    iput-object p3, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$6;->val$view:Landroid/view/View;

    .line 8
    iput-boolean p4, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$6;->val$lastNum:Z

    .line 10
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 12
    return-void
    .line 15
.end method


# virtual methods
.method public final onBegin(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$6;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    return-void

    .line 1
    :pswitch_0
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    .line 2
    iget-boolean p1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$6;->val$firstNum:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$6;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onBegin(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 1

    iget v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$6;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;Ljava/util/Collection;)V

    return-void

    .line 4
    :pswitch_0
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 5
    iget-boolean p1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$6;->val$firstNum:Z

    if-eqz p1, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$6;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCancel(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$6;->$r8$classId:I

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$6;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;

    .line 4
    iget-boolean v2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$6;->val$lastNum:Z

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 8
    goto :goto_0

    .line 11
    :pswitch_0
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 12
    if-eqz v2, :cond_0

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    :cond_0
    return-void

    .line 20
    :goto_0
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 21
    if-eqz v2, :cond_1

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    :cond_1
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 30
.end method

.method public final onComplete(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$6;->$r8$classId:I

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$6;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;

    .line 4
    iget-boolean v2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$6;->val$lastNum:Z

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 8
    goto :goto_0

    .line 11
    :pswitch_0
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 12
    if-eqz v2, :cond_0

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    :cond_0
    return-void

    .line 20
    :goto_0
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 21
    if-eqz v2, :cond_1

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    :cond_1
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 30
.end method

.method public final onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$6;->$r8$classId:I

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$6;->val$view:Landroid/view/View;

    .line 4
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$6;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 8
    goto :goto_0

    .line 11
    :pswitch_0
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 12
    invoke-virtual {v2, p2, v1}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->updateViewState(Ljava/util/Collection;Landroid/view/View;)V

    .line 15
    return-void

    .line 18
    :goto_0
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 19
    invoke-virtual {v2, p2, v1}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->updateViewState(Ljava/util/Collection;Landroid/view/View;)V

    .line 22
    return-void

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 26
.end method
