.class public final Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lmiuix/appcompat/widget/dialoganim/IDialogAnim;


# static fields
.field public static sValueAnimatorWeakRef:Ljava/lang/ref/WeakReference;


# instance fields
.field public mImeHeight:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->mImeHeight:I

    .line 6
    return-void
    .line 8
.end method

.method public static access$100(ILandroid/view/View;Z)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 4
    move-result-object p2

    .line 7
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 11
    move-result-object p1

    .line 14
    const-wide/16 v0, 0x64

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 17
    move-result-object p1

    .line 20
    int-to-float p0, p0

    .line 21
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 22
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 26
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 30
    move-result-object p2

    .line 33
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 34
    int-to-float p0, p0

    .line 37
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    .line 38
    :goto_0
    return-void
    .line 41
.end method

.method public static access$200(ILmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    filled-new-array {p0, v0}, [I

    .line 3
    move-result-object p0

    .line 6
    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 7
    move-result-object p0

    .line 10
    const-wide/16 v1, 0x15e

    .line 11
    invoke-virtual {p0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 13
    const/4 v1, 0x2

    .line 16
    new-array v1, v1, [F

    .line 17
    fill-array-data v1, :array_0

    .line 19
    invoke-static {v0, v1}, Lmiuix/animation/utils/EaseManager;->getInterpolator(I[F)Landroid/animation/TimeInterpolator;

    .line 22
    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 26
    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 29
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 32
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 35
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 38
    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 40
    sput-object p1, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->sValueAnimatorWeakRef:Ljava/lang/ref/WeakReference;

    .line 43
    return-void

    .line 45
    :array_0
    .array-data 4
        0x3f6147ae    # 0.88f
        0x3f333333    # 0.7f
    .end array-data
    .line 46
.end method


# virtual methods
.method public final cancelAnimator()V
    .locals 0

    .line 1
    sget-object p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->sValueAnimatorWeakRef:Ljava/lang/ref/WeakReference;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Landroid/animation/ValueAnimator;

    .line 10
    if-eqz p0, :cond_0

    .line 12
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 14
    :cond_0
    return-void
    .line 17
.end method

.method public final executeDismissAnim(Lmiuix/appcompat/internal/widget/DialogParentPanel2;Landroid/view/View;Lmiuix/appcompat/app/AlertDialog$$ExternalSyntheticLambda1;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 2
    move-result-object p0

    .line 5
    const-string v0, "hide"

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    new-instance p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefDismissListener;

    .line 15
    invoke-direct {p0, p1, p3}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefDismissListener;-><init>(Lmiuix/appcompat/internal/widget/DialogParentPanel2;Lmiuix/appcompat/app/AlertDialog$$ExternalSyntheticLambda1;)V

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    move-result-object p3

    .line 23
    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 24
    iget p3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 28
    move-result v0

    .line 31
    add-int/2addr v0, p3

    .line 32
    sget-object p3, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 33
    const/4 v1, 0x2

    .line 35
    new-array v1, v1, [F

    .line 36
    const/4 v2, 0x0

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 39
    move-result v3

    .line 42
    aput v3, v1, v2

    .line 43
    const/4 v2, 0x1

    .line 45
    int-to-float v0, v0

    .line 46
    aput v0, v1, v2

    .line 47
    invoke-static {p3, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 49
    move-result-object p3

    .line 52
    filled-new-array {p3}, [Landroid/animation/PropertyValuesHolder;

    .line 53
    move-result-object p3

    .line 56
    invoke-static {p1, p3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 57
    move-result-object p1

    .line 60
    new-instance p3, Landroid/view/animation/DecelerateInterpolator;

    .line 61
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 63
    invoke-direct {p3, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 65
    invoke-virtual {p1, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 68
    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 71
    const-wide/16 v0, 0xc8

    .line 74
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 76
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 79
    invoke-static {p2}, Lmiuix/appcompat/widget/dialoganim/DimAnimator;->dismiss(Landroid/view/View;)V

    .line 82
    return-void
    .line 85
.end method

.method public final executeShowAnim(Lmiuix/appcompat/internal/widget/DialogParentPanel2;Landroid/view/View;ZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 2
    move-result-object v0

    .line 5
    const-string v1, "show"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->mImeHeight:I

    .line 16
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 22
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    .line 26
    move-result v1

    .line 29
    const/high16 v2, 0x3f800000    # 1.0f

    .line 30
    cmpl-float v1, v1, v2

    .line 32
    if-eqz v1, :cond_1

    .line 34
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 36
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 39
    :cond_1
    new-instance v8, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;

    .line 42
    invoke-direct {v8, p0, p1, p2, v0}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;-><init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;Lmiuix/appcompat/internal/widget/DialogParentPanel2;Landroid/view/View;I)V

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 47
    move-result v0

    .line 50
    if-lez v0, :cond_2

    .line 51
    new-instance v0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$2;

    .line 53
    move-object v3, v0

    .line 55
    move-object v4, p0

    .line 56
    move-object v5, p1

    .line 57
    move v6, p3

    .line 58
    move-object v7, p4

    .line 59
    invoke-direct/range {v3 .. v8}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$2;-><init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;Lmiuix/appcompat/internal/widget/DialogParentPanel2;ZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;)V

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 63
    const/4 p0, 0x4

    .line 66
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 67
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 70
    goto :goto_0

    .line 73
    :cond_2
    new-instance v0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$3;

    .line 74
    invoke-direct {v0, p0, p3, p4, v8}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$3;-><init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;ZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;)V

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 79
    :goto_0
    invoke-static {p2}, Lmiuix/appcompat/widget/dialoganim/DimAnimator;->show(Landroid/view/View;)V

    .line 82
    return-void
    .line 85
.end method
