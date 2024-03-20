.class public final Lmiuix/popupwidget/internal/widget/ArrowPopupView$7;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;


# direct methods
.method public constructor <init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$7;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$7;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Float;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    .line 10
    move-result p1

    .line 13
    iput p1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTranslationValue:I

    .line 14
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$7;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 16
    iget p1, p1, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTranslationValue:I

    .line 18
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 20
    move-result p1

    .line 23
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$7;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 24
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 26
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLeft()I

    .line 28
    move-result v1

    .line 31
    sub-int/2addr v1, p1

    .line 32
    iget-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$7;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 33
    iget-object v2, v2, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 35
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTop()I

    .line 37
    move-result v2

    .line 40
    sub-int/2addr v2, p1

    .line 41
    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$7;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 42
    iget-object v3, v3, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 44
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getRight()I

    .line 46
    move-result v3

    .line 49
    add-int/2addr v3, p1

    .line 50
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$7;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 51
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 53
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    .line 55
    move-result p0

    .line 58
    add-int/2addr p0, p1

    .line 59
    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/widget/FrameLayout;->invalidate(IIII)V

    .line 60
    return-void
    .line 63
.end method
