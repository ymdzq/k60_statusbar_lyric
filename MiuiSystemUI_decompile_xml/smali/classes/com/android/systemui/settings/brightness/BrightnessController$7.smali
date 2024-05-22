.class public final Lcom/android/systemui/settings/brightness/BrightnessController$7;
.super Landroid/os/Handler;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController$7;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$7;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 2
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mExternalChange:Z

    .line 5
    const/4 v2, 0x0

    .line 7
    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    .line 8
    if-eq v3, v1, :cond_4

    .line 10
    const/4 v4, 0x2

    .line 12
    if-eq v3, v4, :cond_3

    .line 13
    const/4 v4, 0x3

    .line 15
    if-eq v3, v4, :cond_2

    .line 16
    const/4 v4, 0x4

    .line 18
    if-eq v3, v4, :cond_0

    .line 19
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 21
    goto :goto_1

    .line 24
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 25
    if-eqz p1, :cond_1

    .line 27
    goto :goto_0

    .line 29
    :cond_1
    move v1, v2

    .line 30
    :goto_0
    iget-boolean p1, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mIsVrModeEnabled:Z

    .line 31
    if-eq p1, v1, :cond_5

    .line 33
    iput-boolean v1, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mIsVrModeEnabled:Z

    .line 35
    iget-object p1, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    .line 37
    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUpdateSliderRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$2;

    .line 39
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    goto :goto_1

    .line 44
    :cond_2
    iget-object p1, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControl:Lcom/android/systemui/settings/brightness/ToggleSlider;

    .line 45
    const/4 v0, 0x0

    .line 47
    invoke-interface {p1, v0}, Lcom/android/systemui/settings/brightness/ToggleSlider;->setOnChangedListener(Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;)V

    .line 48
    goto :goto_1

    .line 51
    :cond_3
    iget-object p1, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControl:Lcom/android/systemui/settings/brightness/ToggleSlider;

    .line 52
    invoke-interface {p1, v0}, Lcom/android/systemui/settings/brightness/ToggleSlider;->setOnChangedListener(Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;)V

    .line 54
    goto :goto_1

    .line 57
    :cond_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 58
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 60
    move-result v1

    .line 63
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 64
    invoke-static {v0, v1}, Lcom/android/systemui/settings/brightness/BrightnessController;->-$$Nest$mupdateSlider(Lcom/android/systemui/settings/brightness/BrightnessController;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$7;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 69
    iput-boolean v2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mExternalChange:Z

    .line 71
    return-void

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$7;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 75
    iput-boolean v2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mExternalChange:Z

    .line 77
    throw p1
    .line 79
.end method
