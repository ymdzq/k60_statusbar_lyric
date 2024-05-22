.class public abstract Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule_ProvideAnimationFeatureFlagsFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideAnimationFeatureFlags(Lcom/android/systemui/flags/FeatureFlags;)Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule$2;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule$2;

    .line 2
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule$2;-><init>(Lcom/android/systemui/flags/FeatureFlags;)V

    .line 4
    return-object v0
    .line 7
.end method
