.class public final Lcom/android/keyguard/PasswordTextView$CharState$6;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/android/keyguard/PasswordTextView$CharState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/PasswordTextView$CharState;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/PasswordTextView$CharState$6;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState$6;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/keyguard/PasswordTextView$CharState$6;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto/16 :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState$6;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    .line 9
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Float;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 17
    move-result p1

    .line 20
    iput p1, v0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextTranslationY:F

    .line 21
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView$CharState$6;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    .line 23
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    .line 25
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 27
    return-void

    .line 30
    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState$6;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    .line 31
    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView$CharState;->isCharVisibleForA11y()Z

    .line 33
    move-result v0

    .line 36
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState$6;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    .line 37
    iget v2, v1, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    .line 39
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 41
    move-result-object v3

    .line 44
    check-cast v3, Ljava/lang/Float;

    .line 45
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 47
    move-result v3

    .line 50
    iput v3, v1, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    .line 51
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState$6;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    .line 53
    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView$CharState;->isCharVisibleForA11y()Z

    .line 55
    move-result v1

    .line 58
    if-eq v0, v1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState$6;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    .line 61
    iput v2, v0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    .line 63
    iget-object v0, v0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    .line 65
    invoke-static {v0}, Lcom/android/keyguard/PasswordTextView;->-$$Nest$mgetTransformedText(Lcom/android/keyguard/PasswordTextView;)Ljava/lang/CharSequence;

    .line 67
    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState$6;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    .line 71
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 73
    move-result-object p1

    .line 76
    check-cast p1, Ljava/lang/Float;

    .line 77
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 79
    move-result p1

    .line 82
    iput p1, v1, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    .line 83
    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState$6;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    .line 85
    iget-object v1, p1, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    .line 87
    iget-object v1, v1, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    .line 89
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 91
    move-result p1

    .line 94
    if-ltz p1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState$6;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    .line 97
    iget-object v1, v1, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    .line 99
    const/4 v2, 0x1

    .line 101
    invoke-virtual {v1, p1, v2, v2, v0}, Lcom/android/keyguard/PasswordTextView;->sendAccessibilityEventTypeViewTextChanged(IIILjava/lang/CharSequence;)V

    .line 102
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView$CharState$6;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    .line 105
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    .line 107
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 109
    return-void

    .line 112
    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState$6;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    .line 113
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 115
    move-result-object p1

    .line 118
    check-cast p1, Ljava/lang/Float;

    .line 119
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 121
    move-result p1

    .line 124
    iput p1, v0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    .line 125
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView$CharState$6;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    .line 127
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    .line 129
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 131
    return-void

    .line 134
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState$6;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    .line 135
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 137
    move-result-object p1

    .line 140
    check-cast p1, Ljava/lang/Float;

    .line 141
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 143
    move-result p1

    .line 146
    iput p1, v0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    .line 147
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView$CharState$6;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    .line 149
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    .line 151
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 153
    return-void

    .line 156
    nop

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 158
.end method
