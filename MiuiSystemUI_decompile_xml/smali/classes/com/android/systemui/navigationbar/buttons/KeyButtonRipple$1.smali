.class public final Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$1;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$1;->this$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 7
    return-void

    .line 10
    :pswitch_0
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    .line 11
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    const-string v0, "KeyButtonRipple.cancel."

    .line 19
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$1;->this$0:Ljava/lang/Object;

    .line 24
    check-cast p0, Ljava/lang/String;

    .line 26
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 34
    const-wide/16 v0, 0x1000

    .line 35
    invoke-static {v0, v1, p0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 37
    :cond_0
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
    .line 42
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$1;->this$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

    .line 10
    iget-object v0, v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    .line 12
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 14
    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$1;->this$0:Ljava/lang/Object;

    .line 17
    check-cast p1, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

    .line 19
    iget-object p1, p1, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    .line 21
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    .line 23
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$1;->this$0:Ljava/lang/Object;

    .line 29
    check-cast p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

    .line 31
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mPressed:Z

    .line 33
    if-nez p1, :cond_0

    .line 35
    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mDrawingHardwareGlow:Z

    .line 38
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 40
    :cond_0
    return-void

    .line 43
    :goto_0
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    .line 44
    move-result p1

    .line 47
    if-eqz p1, :cond_1

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    .line 50
    const-string v0, "KeyButtonRipple.end."

    .line 52
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$1;->this$0:Ljava/lang/Object;

    .line 57
    check-cast p0, Ljava/lang/String;

    .line 59
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 67
    const-wide/16 v0, 0x1000

    .line 68
    invoke-static {v0, v1, p0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 70
    :cond_1
    return-void

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 74
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 7
    return-void

    .line 10
    :pswitch_0
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    .line 11
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    const-string v0, "KeyButtonRipple.start."

    .line 19
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$1;->this$0:Ljava/lang/Object;

    .line 24
    check-cast p0, Ljava/lang/String;

    .line 26
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 34
    const-wide/16 v0, 0x1000

    .line 35
    invoke-static {v0, v1, p0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 37
    :cond_0
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
    .line 42
.end method
