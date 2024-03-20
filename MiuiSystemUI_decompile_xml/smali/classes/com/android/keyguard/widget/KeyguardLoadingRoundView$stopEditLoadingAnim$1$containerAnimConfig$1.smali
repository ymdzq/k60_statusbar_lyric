.class public final Lcom/android/keyguard/widget/KeyguardLoadingRoundView$stopEditLoadingAnim$1$containerAnimConfig$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(ILandroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/keyguard/widget/KeyguardLoadingRoundView$stopEditLoadingAnim$1$containerAnimConfig$1;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/keyguard/widget/KeyguardLoadingRoundView$stopEditLoadingAnim$1$containerAnimConfig$1;->this$0:Landroid/view/ViewGroup;

    .line 4
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/keyguard/widget/KeyguardLoadingRoundView$stopEditLoadingAnim$1$containerAnimConfig$1;->$r8$classId:I

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/widget/KeyguardLoadingRoundView$stopEditLoadingAnim$1$containerAnimConfig$1;->this$0:Landroid/view/ViewGroup;

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    check-cast p0, Lcom/android/keyguard/widget/KeyguardLoadingRoundView;

    .line 10
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 13
    const/16 p1, 0x8

    .line 16
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 18
    return-void

    .line 21
    :goto_0
    check-cast p0, Landroid/widget/LinearLayout;

    .line 22
    const/high16 p1, 0x3f800000    # 1.0f

    .line 24
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 26
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 29
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 32
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 36
.end method
