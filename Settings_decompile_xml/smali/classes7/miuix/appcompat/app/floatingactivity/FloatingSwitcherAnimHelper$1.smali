.class Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "FloatingSwitcherAnimHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper;->getAnimConfig(ILjava/lang/Runnable;)Lmiuix/animation/base/AnimConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$animConfig:Lmiuix/animation/base/AnimConfig;

.field final synthetic val$completeTask:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Lmiuix/animation/base/AnimConfig;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper$1;->val$completeTask:Ljava/lang/Runnable;

    iput-object p2, p0, Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper$1;->val$animConfig:Lmiuix/animation/base/AnimConfig;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 43
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper$1;->val$completeTask:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 44
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 46
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper$1;->val$animConfig:Lmiuix/animation/base/AnimConfig;

    filled-new-array {p0}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Lmiuix/animation/base/AnimConfig;->removeListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 34
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper$1;->val$completeTask:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 35
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 37
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper$1;->val$animConfig:Lmiuix/animation/base/AnimConfig;

    filled-new-array {p0}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Lmiuix/animation/base/AnimConfig;->removeListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    return-void
.end method
