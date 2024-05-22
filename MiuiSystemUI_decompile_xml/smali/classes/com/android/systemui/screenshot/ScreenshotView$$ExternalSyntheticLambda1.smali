.class public final synthetic Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/screenshot/ScreenshotView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/ScreenshotView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/screenshot/ScreenshotView;

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
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto/16 :goto_0

    .line 9
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 11
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollingScrim:Landroid/widget/ImageView;

    .line 13
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 15
    move-result p1

    .line 18
    sub-float/2addr v1, p1

    .line 19
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 20
    return-void

    .line 23
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 24
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollingScrim:Landroid/widget/ImageView;

    .line 26
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 31
    check-cast p1, Ljava/lang/Float;

    .line 32
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 34
    move-result p1

    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-static {p1, v0, v0, v0}, Landroid/graphics/Color;->argb(FFFF)I

    .line 39
    move-result p1

    .line 42
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 43
    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 47
    return-void

    .line 50
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 51
    sget v0, Lcom/android/systemui/screenshot/ScreenshotView;->$r8$clinit:I

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 58
    move-result p1

    .line 61
    sub-float/2addr v1, p1

    .line 62
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDismissButton:Landroid/widget/FrameLayout;

    .line 63
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 65
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainerBackground:Landroid/widget/ImageView;

    .line 68
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 70
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    .line 73
    invoke-virtual {p1, v1}, Landroid/widget/HorizontalScrollView;->setAlpha(F)V

    .line 75
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreviewBorder:Landroid/view/View;

    .line 78
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 80
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotBadge:Landroid/widget/ImageView;

    .line 83
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 85
    return-void

    .line 88
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 89
    sget v0, Lcom/android/systemui/screenshot/ScreenshotView;->$r8$clinit:I

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 96
    move-result p1

    .line 99
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreviewBorder:Landroid/view/View;

    .line 100
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 102
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotBadge:Landroid/widget/ImageView;

    .line 105
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 107
    return-void

    .line 110
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 111
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotFlash:Landroid/widget/ImageView;

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
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 125
    return-void

    .line 128
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 129
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotFlash:Landroid/widget/ImageView;

    .line 131
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 133
    move-result-object p1

    .line 136
    check-cast p1, Ljava/lang/Float;

    .line 137
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 139
    move-result p1

    .line 142
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 143
    return-void

    .line 146
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 147
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollablePreview:Landroid/widget/ImageView;

    .line 149
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 151
    move-result p1

    .line 154
    sub-float/2addr v1, p1

    .line 155
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 156
    return-void

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 160
.end method
