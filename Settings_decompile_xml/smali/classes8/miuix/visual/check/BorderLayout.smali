.class public Lmiuix/visual/check/BorderLayout;
.super Landroid/widget/LinearLayout;
.source "BorderLayout.java"

# interfaces
.implements Lmiuix/visual/check/VisualCheckItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/visual/check/BorderLayout$DrawableTarget;
    }
.end annotation


# instance fields
.field private iFolme:Lmiuix/animation/IFolme;

.field private mBackGround:Landroid/graphics/drawable/Drawable;

.field private mDrawableTarget:Lmiuix/visual/check/BorderLayout$DrawableTarget;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    filled-new-array {p0}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    iput-object v0, p0, Lmiuix/visual/check/BorderLayout;->iFolme:Lmiuix/animation/IFolme;

    .line 35
    sget-object v0, Lmiuix/visualcheck/R$styleable;->BorderLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 36
    sget v0, Lmiuix/visualcheck/R$styleable;->BorderLayout_checkedBackGround:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/visual/check/BorderLayout;->mBackGround:Landroid/graphics/drawable/Drawable;

    .line 37
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 38
    iget-object p2, p0, Lmiuix/visual/check/BorderLayout;->mBackGround:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_0

    .line 39
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lmiuix/visualcheck/R$drawable;->borderlayout_bg:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-static {p2, v0, p1}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/visual/check/BorderLayout;->mBackGround:Landroid/graphics/drawable/Drawable;

    .line 41
    :cond_0
    new-instance p1, Lmiuix/visual/check/BorderLayout$DrawableTarget;

    iget-object p2, p0, Lmiuix/visual/check/BorderLayout;->mBackGround:Landroid/graphics/drawable/Drawable;

    invoke-direct {p1, p2}, Lmiuix/visual/check/BorderLayout$DrawableTarget;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lmiuix/visual/check/BorderLayout;->mDrawableTarget:Lmiuix/visual/check/BorderLayout$DrawableTarget;

    .line 42
    iget-object p1, p0, Lmiuix/visual/check/BorderLayout;->iFolme:Lmiuix/animation/IFolme;

    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p1

    sget-object p2, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {p1, p2}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p0, p2}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method


# virtual methods
.method public onChecked(Z)V
    .locals 5

    .line 61
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 63
    iget-object v0, p0, Lmiuix/visual/check/BorderLayout;->mBackGround:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 64
    iget-object p0, p0, Lmiuix/visual/check/BorderLayout;->mBackGround:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    const/16 p1, 0xff

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    const/4 v1, -0x2

    const-string v2, "alpha"

    const-wide/16 v3, 0x1

    if-nez p1, :cond_2

    .line 66
    iget-object p0, p0, Lmiuix/visual/check/BorderLayout;->mDrawableTarget:Lmiuix/visual/check/BorderLayout$DrawableTarget;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    invoke-interface {p0, v3, v4}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 67
    invoke-static {v1, v0}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v0

    filled-new-array {v2, p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 66
    invoke-interface {p0, p1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    .line 69
    :cond_2
    iget-object p0, p0, Lmiuix/visual/check/BorderLayout;->mDrawableTarget:Lmiuix/visual/check/BorderLayout$DrawableTarget;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    invoke-interface {p0, v3, v4}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    .line 70
    invoke-static {v1, v0}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v0

    filled-new-array {v2, p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 69
    invoke-interface {p0, p1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    :goto_1
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e800000    # 0.25f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3e800000    # 0.25f
    .end array-data
.end method

.method public onVisualCheckBoxTouchEvent(Lmiuix/visual/check/VisualCheckBox;Landroid/view/MotionEvent;)V
    .locals 1

    .line 47
    iget-object p1, p0, Lmiuix/visual/check/BorderLayout;->iFolme:Lmiuix/animation/IFolme;

    if-eqz p1, :cond_0

    .line 48
    invoke-interface {p1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p1

    invoke-interface {p1, p2}, Lmiuix/animation/ITouchStyle;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 50
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lmiuix/visual/check/BorderLayout;->mBackGround:Landroid/graphics/drawable/Drawable;

    .line 51
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result p1

    const/16 p2, 0xff

    if-eq p1, p2, :cond_1

    .line 52
    iget-object p0, p0, Lmiuix/visual/check/BorderLayout;->mDrawableTarget:Lmiuix/visual/check/BorderLayout$DrawableTarget;

    if-eqz p0, :cond_1

    .line 53
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    const-wide/16 p1, 0x1

    invoke-interface {p0, p1, p2}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    const/4 v0, -0x2

    .line 54
    invoke-static {v0, p2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p2

    const-string v0, "alpha"

    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 53
    invoke-interface {p0, p1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e800000    # 0.25f
    .end array-data
.end method
