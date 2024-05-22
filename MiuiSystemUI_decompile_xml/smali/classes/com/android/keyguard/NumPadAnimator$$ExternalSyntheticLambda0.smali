.class public final synthetic Lcom/android/keyguard/NumPadAnimator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/NumPadAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/NumPadAnimator;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/NumPadAnimator$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/NumPadAnimator$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/NumPadAnimator;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/keyguard/NumPadAnimator$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/keyguard/NumPadAnimator$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/NumPadAnimator;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 16
    check-cast p1, Ljava/lang/Integer;

    .line 17
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 19
    move-result p1

    .line 22
    iget-object p0, p0, Lcom/android/keyguard/NumPadAnimator;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 23
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 25
    return-void

    .line 28
    :pswitch_1
    iget-object p0, p0, Lcom/android/keyguard/NumPadAnimator$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/NumPadAnimator;

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 34
    move-result-object p1

    .line 37
    check-cast p1, Ljava/lang/Float;

    .line 38
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 40
    move-result p1

    .line 43
    iget-object p0, p0, Lcom/android/keyguard/NumPadAnimator;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 44
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 46
    return-void

    .line 49
    :pswitch_2
    iget-object p0, p0, Lcom/android/keyguard/NumPadAnimator$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/NumPadAnimator;

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    iget-object p0, p0, Lcom/android/keyguard/NumPadAnimator;->mImageButton:Landroid/graphics/drawable/Drawable;

    .line 55
    if-eqz p0, :cond_0

    .line 57
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 59
    move-result-object p1

    .line 62
    check-cast p1, Ljava/lang/Integer;

    .line 63
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 65
    move-result p1

    .line 68
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 69
    :cond_0
    return-void

    .line 72
    :pswitch_3
    iget-object p0, p0, Lcom/android/keyguard/NumPadAnimator$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/NumPadAnimator;

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 78
    move-result-object p1

    .line 81
    check-cast p1, Ljava/lang/Integer;

    .line 82
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 84
    move-result p1

    .line 87
    iget-object p0, p0, Lcom/android/keyguard/NumPadAnimator;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 88
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 90
    return-void

    .line 93
    :pswitch_4
    iget-object p0, p0, Lcom/android/keyguard/NumPadAnimator$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/NumPadAnimator;

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 99
    move-result-object p1

    .line 102
    check-cast p1, Ljava/lang/Float;

    .line 103
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 105
    move-result p1

    .line 108
    iget-object p0, p0, Lcom/android/keyguard/NumPadAnimator;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 109
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 111
    return-void

    .line 114
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/NumPadAnimator$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/NumPadAnimator;

    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    iget-object p0, p0, Lcom/android/keyguard/NumPadAnimator;->mImageButton:Landroid/graphics/drawable/Drawable;

    .line 120
    if-eqz p0, :cond_1

    .line 122
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 124
    move-result-object p1

    .line 127
    check-cast p1, Ljava/lang/Integer;

    .line 128
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 130
    move-result p1

    .line 133
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 134
    :cond_1
    return-void

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 138
.end method
