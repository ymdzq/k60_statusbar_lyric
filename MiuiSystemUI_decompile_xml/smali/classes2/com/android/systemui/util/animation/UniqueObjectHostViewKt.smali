.class public abstract Lcom/android/systemui/util/animation/UniqueObjectHostViewKt;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


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
