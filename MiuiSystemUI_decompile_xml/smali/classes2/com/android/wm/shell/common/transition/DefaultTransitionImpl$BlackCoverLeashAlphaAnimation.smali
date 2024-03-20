.class public final Lcom/android/wm/shell/common/transition/DefaultTransitionImpl$BlackCoverLeashAlphaAnimation;
.super Landroid/view/animation/Animation;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mAlpha:F

.field public final synthetic this$0:Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl$BlackCoverLeashAlphaAnimation;->this$0:Lcom/android/wm/shell/common/transition/DefaultTransitionImpl;

    .line 2
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 4
    const/high16 p1, 0x3f800000    # 1.0f

    .line 7
    iput p1, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl$BlackCoverLeashAlphaAnimation;->mAlpha:F

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 0

    .line 1
    const/high16 p2, 0x3f800000    # 1.0f

    .line 2
    sub-float/2addr p2, p1

    .line 4
    iput p2, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl$BlackCoverLeashAlphaAnimation;->mAlpha:F

    .line 5
    return-void
    .line 7
.end method
