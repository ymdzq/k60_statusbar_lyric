.class public final Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$onSystemEventAnimationBegin$moveIn$1$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/core/animation/Animator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $this_apply:Landroidx/core/animation/ValueAnimator;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Landroidx/core/animation/ValueAnimator;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$onSystemEventAnimationBegin$moveIn$1$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$onSystemEventAnimationBegin$moveIn$1$1;->this$0:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$onSystemEventAnimationBegin$moveIn$1$1;->$this_apply:Landroidx/core/animation/ValueAnimator;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onAnimationUpdate(Landroidx/core/animation/Animator;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$onSystemEventAnimationBegin$moveIn$1$1;->$r8$classId:I

    .line 2
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$onSystemEventAnimationBegin$moveIn$1$1;->this$0:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

    .line 5
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$onSystemEventAnimationBegin$moveIn$1$1;->$this_apply:Landroidx/core/animation/ValueAnimator;

    .line 7
    packed-switch p1, :pswitch_data_0

    .line 9
    goto/16 :goto_5

    .line 12
    :pswitch_0
    iget-object p1, v1, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->currentAnimatedView:Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;

    .line 14
    if-eqz p1, :cond_0

    .line 16
    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;->getView()Landroid/view/View;

    .line 18
    move-result-object v0

    .line 21
    :cond_0
    if-nez v0, :cond_1

    .line 22
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 25
    move-result-object p0

    .line 28
    check-cast p0, Ljava/lang/Float;

    .line 29
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 31
    move-result p0

    .line 34
    invoke-virtual {v0, p0}, Landroid/view/View;->setAlpha(F)V

    .line 35
    :goto_0
    return-void

    .line 38
    :pswitch_1
    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 39
    move-result-object p0

    .line 42
    check-cast p0, Ljava/lang/Integer;

    .line 43
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 45
    move-result p0

    .line 48
    invoke-static {v1, p0}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->access$updateAnimatedViewBoundsWidth(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;I)V

    .line 49
    return-void

    .line 52
    :pswitch_2
    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 53
    move-result-object p0

    .line 56
    check-cast p0, Ljava/lang/Integer;

    .line 57
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 59
    move-result p0

    .line 62
    invoke-static {v1, p0}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->access$updateAnimatedViewBoundsWidth(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;I)V

    .line 63
    return-void

    .line 66
    :pswitch_3
    iget p1, v1, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationDirection:I

    .line 67
    const/4 v2, 0x1

    .line 69
    if-ne p1, v2, :cond_2

    .line 70
    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 72
    move-result-object p0

    .line 75
    check-cast p0, Ljava/lang/Integer;

    .line 76
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 78
    move-result p0

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 83
    move-result-object p0

    .line 86
    check-cast p0, Ljava/lang/Integer;

    .line 87
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 89
    move-result p0

    .line 92
    neg-int p0, p0

    .line 93
    :goto_1
    iget-object p1, v1, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->currentAnimatedView:Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;

    .line 94
    if-eqz p1, :cond_3

    .line 96
    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;->getView()Landroid/view/View;

    .line 98
    move-result-object v0

    .line 101
    :cond_3
    if-nez v0, :cond_4

    .line 102
    goto :goto_2

    .line 104
    :cond_4
    int-to-float p0, p0

    .line 105
    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationX(F)V

    .line 106
    :goto_2
    return-void

    .line 109
    :pswitch_4
    iget-object p1, v1, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->currentAnimatedView:Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;

    .line 110
    if-eqz p1, :cond_5

    .line 112
    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 114
    move-result-object p0

    .line 117
    check-cast p0, Ljava/lang/Integer;

    .line 118
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 120
    move-result p0

    .line 123
    invoke-static {v1, p0}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->access$updateAnimatedViewBoundsWidth(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;I)V

    .line 124
    :cond_5
    return-void

    .line 127
    :pswitch_5
    iget-object p1, v1, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->currentAnimatedView:Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;

    .line 128
    if-eqz p1, :cond_6

    .line 130
    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;->getContentView()Landroid/view/View;

    .line 132
    move-result-object v0

    .line 135
    :cond_6
    if-nez v0, :cond_7

    .line 136
    goto :goto_3

    .line 138
    :cond_7
    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 139
    move-result-object p0

    .line 142
    check-cast p0, Ljava/lang/Float;

    .line 143
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 145
    move-result p0

    .line 148
    invoke-virtual {v0, p0}, Landroid/view/View;->setAlpha(F)V

    .line 149
    :goto_3
    return-void

    .line 152
    :pswitch_6
    iget-object p1, v1, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->currentAnimatedView:Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;

    .line 153
    if-eqz p1, :cond_8

    .line 155
    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;->getView()Landroid/view/View;

    .line 157
    move-result-object v0

    .line 160
    :cond_8
    if-nez v0, :cond_9

    .line 161
    goto :goto_4

    .line 163
    :cond_9
    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 164
    move-result-object p0

    .line 167
    check-cast p0, Ljava/lang/Float;

    .line 168
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 170
    move-result p0

    .line 173
    invoke-virtual {v0, p0}, Landroid/view/View;->setAlpha(F)V

    .line 174
    :goto_4
    return-void

    .line 177
    :pswitch_7
    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 178
    move-result-object p0

    .line 181
    check-cast p0, Ljava/lang/Integer;

    .line 182
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 184
    move-result p0

    .line 187
    invoke-static {v1, p0}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->access$updateAnimatedViewBoundsWidth(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;I)V

    .line 188
    return-void

    .line 191
    :goto_5
    iget-object p1, v1, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->currentAnimatedView:Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;

    .line 192
    if-eqz p1, :cond_a

    .line 194
    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;->getContentView()Landroid/view/View;

    .line 196
    move-result-object v0

    .line 199
    :cond_a
    if-nez v0, :cond_b

    .line 200
    goto :goto_6

    .line 202
    :cond_b
    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 203
    move-result-object p0

    .line 206
    check-cast p0, Ljava/lang/Float;

    .line 207
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 209
    move-result p0

    .line 212
    invoke-virtual {v0, p0}, Landroid/view/View;->setAlpha(F)V

    .line 213
    :goto_6
    return-void

    .line 216
    nop

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 218
.end method
