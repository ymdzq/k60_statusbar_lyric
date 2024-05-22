.class public final synthetic Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/AutoHideController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/AutoHideController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/AutoHideController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_1

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/AutoHideController;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    .line 10
    invoke-interface {p0}, Lcom/android/systemui/statusbar/AutoHideUiElement;->synchronizeState()V

    .line 12
    return-void

    .line 15
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/AutoHideController;

    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->isAnyTransientBarShown()Z

    .line 18
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 24
    iget v1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mDisplayId:I

    .line 26
    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->hideTransientBars(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 31
    :catch_0
    const-string v0, "AutoHideController"

    .line 32
    const-string v1, "Cannot get WindowManager"

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    .line 39
    if-eqz v0, :cond_0

    .line 41
    invoke-interface {v0}, Lcom/android/systemui/statusbar/AutoHideUiElement;->hide()V

    .line 43
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    .line 46
    if-eqz p0, :cond_1

    .line 48
    invoke-interface {p0}, Lcom/android/systemui/statusbar/AutoHideUiElement;->hide()V

    .line 50
    :cond_1
    return-void

    .line 53
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/AutoHideController;

    .line 54
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    .line 56
    invoke-interface {p0}, Lcom/android/systemui/statusbar/AutoHideUiElement;->synchronizeState()V

    .line 58
    return-void

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 62
.end method
