.class public final Lcom/android/systemui/accessibility/WindowMagnificationSettings$ZoomSeekbarChangeListener;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/WindowMagnificationSettings;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$ZoomSeekbarChangeListener;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 1
    int-to-float p1, p2

    .line 2
    const/high16 p2, 0x3f800000    # 1.0f

    .line 3
    mul-float/2addr p1, p2

    .line 5
    add-float/2addr p1, p2

    .line 6
    const p2, 0x3fa66666    # 1.3f

    .line 7
    cmpl-float p2, p1, p2

    .line 10
    if-ltz p2, :cond_0

    .line 12
    iget-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$ZoomSeekbarChangeListener;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    .line 14
    iget-object p2, p2, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    .line 16
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 18
    move-result-object p2

    .line 21
    const-string p3, "accessibility_display_magnification_scale"

    .line 22
    const/4 v0, -0x2

    .line 24
    invoke-static {p2, p3, p1, v0}, Landroid/provider/Settings$Secure;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 25
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$ZoomSeekbarChangeListener;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    .line 28
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mCallback:Lcom/android/systemui/accessibility/WindowMagnificationSettingsCallback;

    .line 30
    check-cast p0, Lcom/android/systemui/accessibility/MagnificationSettingsController$1;

    .line 32
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationSettingsController$1;->this$0:Lcom/android/systemui/accessibility/MagnificationSettingsController;

    .line 34
    iget-object p2, p0, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mSettingsControllerCallback:Lcom/android/systemui/accessibility/MagnificationSettingsController$Callback;

    .line 36
    iget p0, p0, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mDisplayId:I

    .line 38
    sget-object p3, Lcom/android/systemui/accessibility/MagnificationSettingsController;->A11Y_ACTION_SCALE_RANGE:Landroid/util/Range;

    .line 40
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 42
    move-result-object p1

    .line 45
    invoke-virtual {p3, p1}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    .line 46
    move-result-object p1

    .line 49
    check-cast p1, Ljava/lang/Float;

    .line 50
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 52
    move-result p1

    .line 55
    check-cast p2, Lcom/android/systemui/accessibility/WindowMagnification$2;

    .line 56
    iget-object p2, p2, Lcom/android/systemui/accessibility/WindowMagnification$2;->this$0:Lcom/android/systemui/accessibility/WindowMagnification;

    .line 58
    iget-object p2, p2, Lcom/android/systemui/accessibility/WindowMagnification;->mWindowMagnificationConnectionImpl:Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;

    .line 60
    if-eqz p2, :cond_1

    .line 62
    iget-object p2, p2, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->mConnectionCallback:Landroid/view/accessibility/IWindowMagnificationConnectionCallback;

    .line 64
    if-eqz p2, :cond_1

    .line 66
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/view/accessibility/IWindowMagnificationConnectionCallback;->onPerformScaleAction(IF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto :goto_0

    .line 71
    :catch_0
    move-exception p0

    .line 72
    const-string p1, "WindowMagnificationConnectionImpl"

    .line 73
    const-string p2, "Failed to inform performing scale action"

    .line 75
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    :cond_1
    :goto_0
    return-void
    .line 80
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
