.class Lmiuix/appcompat/internal/app/widget/ActionBarView$12;
.super Lmiuix/animation/listener/TransitionListener;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarView;->makeMenuViewShowHideWithAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

.field final synthetic val$overlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

.field final synthetic val$primaryHeight:I


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;I)V
    .locals 0

    .line 1217
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$12;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$12;->val$overlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    iput p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$12;->val$primaryHeight:I

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 0

    .line 1220
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$12;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1221
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$12;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1102(Lmiuix/appcompat/internal/app/widget/ActionBarView;Z)Z

    :cond_0
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 1237
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 1238
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$12;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1102(Lmiuix/appcompat/internal/app/widget/ActionBarView;Z)Z

    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 1227
    sget-object p1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1231
    :cond_0
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p1

    .line 1232
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$12;->val$overlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$12;->val$primaryHeight:I

    int-to-float p0, p0

    sub-float/2addr p0, p1

    float-to-int p0, p0

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->onMenuStateChanged(II)V

    return-void
.end method
