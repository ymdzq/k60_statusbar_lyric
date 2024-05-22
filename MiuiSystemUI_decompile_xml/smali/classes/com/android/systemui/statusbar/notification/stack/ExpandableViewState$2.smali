.class public final Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public mWasCancelled:Z

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

.field public final synthetic val$child:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;->this$0:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;->val$child:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;Landroid/view/View;ZI)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;->this$0:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;->val$child:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;->mWasCancelled:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 7
    return-void

    .line 10
    :pswitch_0
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;->mWasCancelled:Z

    .line 12
    return-void

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 16
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;->$r8$classId:I

    .line 2
    const/4 v0, 0x0

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    goto/16 :goto_3

    .line 8
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;->val$child:Landroid/view/View;

    .line 10
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 12
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;->mWasCancelled:Z

    .line 14
    if-eqz v1, :cond_0

    .line 16
    sget v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->$r8$clinit:I

    .line 18
    const v1, 0x7f0a09ba    # @id/top_inset_animator_tag

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    sget v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->$r8$clinit:I

    .line 24
    const v1, 0x7f0a0145    # @id/bottom_inset_animator_tag

    .line 26
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 29
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;->val$child:Landroid/view/View;

    .line 32
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 34
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;->mWasCancelled:Z

    .line 36
    if-eqz v1, :cond_1

    .line 38
    const v1, 0x7f0a09b9    # @id/top_inset_animator_start_value_tag

    .line 40
    goto :goto_1

    .line 43
    :cond_1
    const v1, 0x7f0a0144    # @id/bottom_inset_animator_start_value_tag

    .line 44
    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 47
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;->val$child:Landroid/view/View;

    .line 50
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 52
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;->mWasCancelled:Z

    .line 54
    if-eqz p0, :cond_2

    .line 56
    const p0, 0x7f0a09b8    # @id/top_inset_animator_end_value_tag

    .line 58
    goto :goto_2

    .line 61
    :cond_2
    const p0, 0x7f0a0143    # @id/bottom_inset_animator_end_value_tag

    .line 62
    :goto_2
    invoke-virtual {p1, p0, v0}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 65
    return-void

    .line 68
    :pswitch_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;->val$child:Landroid/view/View;

    .line 69
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 71
    sget v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->$r8$clinit:I

    .line 73
    const v1, 0x7f0a03f7    # @id/height_animator_tag

    .line 75
    invoke-virtual {p1, v1, v0}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 78
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;->val$child:Landroid/view/View;

    .line 81
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 83
    const v1, 0x7f0a03f6    # @id/height_animator_start_value_tag

    .line 85
    invoke-virtual {p1, v1, v0}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 88
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;->val$child:Landroid/view/View;

    .line 91
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 93
    const v1, 0x7f0a03f5    # @id/height_animator_end_value_tag

    .line 95
    invoke-virtual {p1, v1, v0}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 98
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;->val$child:Landroid/view/View;

    .line 101
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 103
    const/4 v0, 0x0

    .line 105
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeightAnimating(Z)V

    .line 106
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;->mWasCancelled:Z

    .line 109
    if-nez p1, :cond_3

    .line 111
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;->val$child:Landroid/view/View;

    .line 113
    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 115
    instance-of p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 117
    if-eqz p1, :cond_3

    .line 119
    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setGroupExpansionChanging(Z)V

    .line 123
    :cond_3
    return-void

    .line 126
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;->val$child:Landroid/view/View;

    .line 127
    sget v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Y:I

    .line 129
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 131
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;->val$child:Landroid/view/View;

    .line 134
    sget v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_START_TRANSLATION_Y:I

    .line 136
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 138
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;->val$child:Landroid/view/View;

    .line 141
    sget v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_TRANSLATION_Y:I

    .line 143
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 145
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;->this$0:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;->val$child:Landroid/view/View;

    .line 150
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->onYTranslationAnimationFinished(Landroid/view/View;)V

    .line 152
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;->mWasCancelled:Z

    .line 155
    if-eqz p1, :cond_4

    .line 157
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;->val$child:Landroid/view/View;

    .line 159
    const/high16 p1, 0x3f800000    # 1.0f

    .line 161
    invoke-virtual {p0, p1}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 163
    goto :goto_4

    .line 166
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;->val$child:Landroid/view/View;

    .line 167
    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 169
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->removeFromTransientContainer()V

    .line 171
    :goto_4
    return-void

    .line 174
    nop

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 176
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 7
    return-void

    .line 10
    :pswitch_0
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;->mWasCancelled:Z

    .line 12
    return-void

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 16
.end method
