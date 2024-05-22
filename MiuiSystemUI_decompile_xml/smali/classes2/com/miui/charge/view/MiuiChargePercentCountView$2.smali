.class public final Lcom/miui/charge/view/MiuiChargePercentCountView$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/miui/charge/view/MiuiChargePercentCountView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/charge/view/MiuiChargePercentCountView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/miui/charge/view/MiuiChargePercentCountView$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView$2;->this$0:Lcom/miui/charge/view/MiuiChargePercentCountView;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView$2;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    const-class p1, Lcom/miui/charge/MiuiChargeManager;

    .line 8
    invoke-static {p1}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 13
    check-cast p1, Lcom/miui/charge/MiuiChargeManager;

    .line 14
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, v0}, Lcom/miui/charge/MiuiChargeManager;->setIsChargeLevelAnimationRunning(Z)V

    .line 17
    iget-object p0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView$2;->this$0:Lcom/miui/charge/view/MiuiChargePercentCountView;

    .line 20
    sget p1, Lcom/miui/charge/view/MiuiChargePercentCountView;->$r8$clinit:I

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    return-void

    .line 27
    :goto_0
    iget-object p0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView$2;->this$0:Lcom/miui/charge/view/MiuiChargePercentCountView;

    .line 28
    sget p1, Lcom/miui/charge/view/MiuiChargePercentCountView;->$r8$clinit:I

    .line 30
    invoke-virtual {p0}, Lcom/miui/charge/view/MiuiChargePercentCountView;->switchAnimation()V

    .line 32
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 36
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView$2;->$r8$classId:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    return-void

    .line 7
    :pswitch_0
    const-class p0, Lcom/miui/charge/MiuiChargeManager;

    .line 8
    invoke-static {p0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 13
    check-cast p0, Lcom/miui/charge/MiuiChargeManager;

    .line 14
    const/4 p1, 0x1

    .line 16
    invoke-virtual {p0, p1}, Lcom/miui/charge/MiuiChargeManager;->setIsChargeLevelAnimationRunning(Z)V

    .line 17
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 22
.end method
