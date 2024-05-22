.class public abstract Lcom/android/systemui/statusbar/pipeline/dagger/StatusBarPipelineModule_Companion_ProvideFirstMobileSubShowingNetworkTypeIconProviderFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideFirstMobileSubShowingNetworkTypeIconProvider(Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;)Lcom/android/systemui/statusbar/pipeline/dagger/StatusBarPipelineModule$Companion$provideFirstMobileSubShowingNetworkTypeIconProvider$1;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/pipeline/dagger/StatusBarPipelineModule$Companion$provideFirstMobileSubShowingNetworkTypeIconProvider$1;

    .line 2
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pipeline/dagger/StatusBarPipelineModule$Companion$provideFirstMobileSubShowingNetworkTypeIconProvider$1;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;)V

    .line 4
    return-object v0
    .line 7
.end method
