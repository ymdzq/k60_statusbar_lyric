.class public abstract Lcom/android/systemui/util/animation/UniqueObjectHostViewKt;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static final setRequiresRemeasuring(Landroid/view/View;Z)V
    .locals 1

    .line 1
    const v0, 0x7f0a079a    # @id/requires_remeasuring

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 5
    move-result-object p1

    .line 8
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 9
    return-void
    .line 12
.end method
