.class public final Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startSmartFrameAnim$1$1$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $diff:F

.field public final synthetic $smartFrameView:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;


# direct methods
.method public constructor <init>(Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startSmartFrameAnim$1$1$1;->$smartFrameView:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 2
    iput p2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startSmartFrameAnim$1$1$1;->$diff:F

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
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Float;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 8
    move-result p1

    .line 11
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startSmartFrameAnim$1$1$1;->$smartFrameView:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 12
    iget v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startSmartFrameAnim$1$1$1;->$diff:F

    .line 14
    mul-float/2addr v1, p1

    .line 16
    float-to-int p1, v1

    .line 17
    invoke-virtual {v0, p1}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->setDrawableTranslateY(I)V

    .line 18
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startSmartFrameAnim$1$1$1;->$smartFrameView:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 23
    return-void
    .line 26
.end method
