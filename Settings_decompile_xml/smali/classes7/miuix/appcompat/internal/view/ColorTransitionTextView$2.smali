.class Lmiuix/appcompat/internal/view/ColorTransitionTextView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorTransitionTextView.java"


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

.field final synthetic val$toTransited:Z


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/view/ColorTransitionTextView;Z)V
    .locals 0

    .line 96
    iput-object p1, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView$2;->this$0:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    iput-boolean p2, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView$2;->val$toTransited:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 99
    iget-boolean p1, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView$2;->val$toTransited:Z

    if-eqz p1, :cond_0

    .line 100
    iget-object p0, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView$2;->this$0:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-static {p0}, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->access$100(Lmiuix/appcompat/internal/view/ColorTransitionTextView;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView$2;->this$0:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-static {p0}, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->access$200(Lmiuix/appcompat/internal/view/ColorTransitionTextView;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method
