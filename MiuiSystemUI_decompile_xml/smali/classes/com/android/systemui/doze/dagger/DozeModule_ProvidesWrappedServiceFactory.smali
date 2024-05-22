.class public abstract Lcom/android/systemui/doze/dagger/DozeModule_ProvidesWrappedServiceFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static providesWrappedService(Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/statusbar/phone/DozeParameters;Ljava/util/concurrent/Executor;)Lcom/android/systemui/doze/DozeMachine$Service$Delegate;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/doze/DozeBrightnessHostForwarder;

    .line 2
    invoke-direct {v0, p0, p1, p3}, Lcom/android/systemui/doze/DozeBrightnessHostForwarder;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/doze/DozeHost;Ljava/util/concurrent/Executor;)V

    .line 4
    iget-object p0, p2, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    .line 7
    const p1, 0x7f050072    # @bool/doze_display_state_supported 'false'

    .line 9
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 12
    move-result p0

    .line 15
    const-string p1, "doze.display.supported"

    .line 16
    invoke-static {p1, p0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 18
    move-result p0

    .line 21
    xor-int/lit8 p0, p0, 0x1

    .line 22
    if-eqz p0, :cond_0

    .line 24
    new-instance p0, Lcom/android/systemui/doze/DozeScreenStatePreventingAdapter;

    .line 26
    invoke-direct {p0, v0, p3}, Lcom/android/systemui/doze/DozeScreenStatePreventingAdapter;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;Ljava/util/concurrent/Executor;)V

    .line 28
    move-object v0, p0

    .line 31
    :cond_0
    iget-object p0, p2, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    .line 32
    const p1, 0x7f050079    # @bool/doze_suspend_display_state_supported 'false'

    .line 34
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 37
    move-result p0

    .line 40
    xor-int/lit8 p0, p0, 0x1

    .line 41
    if-eqz p0, :cond_1

    .line 43
    new-instance p0, Lcom/android/systemui/doze/DozeSuspendScreenStatePreventingAdapter;

    .line 45
    invoke-direct {p0, v0, p3}, Lcom/android/systemui/doze/DozeSuspendScreenStatePreventingAdapter;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;Ljava/util/concurrent/Executor;)V

    .line 47
    move-object v0, p0

    .line 50
    :cond_1
    return-object v0
    .line 51
.end method
