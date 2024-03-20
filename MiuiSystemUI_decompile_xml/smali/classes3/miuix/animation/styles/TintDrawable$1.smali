.class Lmiuix/animation/styles/TintDrawable$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lmiuix/animation/styles/TintDrawable;->get(Landroid/view/View;)Lmiuix/animation/styles/TintDrawable;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    invoke-static {v0}, Lmiuix/animation/styles/TintDrawable;->access$000(Lmiuix/animation/styles/TintDrawable;)Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {p1, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 14
    :cond_0
    invoke-static {v0}, Lmiuix/animation/styles/TintDrawable;->access$100(Lmiuix/animation/styles/TintDrawable;)V

    .line 17
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 20
    :cond_1
    return-void
    .line 23
.end method
