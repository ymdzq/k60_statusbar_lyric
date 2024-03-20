.class Lmiuix/appcompat/internal/view/ColorTransitionTextView$1;
.super Ljava/lang/Object;
.source "ColorTransitionTextView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/internal/view/ColorTransitionTextView;->startColorTransition(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/internal/view/ColorTransitionTextView;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/view/ColorTransitionTextView;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView$1;->this$0:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView$1;->this$0:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->access$002(Lmiuix/appcompat/internal/view/ColorTransitionTextView;I)I

    .line 93
    iget-object p0, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView$1;->this$0:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method
