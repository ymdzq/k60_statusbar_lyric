.class public final Lcom/miui/charge/container/MiuiChargeAnimationView$3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/miui/charge/container/MiuiChargeAnimationView;


# direct methods
.method public constructor <init>(Lcom/miui/charge/container/MiuiChargeAnimationView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView$3;->this$0:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView$3;->this$0:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 2
    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->itemContainer:Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 6
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 10
    return-void
    .line 13
.end method
