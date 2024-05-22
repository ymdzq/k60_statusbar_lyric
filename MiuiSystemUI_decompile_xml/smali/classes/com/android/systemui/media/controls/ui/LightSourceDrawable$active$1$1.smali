.class public final Lcom/android/systemui/media/controls/ui/LightSourceDrawable$active$1$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/LightSourceDrawable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/controls/ui/LightSourceDrawable;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable$active$1$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable$active$1$1;->this$0:Lcom/android/systemui/media/controls/ui/LightSourceDrawable;

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
    iget v0, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable$active$1$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable$active$1$1;->this$0:Lcom/android/systemui/media/controls/ui/LightSourceDrawable;

    .line 8
    invoke-static {v0}, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->access$getRippleData$p(Lcom/android/systemui/media/controls/ui/LightSourceDrawable;)Lcom/android/systemui/media/controls/ui/RippleData;

    .line 10
    move-result-object v0

    .line 13
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/Float;

    .line 18
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 20
    move-result p1

    .line 23
    iput p1, v0, Lcom/android/systemui/media/controls/ui/RippleData;->alpha:F

    .line 24
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable$active$1$1;->this$0:Lcom/android/systemui/media/controls/ui/LightSourceDrawable;

    .line 26
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 28
    return-void

    .line 31
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable$active$1$1;->this$0:Lcom/android/systemui/media/controls/ui/LightSourceDrawable;

    .line 32
    invoke-static {v0}, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->access$getRippleData$p(Lcom/android/systemui/media/controls/ui/LightSourceDrawable;)Lcom/android/systemui/media/controls/ui/RippleData;

    .line 34
    move-result-object v0

    .line 37
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 38
    move-result-object p1

    .line 41
    check-cast p1, Ljava/lang/Float;

    .line 42
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 44
    move-result p1

    .line 47
    iput p1, v0, Lcom/android/systemui/media/controls/ui/RippleData;->alpha:F

    .line 48
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable$active$1$1;->this$0:Lcom/android/systemui/media/controls/ui/LightSourceDrawable;

    .line 50
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 52
    return-void

    .line 55
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable$active$1$1;->this$0:Lcom/android/systemui/media/controls/ui/LightSourceDrawable;

    .line 56
    invoke-static {v0}, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->access$getRippleData$p(Lcom/android/systemui/media/controls/ui/LightSourceDrawable;)Lcom/android/systemui/media/controls/ui/RippleData;

    .line 58
    move-result-object v0

    .line 61
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 62
    move-result-object p1

    .line 65
    check-cast p1, Ljava/lang/Float;

    .line 66
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 68
    move-result p1

    .line 71
    iput p1, v0, Lcom/android/systemui/media/controls/ui/RippleData;->progress:F

    .line 72
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable$active$1$1;->this$0:Lcom/android/systemui/media/controls/ui/LightSourceDrawable;

    .line 74
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 76
    return-void

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 80
.end method
