.class public abstract Lcom/android/systemui/media/dagger/MediaModule_ProvidesNearbyMediaDevicesManagerFactory;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static providesNearbyMediaDevicesManager(Lcom/android/systemui/media/controls/util/MediaFlags;Ldagger/Lazy;)Ljava/util/Optional;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    sget-object v0, Lcom/android/systemui/flags/Flags;->MEDIA_NEARBY_DEVICES:Lcom/android/systemui/flags/ReleasedFlag;

    .line 5
    iget-object p0, p0, Lcom/android/systemui/media/controls/util/MediaFlags;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 7
    check-cast p0, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 11
    move-result p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 17
    move-result-object p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 22
    move-result-object p0

    .line 25
    check-cast p0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;

    .line 26
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 28
    move-result-object p0

    .line 31
    :goto_0
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 32
    return-object p0
    .line 35
.end method
