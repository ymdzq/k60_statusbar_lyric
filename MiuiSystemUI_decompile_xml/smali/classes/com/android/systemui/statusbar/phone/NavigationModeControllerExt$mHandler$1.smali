.class public final Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mHandler$1;
.super Landroid/os/Handler;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p0, p1, Landroid/os/Message;->what:I

    .line 2
    const/4 p1, 0x0

    .line 4
    if-eqz p0, :cond_1

    .line 5
    const/4 v0, 0x1

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    goto :goto_1

    .line 10
    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->navigationBarController$delegate:Lkotlin/Lazy;

    .line 11
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 16
    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 17
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarController;->removeNavigationBar(I)V

    .line 24
    goto :goto_1

    .line 27
    :cond_1
    sget-object p0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->navigationBarController$delegate:Lkotlin/Lazy;

    .line 28
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 34
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarController;->addDefaultNavigationBar()V

    .line 36
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->mIsFsgMode:Z

    .line 39
    if-nez v0, :cond_4

    .line 41
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 43
    move-result-object p0

    .line 46
    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 47
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarController;->getNavigationBarView(I)Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 54
    move-result-object p0

    .line 57
    if-eqz p0, :cond_2

    .line 58
    const p1, 0x7f0a0400    # @id/home_handle

    .line 60
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object p0

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    const/4 p0, 0x0

    .line 68
    :goto_0
    if-nez p0, :cond_3

    .line 69
    goto :goto_1

    .line 71
    :cond_3
    const/16 p1, 0x8

    .line 72
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    :cond_4
    :goto_1
    return-void
    .line 77
.end method
