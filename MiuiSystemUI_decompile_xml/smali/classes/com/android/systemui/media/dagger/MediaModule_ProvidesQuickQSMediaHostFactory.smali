.class public abstract Lcom/android/systemui/media/dagger/MediaModule_ProvidesQuickQSMediaHostFactory;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static providesQuickQSMediaHost(Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;Lcom/android/systemui/media/controls/pipeline/MediaDataManager;Lcom/android/systemui/media/controls/ui/MediaHostStatesManager;)Lcom/android/systemui/media/controls/ui/MediaHost;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 2
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/media/controls/ui/MediaHost;-><init>(Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;Lcom/android/systemui/media/controls/pipeline/MediaDataManager;Lcom/android/systemui/media/controls/ui/MediaHostStatesManager;)V

    .line 4
    return-object v0
    .line 7
.end method
