.class public final synthetic Lmiuix/appcompat/internal/util/ActionBarViewFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/appcompat/widget/AppCompatImageView;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/AppCompatImageView;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmiuix/appcompat/internal/util/ActionBarViewFactory$$ExternalSyntheticLambda0;->f$0:Landroidx/appcompat/widget/AppCompatImageView;

    .line 5
    iput-object p2, p0, Lmiuix/appcompat/internal/util/ActionBarViewFactory$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/util/ActionBarViewFactory$$ExternalSyntheticLambda0;->f$0:Landroidx/appcompat/widget/AppCompatImageView;

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/internal/util/ActionBarViewFactory$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    .line 4
    const v1, 0x101030b    # @android:attr/homeAsUpIndicator

    .line 6
    invoke-static {v1, p0}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 9
    move-result-object p0

    .line 12
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    filled-new-array {v0}, [Landroid/view/View;

    .line 16
    move-result-object p0

    .line 19
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 20
    move-result-object p0

    .line 23
    invoke-interface {p0}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    .line 24
    move-result-object p0

    .line 27
    const/high16 v1, 0x42700000    # 60.0f

    .line 28
    invoke-interface {p0, v1}, Lmiuix/animation/IHoverStyle;->setFeedbackRadius(F)V

    .line 30
    filled-new-array {v0}, [Landroid/view/View;

    .line 33
    move-result-object p0

    .line 36
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 37
    move-result-object p0

    .line 40
    invoke-interface {p0}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    .line 41
    move-result-object p0

    .line 44
    sget-object v1, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 45
    invoke-interface {p0, v1}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    .line 47
    move-result-object p0

    .line 50
    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    .line 51
    move-result-object v0

    .line 54
    check-cast v0, Landroid/view/View;

    .line 55
    const/4 v1, 0x0

    .line 57
    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    .line 58
    invoke-interface {p0, v0, v1}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 60
    return-void
    .line 63
.end method
