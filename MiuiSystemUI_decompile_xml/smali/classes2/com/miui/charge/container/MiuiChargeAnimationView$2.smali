.class public final Lcom/miui/charge/container/MiuiChargeAnimationView$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/miui/charge/container/MiuiChargeAnimationView;

.field public final synthetic val$screenOn:Z


# direct methods
.method public constructor <init>(Lcom/miui/charge/container/MiuiChargeAnimationView;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView$2;->this$0:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 2
    iput-boolean p2, p0, Lcom/miui/charge/container/MiuiChargeAnimationView$2;->val$screenOn:Z

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
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView$2;->this$0:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 2
    iget-object v0, v0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mParentContainer:Landroid/view/ViewGroup;

    .line 4
    iget-boolean p0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView$2;->val$screenOn:Z

    .line 6
    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 10
    move-result p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 15
    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 17
    return-void
    .line 20
.end method
