.class public final Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    sub-int/2addr p4, p2

    .line 2
    sub-int/2addr p8, p6

    .line 3
    if-eq p4, p8, :cond_0

    .line 4
    const-class p0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 6
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 12
    invoke-interface {p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->reapply()V

    .line 14
    :cond_0
    return-void
    .line 17
.end method
