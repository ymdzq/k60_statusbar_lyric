.class public final Lmiuix/appcompat/internal/app/widget/ActionBarView$11;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

.field public final synthetic val$overlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

.field public final synthetic val$primaryHeight:I


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$11;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 2
    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$11;->val$overlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 4
    iput p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$11;->val$primaryHeight:I

    .line 6
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onBegin(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$11;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 2
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mAnimateStart:Z

    .line 4
    if-nez p1, :cond_0

    .line 6
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mAnimateStart:Z

    .line 9
    :cond_0
    return-void
    .line 11
.end method

.method public final onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$11;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 5
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mAnimateStart:Z

    .line 8
    return-void
    .line 10
.end method

.method public final onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 0

    .line 1
    sget-object p1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 2
    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 7
    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 8
    move-result-object p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 15
    move-result p1

    .line 18
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$11;->val$primaryHeight:I

    .line 19
    int-to-float p2, p2

    .line 21
    sub-float/2addr p2, p1

    .line 22
    float-to-int p1, p2

    .line 23
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$11;->val$overlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 24
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->onMenuStateChanged(I)V

    .line 26
    return-void
    .line 29
.end method
