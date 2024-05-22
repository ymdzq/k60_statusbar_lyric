.class public final Lcom/android/wm/shell/bubbles/StackEducationView;
.super Landroid/widget/LinearLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final ANIMATE_DURATION:J

.field public final ANIMATE_DURATION_SHORT:J

.field public final controller:Lcom/android/wm/shell/bubbles/BubbleController;

.field public final descTextView$delegate:Lkotlin/Lazy;

.field public isHiding:Z

.field public final positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

.field public final titleTextView$delegate:Lkotlin/Lazy;

.field public final view$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubblePositioner;Lcom/android/wm/shell/bubbles/BubbleController;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    const-wide/16 v0, 0xc8

    .line 5
    iput-wide v0, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->ANIMATE_DURATION:J

    .line 7
    const-wide/16 v0, 0x28

    .line 9
    iput-wide v0, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->ANIMATE_DURATION_SHORT:J

    .line 11
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 13
    iput-object p3, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->controller:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 15
    new-instance p2, Lcom/android/wm/shell/bubbles/StackEducationView$view$2;

    .line 17
    invoke-direct {p2, p0}, Lcom/android/wm/shell/bubbles/StackEducationView$view$2;-><init>(Lcom/android/wm/shell/bubbles/StackEducationView;)V

    .line 19
    invoke-static {p2}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 22
    move-result-object p2

    .line 25
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->view$delegate:Lkotlin/Lazy;

    .line 26
    new-instance p2, Lcom/android/wm/shell/bubbles/StackEducationView$titleTextView$2;

    .line 28
    invoke-direct {p2, p0}, Lcom/android/wm/shell/bubbles/StackEducationView$titleTextView$2;-><init>(Lcom/android/wm/shell/bubbles/StackEducationView;)V

    .line 30
    invoke-static {p2}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 33
    move-result-object p2

    .line 36
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->titleTextView$delegate:Lkotlin/Lazy;

    .line 37
    new-instance p2, Lcom/android/wm/shell/bubbles/StackEducationView$descTextView$2;

    .line 39
    invoke-direct {p2, p0}, Lcom/android/wm/shell/bubbles/StackEducationView$descTextView$2;-><init>(Lcom/android/wm/shell/bubbles/StackEducationView;)V

    .line 41
    invoke-static {p2}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 44
    move-result-object p2

    .line 47
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->descTextView$delegate:Lkotlin/Lazy;

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 50
    move-result-object p1

    .line 53
    const p2, 0x7f0d005e    # @layout/bubble_stack_user_education 'res/layout/bubble_stack_user_education.xml'

    .line 54
    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 57
    const/16 p1, 0x8

    .line 60
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 62
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 65
    move-result-object p1

    .line 68
    const p2, 0x7f070138    # @dimen/bubble_elevation '1.0dp'

    .line 69
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 72
    move-result p1

    .line 75
    int-to-float p1, p1

    .line 76
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 77
    const/4 p1, 0x3

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/StackEducationView;->setLayoutDirection(I)V

    .line 81
    return-void
    .line 84
.end method

