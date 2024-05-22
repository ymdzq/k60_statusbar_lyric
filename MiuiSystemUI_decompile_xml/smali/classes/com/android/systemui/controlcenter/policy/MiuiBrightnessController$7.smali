.class public final Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$7;
.super Landroid/os/Handler;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$7;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$7;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    .line 2
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mExternalChange:Z

    .line 5
    const/4 v2, 0x0

    .line 7
    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    .line 8
    if-eqz v3, :cond_4

    .line 10
    if-eq v3, v1, :cond_3

    .line 12
    const/4 v4, 0x2

    .line 14
    if-eq v3, v4, :cond_2

    .line 15
    const/4 v4, 0x3

    .line 17
    if-eq v3, v4, :cond_0

    .line 18
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 20
    goto :goto_2

    .line 23
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 24
    if-eqz p1, :cond_1

    .line 26
    goto :goto_0

    .line 28
    :cond_1
    move v1, v2

    .line 29
    :goto_0
    iget-boolean p1, v0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mIsVrModeEnabled:Z

    .line 30
    if-eq p1, v1, :cond_6

    .line 32
    iput-boolean v1, v0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mIsVrModeEnabled:Z

    .line 34
    iget-object p1, v0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    .line 36
    iget-object v0, v0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mUpdateSliderRunnable:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$2;

    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    goto :goto_2

    .line 43
    :cond_2
    iget-object p1, v0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mControl:Lcom/android/systemui/plugins/miui/controlcenter/ToggleSliderBase;

    .line 44
    if-eqz p1, :cond_6

    .line 46
    const/4 v0, 0x0

    .line 48
    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/miui/controlcenter/ToggleSliderBase;->setOnChangedListener(Lcom/android/systemui/plugins/miui/controlcenter/ToggleSliderBase$Listener;)V

    .line 49
    goto :goto_2

    .line 52
    :cond_3
    iget-object p1, v0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mControl:Lcom/android/systemui/plugins/miui/controlcenter/ToggleSliderBase;

    .line 53
    if-eqz p1, :cond_6

    .line 55
    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/miui/controlcenter/ToggleSliderBase;->setOnChangedListener(Lcom/android/systemui/plugins/miui/controlcenter/ToggleSliderBase$Listener;)V

    .line 57
    goto :goto_2

    .line 60
    :cond_4
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 61
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 63
    move-result v3

    .line 66
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 67
    if-eqz p1, :cond_5

    .line 69
    goto :goto_1

    .line 71
    :cond_5
    move v1, v2

    .line 72
    :goto_1
    invoke-static {v3, v0, v1}, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->-$$Nest$mupdateSlider(FLcom/android/systemui/controlcenter/policy/MiuiBrightnessController;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_6
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$7;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    .line 76
    iput-boolean v2, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mExternalChange:Z

    .line 78
    return-void

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$7;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    .line 82
    iput-boolean v2, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mExternalChange:Z

    .line 84
    throw p1
    .line 86
.end method
