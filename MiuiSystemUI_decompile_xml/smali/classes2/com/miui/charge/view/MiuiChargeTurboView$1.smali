.class public final Lcom/miui/charge/view/MiuiChargeTurboView$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/miui/charge/view/MiuiChargeTurboView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/charge/view/MiuiChargeTurboView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/miui/charge/view/MiuiChargeTurboView$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/miui/charge/view/MiuiChargeTurboView$1;->this$0:Lcom/miui/charge/view/MiuiChargeTurboView;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/miui/charge/view/MiuiChargeTurboView$1;->$r8$classId:I

    .line 2
    const/4 v0, 0x0

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object p1, p0, Lcom/miui/charge/view/MiuiChargeTurboView$1;->this$0:Lcom/miui/charge/view/MiuiChargeTurboView;

    .line 9
    iget-object p1, p1, Lcom/miui/charge/view/MiuiChargeTurboView;->mChargeIcon:Landroid/widget/ImageView;

    .line 11
    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/miui/charge/view/MiuiChargeTurboView$1;->this$0:Lcom/miui/charge/view/MiuiChargeTurboView;

    .line 18
    iget-object p1, p1, Lcom/miui/charge/view/MiuiChargeTurboView;->mTailIcon:Landroid/widget/ImageView;

    .line 20
    if-eqz p1, :cond_1

    .line 22
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 24
    :cond_1
    iget-object p0, p0, Lcom/miui/charge/view/MiuiChargeTurboView$1;->this$0:Lcom/miui/charge/view/MiuiChargeTurboView;

    .line 27
    iget-object p0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTurboIcon:Landroid/widget/ImageView;

    .line 29
    if-eqz p0, :cond_2

    .line 31
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 33
    :cond_2
    return-void

    .line 36
    :goto_0
    iget-object p1, p0, Lcom/miui/charge/view/MiuiChargeTurboView$1;->this$0:Lcom/miui/charge/view/MiuiChargeTurboView;

    .line 37
    iget-object p1, p1, Lcom/miui/charge/view/MiuiChargeTurboView;->mMaxChargePowerCloseDoubleTx:Landroid/widget/TextView;

    .line 39
    if-eqz p1, :cond_3

    .line 41
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 43
    :cond_3
    iget-object p0, p0, Lcom/miui/charge/view/MiuiChargeTurboView$1;->this$0:Lcom/miui/charge/view/MiuiChargeTurboView;

    .line 46
    iget-object p0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mMaxChargePowerTx:Landroid/widget/TextView;

    .line 48
    if-eqz p0, :cond_4

    .line 50
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 52
    :cond_4
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 56
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
    .line 2
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
    return-void
    .line 2
.end method
