.class public final Lcom/android/systemui/fsgesture/NavStubDemoView$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/fsgesture/NavStubDemoView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$2;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto/16 :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$2;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

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
    iput p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurAlpha:F

    .line 21
    return-void

    .line 23
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$2;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 24
    const-string/jumbo v1, "yScale"

    .line 26
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 32
    check-cast v1, Ljava/lang/Float;

    .line 33
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 35
    move-result v1

    .line 38
    iput v1, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mYScale:F

    .line 39
    iget-object p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$2;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 41
    const-string/jumbo v0, "yPivot"

    .line 43
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    move-result-object p1

    .line 49
    check-cast p1, Ljava/lang/Integer;

    .line 50
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 52
    move-result p1

    .line 55
    iput p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    .line 56
    return-void

    .line 58
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$2;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 59
    const-string/jumbo v1, "xScale"

    .line 61
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    move-result-object v1

    .line 67
    check-cast v1, Ljava/lang/Float;

    .line 68
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 70
    move-result v1

    .line 73
    iput v1, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mXScale:F

    .line 74
    iget-object p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$2;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 76
    const-string/jumbo v0, "xPivot"

    .line 78
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    move-result-object p1

    .line 84
    check-cast p1, Ljava/lang/Integer;

    .line 85
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 87
    move-result p1

    .line 90
    iput p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    .line 91
    return-void

    .line 93
    :pswitch_3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 94
    move-result-object p1

    .line 97
    check-cast p1, Ljava/lang/Float;

    .line 98
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 100
    move-result p1

    .line 103
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$2;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 104
    iget-object v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsCardContainer:Landroid/widget/LinearLayout;

    .line 106
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 108
    iget-object p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$2;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 111
    iget-object p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsCardContainer:Landroid/widget/LinearLayout;

    .line 113
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 115
    return-void

    .line 118
    :pswitch_4
    const-string/jumbo v0, "scale"

    .line 119
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    move-result-object v0

    .line 125
    check-cast v0, Ljava/lang/Float;

    .line 126
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 128
    move-result v0

    .line 131
    const-string v1, "alpha"

    .line 132
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    move-result-object p1

    .line 137
    check-cast p1, Ljava/lang/Integer;

    .line 138
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 140
    move-result p1

    .line 143
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$2;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 144
    iget-object v1, v1, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsCardContainer:Landroid/widget/LinearLayout;

    .line 146
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 148
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$2;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 151
    iget-object v1, v1, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsCardContainer:Landroid/widget/LinearLayout;

    .line 153
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 155
    iget-object p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$2;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 158
    iget-object p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsCardContainer:Landroid/widget/LinearLayout;

    .line 160
    int-to-float p1, p1

    .line 162
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 163
    return-void

    .line 166
    :goto_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 167
    move-result p1

    .line 170
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$2;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 171
    iget-object v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mBgView:Landroid/view/View;

    .line 173
    const/high16 v1, 0x3f800000    # 1.0f

    .line 175
    sub-float/2addr v1, p1

    .line 177
    const/high16 p1, 0x433b0000    # 187.0f

    .line 178
    mul-float/2addr v1, p1

    .line 180
    float-to-int p1, v1

    .line 181
    const/4 v1, 0x0

    .line 182
    invoke-static {p1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    .line 183
    move-result p1

    .line 186
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 187
    iget-object p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$2;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 190
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 192
    return-void

    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 196
.end method
