.class public final Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 5
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 11
    const/high16 p1, 0x3f800000    # 1.0f

    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 15
    return-void
    .line 18
.end method
