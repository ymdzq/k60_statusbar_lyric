.class public abstract Lcom/android/systemui/biometrics/Utils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static final findFirstSensorProperties(Ljava/util/List;[I)Landroid/hardware/biometrics/SensorPropertiesInternal;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 5
    move-result-object p0

    .line 8
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 18
    move-object v2, v1

    .line 19
    check-cast v2, Landroid/hardware/biometrics/SensorPropertiesInternal;

    .line 20
    iget v2, v2, Landroid/hardware/biometrics/SensorPropertiesInternal;->sensorId:I

    .line 22
    invoke-static {v2, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(I[I)Z

    .line 24
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    move-object v0, v1

    .line 30
    :cond_1
    check-cast v0, Landroid/hardware/biometrics/SensorPropertiesInternal;

    .line 31
    :cond_2
    return-object v0
    .line 33
.end method

.method public static final getCredentialType(Lcom/android/internal/widget/LockPatternUtils;I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    .line 2
    move-result p0

    .line 5
    const/high16 p1, 0x10000

    .line 6
    if-eq p0, p1, :cond_1

    .line 8
    const/high16 p1, 0x20000

    .line 10
    if-eq p0, p1, :cond_0

    .line 12
    const/high16 p1, 0x30000

    .line 14
    if-eq p0, p1, :cond_0

    .line 16
    const/high16 p1, 0x40000

    .line 18
    const/4 v0, 0x3

    .line 20
    if-eq p0, p1, :cond_2

    .line 21
    const/high16 p1, 0x50000

    .line 23
    if-eq p0, p1, :cond_2

    .line 25
    const/high16 p1, 0x60000

    .line 27
    if-eq p0, p1, :cond_2

    .line 29
    const/high16 p1, 0x80000

    .line 31
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v0, 0x2

    .line 36
    :cond_2
    :goto_0
    return v0
    .line 37
.end method

.method public static final getNavbarInsets(Landroid/content/Context;)Landroid/graphics/Insets;
    .locals 1

    .line 1
    const-class v0, Landroid/view/WindowManager;

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/WindowManager;

    .line 8
    const/4 v0, 0x0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    invoke-interface {p0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    .line 13
    move-result-object p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object p0, v0

    .line 18
    :goto_0
    if-eqz p0, :cond_1

    .line 19
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    .line 21
    move-result-object p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 27
    move-result v0

    .line 30
    invoke-virtual {p0, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 31
    move-result-object v0

    .line 34
    :cond_1
    if-nez v0, :cond_2

    .line 35
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 37
    :cond_2
    return-object v0
    .line 39
.end method

.method public static final isDeviceCredentialAllowed(Landroid/hardware/biometrics/PromptInfo;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    .line 2
    move-result p0

    .line 5
    const v0, 0x8000

    .line 6
    and-int/2addr p0, v0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
    .line 15
.end method

.method public static final notifyAccessibilityContentChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 2
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    .line 9
    move-result-object p0

    .line 12
    const/16 v0, 0x800

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 15
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 19
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 22
    invoke-virtual {p1, p1, p1, v0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V

    .line 25
    return-void
    .line 28
.end method
