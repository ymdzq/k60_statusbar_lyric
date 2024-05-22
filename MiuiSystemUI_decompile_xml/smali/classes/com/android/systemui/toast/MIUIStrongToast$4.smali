.class public final Lcom/android/systemui/toast/MIUIStrongToast$4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/toast/MIUIStrongToast;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/toast/MIUIStrongToast;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/toast/MIUIStrongToast$4;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/toast/MIUIStrongToast$4;->this$0:Lcom/android/systemui/toast/MIUIStrongToast;

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
    iget v0, p0, Lcom/android/systemui/toast/MIUIStrongToast$4;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Float;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 14
    move-result p1

    .line 17
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 18
    move-result-object p1

    .line 21
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 25
    const-string v0, "%.2f"

    .line 26
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 31
    const-string v0, "onAnimationUpdate: "

    .line 32
    const-string v1, "MIUIStrongToast"

    .line 34
    invoke-static {v0, p1, v1}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast$4;->this$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 39
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightTextView:Landroid/widget/TextView;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string p1, "%"

    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 59
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-void

    .line 63
    :goto_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 64
    move-result-object p1

    .line 67
    check-cast p1, Ljava/lang/Float;

    .line 68
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 70
    move-result p1

    .line 73
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast$4;->this$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 74
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRuntimeShader:Landroid/graphics/RuntimeShader;

    .line 76
    const/high16 v1, 0x40000000    # 2.0f

    .line 78
    mul-float/2addr p1, v1

    .line 80
    const-string/jumbo v1, "uOffset"

    .line 81
    invoke-virtual {v0, v1, p1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 84
    iget-object p1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRuntimeShader:Landroid/graphics/RuntimeShader;

    .line 87
    const-string/jumbo v0, "uView"

    .line 89
    invoke-static {p1, v0}, Landroid/graphics/RenderEffect;->createRuntimeShaderEffect(Landroid/graphics/RuntimeShader;Ljava/lang/String;)Landroid/graphics/RenderEffect;

    .line 92
    move-result-object p1

    .line 95
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftTextView:Landroid/widget/TextView;

    .line 96
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    .line 98
    return-void

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 102
.end method
