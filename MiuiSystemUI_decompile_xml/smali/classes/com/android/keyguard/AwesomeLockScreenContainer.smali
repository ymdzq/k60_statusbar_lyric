.class public Lcom/android/keyguard/AwesomeLockScreenContainer;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mBarState:I

.field public mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/AwesomeLockScreenContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    move-result v0

    .line 5
    iget v1, p0, Lcom/android/keyguard/AwesomeLockScreenContainer;->mBarState:I

    .line 6
    const/4 v2, 0x1

    .line 8
    if-eq v1, v2, :cond_0

    .line 9
    if-eq v0, v2, :cond_0

    .line 11
    const/4 v1, 0x3

    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreenContainer;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 16
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardEditorHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 18
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 21
    move-result p0

    .line 24
    return p0
    .line 25
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    const-class v0, Lcom/android/keyguard/KeyguardEditorHelper;

    .line 5
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/keyguard/KeyguardEditorHelper;

    .line 11
    iput-object v0, p0, Lcom/android/keyguard/AwesomeLockScreenContainer;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 13
    return-void
    .line 15
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreenContainer;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 2
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardEditorHelper;->isInEnterEditorMode()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 12
    move-result p0

    .line 15
    return p0
    .line 16
.end method

.method public setBarState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/keyguard/AwesomeLockScreenContainer;->mBarState:I

    .line 2
    return-void
    .line 4
.end method
