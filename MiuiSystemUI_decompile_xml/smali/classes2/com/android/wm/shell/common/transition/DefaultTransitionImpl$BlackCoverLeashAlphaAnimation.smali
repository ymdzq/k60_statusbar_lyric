.class public final Lcom/android/wm/shell/common/transition/DefaultTransitionImpl$BlackCoverLeashAlphaAnimation;
.super Landroid/view/animation/Animation;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


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
