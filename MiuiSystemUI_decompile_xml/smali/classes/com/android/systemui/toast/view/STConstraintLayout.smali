.class public Lcom/android/systemui/toast/view/STConstraintLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mEffectiveY:F

.field public mLastTouchY:F

.field public mShouldHideStrongToast:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/toast/view/STConstraintLayout;

    .line 2
    return-void
    .line 4
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/toast/view/STConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/toast/view/STConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07110e    # @dimen/strong_toast_height '48.0dp'

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/toast/view/STConstraintLayout;->mEffectiveY:F

    return-void
.end method


# virtual methods
.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    const/4 v1, 0x2

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 12
    move-result v0

    .line 15
    iget-boolean v1, p0, Lcom/android/systemui/toast/view/STConstraintLayout;->mShouldHideStrongToast:Z

    .line 16
    if-nez v1, :cond_2

    .line 18
    iget v1, p0, Lcom/android/systemui/toast/view/STConstraintLayout;->mLastTouchY:F

    .line 20
    sub-float/2addr v1, v0

    .line 22
    iget v0, p0, Lcom/android/systemui/toast/view/STConstraintLayout;->mEffectiveY:F

    .line 23
    cmpl-float v0, v1, v0

    .line 25
    if-lez v0, :cond_2

    .line 27
    const-string v0, "STConstraintLayout"

    .line 29
    const-string v1, "HIDE STRONG TOAST"

    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/android/systemui/toast/view/STConstraintLayout;->mShouldHideStrongToast:Z

    .line 37
    const-class v0, Lcom/android/systemui/toast/MIUIStrongToastControl;

    .line 39
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 44
    check-cast v0, Lcom/android/systemui/toast/MIUIStrongToastControl;

    .line 45
    iget-object v0, v0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mMiuiStrongToastCallBack:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 47
    if-eqz v0, :cond_2

    .line 49
    invoke-virtual {v0}, Lcom/android/systemui/toast/MIUIStrongToast;->hideStrongToast()V

    .line 51
    goto :goto_0

    .line 54
    :cond_1
    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/android/systemui/toast/view/STConstraintLayout;->mShouldHideStrongToast:Z

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 58
    move-result v0

    .line 61
    iput v0, p0, Lcom/android/systemui/toast/view/STConstraintLayout;->mLastTouchY:F

    .line 62
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 64
    move-result p0

    .line 67
    return p0
    .line 68
.end method
