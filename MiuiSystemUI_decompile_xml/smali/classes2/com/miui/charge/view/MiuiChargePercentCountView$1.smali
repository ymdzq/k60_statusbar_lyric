.class public final Lcom/miui/charge/view/MiuiChargePercentCountView$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/miui/charge/view/MiuiChargePercentCountView;


# direct methods
.method public constructor <init>(Lcom/miui/charge/view/MiuiChargePercentCountView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView$1;->this$0:Lcom/miui/charge/view/MiuiChargePercentCountView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Float;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 8
    move-result v0

    .line 11
    float-to-int v0, v0

    .line 12
    iget-object v1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView$1;->this$0:Lcom/miui/charge/view/MiuiChargePercentCountView;

    .line 13
    iget v1, v1, Lcom/miui/charge/view/MiuiChargePercentCountView;->mCurrentProgress:I

    .line 15
    if-eq v0, v1, :cond_1

    .line 17
    const-class v1, Lcom/miui/charge/MiuiChargeManager;

    .line 19
    invoke-static {v1}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 24
    check-cast v1, Lcom/miui/charge/MiuiChargeManager;

    .line 25
    iget-object v2, v1, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 27
    if-eqz v2, :cond_0

    .line 29
    iput v0, v2, Lcom/miui/charge/MiuiBatteryStatus;->level:I

    .line 31
    invoke-virtual {v1}, Lcom/miui/charge/MiuiChargeManager;->notifyBatteryStatusChanged()V

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView$1;->this$0:Lcom/miui/charge/view/MiuiChargePercentCountView;

    .line 36
    iput v0, v1, Lcom/miui/charge/view/MiuiChargePercentCountView;->mCurrentProgress:I

    .line 38
    :cond_1
    iget-object p0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView$1;->this$0:Lcom/miui/charge/view/MiuiChargePercentCountView;

    .line 40
    iget-object p0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mIntegerTv:Lcom/miui/charge/view/NumberDrawView;

    .line 42
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 44
    move-result-object v0

    .line 47
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 48
    move-result-object p1

    .line 51
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 52
    move-result-object p1

    .line 55
    const-string v1, "%1.2f"

    .line 56
    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Lcom/miui/charge/view/NumberDrawView;->setLevelText(Ljava/lang/String;)V

    .line 62
    return-void
    .line 65
.end method
