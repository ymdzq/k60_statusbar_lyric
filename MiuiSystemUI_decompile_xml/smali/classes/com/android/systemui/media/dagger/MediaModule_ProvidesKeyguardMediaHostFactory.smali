.class public abstract Lcom/android/systemui/media/dagger/MediaModule_ProvidesKeyguardMediaHostFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static providesKeyguardMediaHost(Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;Lcom/android/systemui/media/controls/pipeline/MediaDataManager;Lcom/android/systemui/media/controls/ui/MediaHostStatesManager;)Lcom/android/systemui/media/controls/ui/MediaHost;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 2
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/media/controls/ui/MediaHost;-><init>(Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;Lcom/android/systemui/media/controls/pipeline/MediaDataManager;Lcom/android/systemui/media/controls/ui/MediaHostStatesManager;)V

    .line 4
    return-object v0
    .line 7
.end method
