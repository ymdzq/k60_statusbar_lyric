.class public final Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

.field public final synthetic val$status:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 2
    iput p2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->val$status:I

    .line 4
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->val$status:I

    .line 5
    packed-switch p1, :pswitch_data_0

    .line 7
    goto :goto_0

    .line 10
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 11
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLeft()I

    .line 13
    move-result p1

    .line 16
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 17
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 19
    move-result v0

    .line 22
    div-int/lit8 v0, v0, 0x2

    .line 23
    add-int/2addr v0, p1

    .line 25
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 26
    iget v1, p1, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayWidth:I

    .line 28
    div-int/lit8 v1, v1, 0x2

    .line 30
    sub-int/2addr v1, v0

    .line 32
    int-to-float v0, v1

    .line 33
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 34
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 37
    iget v0, p1, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayHeight:I

    .line 39
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    .line 41
    move-result p1

    .line 44
    div-int/lit8 p1, p1, 0x2

    .line 45
    sub-int/2addr v0, p1

    .line 47
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 48
    int-to-float v0, v0

    .line 50
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 51
    goto :goto_0

    .line 54
    :pswitch_1
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 55
    iget v0, p1, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayHeight:I

    .line 57
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    .line 59
    move-result p1

    .line 62
    div-int/lit8 p1, p1, 0x2

    .line 63
    sub-int/2addr v0, p1

    .line 65
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 66
    int-to-float v0, v0

    .line 68
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 69
    goto :goto_0

    .line 72
    :pswitch_2
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 73
    iget v0, p1, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayWidth:I

    .line 75
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    .line 77
    move-result p1

    .line 80
    div-int/lit8 p1, p1, 0x2

    .line 81
    sub-int/2addr v0, p1

    .line 83
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 84
    int-to-float v0, v0

    .line 86
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 87
    goto :goto_0

    .line 90
    :pswitch_3
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 91
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    .line 93
    move-result p1

    .line 96
    neg-int p1, p1

    .line 97
    div-int/lit8 p1, p1, 0x2

    .line 98
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 100
    int-to-float p1, p1

    .line 102
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 103
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 106
    iget-boolean v0, p1, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mIsSetAnimCanceled:Z

    .line 108
    if-nez v0, :cond_0

    .line 110
    iget-object p1, p1, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->finalAnimatorSet:Landroid/animation/AnimatorSet;

    .line 112
    const-wide/16 v0, 0x5dc

    .line 114
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 116
    iget-object p0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 119
    iget-object p0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->finalAnimatorSet:Landroid/animation/AnimatorSet;

    .line 121
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 123
    :cond_0
    return-void

    .line 126
    nop

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
    .line 128
.end method
