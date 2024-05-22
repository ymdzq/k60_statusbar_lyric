.class public final Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentBuilder;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/dagger/WMComponent$Builder;


# instance fields
.field public final referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

.field public setShellMainThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentBuilder;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final build()Lcom/android/systemui/dagger/WMComponent;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentBuilder;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentBuilder;->setShellMainThread:Landroid/os/HandlerThread;

    .line 6
    invoke-direct {v0, v1, p0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;Landroid/os/HandlerThread;)V

    .line 8
    return-object v0
    .line 11
.end method

.method public final setShellMainThread(Landroid/os/HandlerThread;)Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentBuilder;->setShellMainThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method public final setShellMainThread(Landroid/os/HandlerThread;)Lcom/android/systemui/dagger/WMComponent$Builder;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentBuilder;->setShellMainThread:Landroid/os/HandlerThread;

    return-object p0
.end method
