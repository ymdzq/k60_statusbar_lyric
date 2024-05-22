.class public final Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$BrightnessObserver;
.super Landroid/database/ContentObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$BrightnessObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object p1, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "BrightnessController"

    if-eqz p1, :cond_1

    const-string p1, "BrightnessObserver: brightness mode change."

    .line 3
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    iget-object p2, p1, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mUpdateModeRunnable:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$2;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5
    iget-object p1, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    iget-object p2, p1, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mUpdateSliderRunnable:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$2;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 6
    :cond_1
    sget-object p1, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->BRIGHTNESS_FLOAT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "BrightnessObserver: brightness change."

    .line 7
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p1, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    iget-object p2, p1, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mUpdateSliderRunnable:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$2;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 9
    :cond_2
    sget-object p1, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->DURATION_SLIDE_BAR_ANIMATION:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "BrightnessObserver: slide animation duration change."

    .line 10
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    iget-object p1, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mUpdateSliderRunnable:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$2;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    iget-object p2, p1, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mUpdateModeRunnable:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$2;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    iget-object p1, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    iget-object p2, p1, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mUpdateSliderRunnable:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$2;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 15
    throw p0
.end method
