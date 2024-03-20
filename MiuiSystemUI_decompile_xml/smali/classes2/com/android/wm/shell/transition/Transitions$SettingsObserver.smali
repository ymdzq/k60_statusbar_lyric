.class public final Lcom/android/wm/shell/transition/Transitions$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/transition/Transitions;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/transition/Transitions$SettingsObserver;->this$0:Lcom/android/wm/shell/transition/Transitions;

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    iget-object p1, p0, Lcom/android/wm/shell/transition/Transitions$SettingsObserver;->this$0:Lcom/android/wm/shell/transition/Transitions;

    .line 5
    iget-object v0, p1, Lcom/android/wm/shell/transition/Transitions;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    move-result-object v1

    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object v0

    .line 16
    const v2, 0x10500b4    # @android:dimen/config_displayWhiteBalanceBrightnessFilterIntercept

    .line 17
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getFloat(I)F

    .line 20
    move-result v0

    .line 23
    const-string/jumbo v2, "transition_animation_scale"

    .line 24
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 27
    move-result v0

    .line 30
    invoke-static {v0}, Landroid/view/WindowManager;->fixScale(F)F

    .line 31
    move-result v0

    .line 34
    iput v0, p1, Lcom/android/wm/shell/transition/Transitions;->mTransitionAnimationScaleSetting:F

    .line 35
    iget-object p1, p0, Lcom/android/wm/shell/transition/Transitions$SettingsObserver;->this$0:Lcom/android/wm/shell/transition/Transitions;

    .line 37
    iget-object p1, p1, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 39
    new-instance v0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda3;

    .line 41
    const/4 v1, 0x1

    .line 43
    invoke-direct {v0, v1, p0}, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 44
    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 47
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 49
    return-void
    .line 52
.end method
