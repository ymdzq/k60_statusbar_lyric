.class Lmiuix/appcompat/internal/app/widget/AbsActionBarView$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "AbsActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/AbsActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/internal/app/widget/AbsActionBarView;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/app/widget/AbsActionBarView;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$1;->this$0:Lmiuix/appcompat/internal/app/widget/AbsActionBarView;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 1

    .line 90
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    .line 91
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$1;->this$0:Lmiuix/appcompat/internal/app/widget/AbsActionBarView;

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionBarTransitionListeners:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 92
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/ActionBarTransitionListener;

    .line 93
    invoke-interface {v0, p1}, Lmiuix/appcompat/app/ActionBarTransitionListener;->onTransitionBegin(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    .line 110
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 111
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$1;->this$0:Lmiuix/appcompat/internal/app/widget/AbsActionBarView;

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionBarTransitionListeners:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 112
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/ActionBarTransitionListener;

    .line 113
    invoke-interface {v0, p1}, Lmiuix/appcompat/app/ActionBarTransitionListener;->onTransitionComplete(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 100
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 101
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$1;->this$0:Lmiuix/appcompat/internal/app/widget/AbsActionBarView;

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionBarTransitionListeners:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 102
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/ActionBarTransitionListener;

    .line 103
    invoke-interface {v0, p1, p2}, Lmiuix/appcompat/app/ActionBarTransitionListener;->onTransitionUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    return-void
.end method
