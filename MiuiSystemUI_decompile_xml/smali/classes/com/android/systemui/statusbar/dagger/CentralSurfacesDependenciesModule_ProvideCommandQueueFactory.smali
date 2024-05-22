.class public abstract Lcom/android/systemui/statusbar/dagger/CentralSurfacesDependenciesModule_ProvideCommandQueueFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideCommandQueue(Lcom/android/systemui/settings/DisplayTracker;Lcom/android/systemui/tracing/ProtoTracer;Lcom/android/systemui/statusbar/commandline/CommandRegistry;Lcom/android/systemui/dump/DumpHandler;)Lcom/android/systemui/statusbar/CommandQueue;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/CommandQueue;

    .line 2
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/CommandQueue;-><init>(Lcom/android/systemui/settings/DisplayTracker;Lcom/android/systemui/tracing/ProtoTracer;Lcom/android/systemui/statusbar/commandline/CommandRegistry;Lcom/android/systemui/dump/DumpHandler;)V

    .line 4
    return-object v0
    .line 7
.end method