.method public static final synthetic access$getView(Lcom/android/wm/shell/bubbles/StackEducationView;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/StackEducationView;->getView()Landroid/view/View;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method private final getDescTextView()Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->descTextView$delegate:Lkotlin/Lazy;

    .line 2
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroid/widget/TextView;

    .line 8
    return-object p0
    .line 10
.end method

.method private final getTitleTextView()Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->titleTextView$delegate:Lkotlin/Lazy;

    .line 2
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroid/widget/TextView;

    .line 8
    return-object p0
    .line 10
.end method

.method private final getView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->view$delegate:Lkotlin/Lazy;

    .line 2
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/View;

    .line 8
    return-object p0
    .line 10
.end method


# virtual methods
.method public final hide(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->isHiding:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    goto :goto_1

    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->isHiding:Z

    .line 14
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->controller:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 16
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleController;->updateWindowFlagsForBackpress(Z)V

    .line 19
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    .line 22
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 27
    move-result-object v0

    .line 30
    if-eqz p1, :cond_1

    .line 31
    iget-wide v1, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->ANIMATE_DURATION_SHORT:J

    .line 33
    goto :goto_0

    .line 35
    :cond_1
    iget-wide v1, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->ANIMATE_DURATION:J

    .line 36
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 38
    move-result-object p1

    .line 41
    new-instance v0, Lcom/android/wm/shell/bubbles/StackEducationView$hide$1;

    .line 42
    invoke-direct {v0, p0}, Lcom/android/wm/shell/bubbles/StackEducationView$hide$1;-><init>(Lcom/android/wm/shell/bubbles/StackEducationView;)V

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 47
    :cond_2
    :goto_1
    return-void
    .line 50
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 6
    new-instance v0, Lcom/android/wm/shell/bubbles/StackEducationView$onAttachedToWindow$1;

    .line 9
    invoke-direct {v0, p0}, Lcom/android/wm/shell/bubbles/StackEducationView$onAttachedToWindow$1;-><init>(Lcom/android/wm/shell/bubbles/StackEducationView;)V

    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 14
    return-void
    .line 17
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->controller:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 9
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleController;->updateWindowFlagsForBackpress(Z)V

    .line 12
    return-void
    .line 15
.end method

.method public final onFinishInflate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 5
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 9
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 13
    move-result v0

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/StackEducationView;->setLayoutDirection(I)V

    .line 17
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 20
    const v1, 0x1010435    # @android:attr/colorAccent

    .line 22
    const v2, 0x1010039    # @android:attr/textColorPrimaryInverse

    .line 25
    filled-new-array {v1, v2}, [I

    .line 28
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 32
    move-result-object v0

    .line 35
    const/4 v1, 0x0

    .line 36
    const/high16 v2, -0x1000000

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 39
    move-result v1

    .line 42
    const/4 v2, 0x1

    .line 43
    const/4 v3, -0x1

    .line 44
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 45
    move-result v3

    .line 48
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    invoke-static {v3, v1, v2}, Lcom/android/internal/util/ContrastColorUtil;->ensureTextContrast(IIZ)I

    .line 52
    move-result v0

    .line 55
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/StackEducationView;->getTitleTextView()Landroid/widget/TextView;

    .line 56
    move-result-object v1

    .line 59
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/StackEducationView;->getDescTextView()Landroid/widget/TextView;

    .line 63
    move-result-object p0

    .line 66
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    return-void
    .line 70
.end method

.method public setLayoutDirection(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 2
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/StackEducationView;->getView()Landroid/view/View;

    .line 5
    move-result-object p1

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 9
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 13
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 17
    move-result p0

    .line 20
    if-nez p0, :cond_0

    .line 21
    const p0, 0x7f080baa    # @drawable/bubble_stack_user_education_bg 'res/drawable/bubble_stack_user_education_bg.xml'

    .line 23
    goto :goto_0

    .line 26
    :cond_0
    const p0, 0x7f080bab    # @drawable/bubble_stack_user_education_bg_rtl 'res/drawable/bubble_stack_user_education_bg_rtl.xml'

    .line 27
    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 30
    return-void
    .line 33
.end method

.method public final show(Landroid/graphics/PointF;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->isHiding:Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 5
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    return v0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->controller:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 12
    const/4 v2, 0x1

    .line 14
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/bubbles/BubbleController;->updateWindowFlagsForBackpress(Z)V

    .line 15
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    move-result-object v1

    .line 21
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 22
    iget-boolean v4, v3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mIsLargeScreen:Z

    .line 24
    if-nez v4, :cond_2

    .line 26
    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->isLandscape()Z

    .line 28
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    goto :goto_0

    .line 34
    :cond_1
    const/4 v3, -0x1

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 37
    move-result-object v3

    .line 40
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    move-result-object v3

    .line 44
    const v4, 0x7f070179    # @dimen/bubbles_user_education_width '480.0dp'

    .line 45
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 48
    move-result v3

    .line 51
    :goto_1
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 52
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 54
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    move-result-object v1

    .line 61
    const v3, 0x7f070175    # @dimen/bubble_user_education_stack_padding '16.0dp'

    .line 62
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 65
    move-result v1

    .line 68
    const/4 v3, 0x0

    .line 69
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 70
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 73
    new-instance v3, Lcom/android/wm/shell/bubbles/StackEducationView$show$1;

    .line 76
    invoke-direct {v3, p0, v1, p1}, Lcom/android/wm/shell/bubbles/StackEducationView$show$1;-><init>(Lcom/android/wm/shell/bubbles/StackEducationView;ILandroid/graphics/PointF;)V

    .line 78
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 81
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 84
    move-result-object p1

    .line 87
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 88
    move-result-object p0

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 92
    move-result-object p0

    .line 95
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 96
    move-result-object p0

    .line 99
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 100
    move-result-object p0

    .line 103
    const-string p1, "HasSeenBubblesOnboarding"

    .line 104
    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 106
    move-result-object p0

    .line 109
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 110
    return v2
    .line 113
.end method
