.class public final synthetic Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/navigationbar/NavigationBar;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/navigationbar/NavigationBar;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/navigationbar/NavigationBar;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_1

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/navigationbar/NavigationBar;

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/navigationbar/NavigationBar;->onHomeTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 11
    move-result p0

    .line 14
    return p0

    .line 15
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/navigationbar/NavigationBar;

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 21
    move-result p2

    .line 24
    and-int/lit16 p2, p2, 0xff

    .line 25
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 27
    if-nez p2, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CommandQueue;->preloadRecentApps()V

    .line 31
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x3

    .line 35
    if-ne p2, v0, :cond_1

    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CommandQueue;->cancelPreloadRecentApps()V

    .line 38
    goto :goto_0

    .line 41
    :cond_1
    const/4 v0, 0x1

    .line 42
    if-ne p2, v0, :cond_2

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    .line 45
    move-result p1

    .line 48
    if-nez p1, :cond_2

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CommandQueue;->cancelPreloadRecentApps()V

    .line 51
    :cond_2
    :goto_0
    return v1

    .line 54
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/navigationbar/NavigationBar;

    .line 55
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    .line 57
    if-eqz p0, :cond_3

    .line 59
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/AutoHideController;->checkUserAutoHide(Landroid/view/MotionEvent;)V

    .line 61
    :cond_3
    return v1

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 66
.end method
