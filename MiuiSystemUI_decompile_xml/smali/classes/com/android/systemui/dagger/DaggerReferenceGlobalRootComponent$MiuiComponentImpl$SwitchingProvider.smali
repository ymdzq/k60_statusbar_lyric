.class public final Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiComponentImpl$SwitchingProvider;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final id:I

.field public final miuiComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiComponentImpl;

.field public final referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

.field public final referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiComponentImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiComponentImpl$SwitchingProvider;->miuiComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiComponentImpl;

    .line 9
    iput p4, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiComponentImpl$SwitchingProvider;->id:I

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiComponentImpl$SwitchingProvider;->id:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    new-instance v0, Ljava/lang/AssertionError;

    .line 7
    iget p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiComponentImpl$SwitchingProvider;->id:I

    .line 9
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(I)V

    .line 11
    throw v0

    .line 14
    :pswitch_0
    new-instance p0, Lcom/miui/systemui/functions/PanelExpansionObserver;

    .line 15
    invoke-direct {p0}, Lcom/miui/systemui/functions/PanelExpansionObserver;-><init>()V

    .line 17
    return-object p0

    .line 20
    :pswitch_1
    new-instance p0, Lcom/miui/systemui/functions/HapticFeedBackImpl;

    .line 21
    invoke-direct {p0}, Lcom/miui/systemui/functions/HapticFeedBackImpl;-><init>()V

    .line 23
    return-object p0

    .line 26
    :pswitch_2
    new-instance p0, Lcom/miui/systemui/functions/SettingsObserverImpl;

    .line 27
    invoke-direct {p0}, Lcom/miui/systemui/functions/SettingsObserverImpl;-><init>()V

    .line 29
    return-object p0

    .line 32
    :pswitch_3
    new-instance p0, Lcom/miui/systemui/events/EventTracker;

    .line 33
    invoke-direct {p0}, Lcom/miui/systemui/events/EventTracker;-><init>()V

    .line 35
    return-object p0

    .line 38
    :pswitch_4
    new-instance p0, Lcom/miui/systemui/MiuiUiOffloadThread;

    .line 39
    invoke-direct {p0}, Lcom/miui/systemui/MiuiUiOffloadThread;-><init>()V

    .line 41
    return-object p0

    .line 44
    :pswitch_5
    new-instance p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;

    .line 45
    invoke-direct {p0}, Lcom/miui/systemui/functions/MiuiTopActivityObserver;-><init>()V

    .line 47
    return-object p0

    .line 50
    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiComponentImpl$SwitchingProvider;->miuiComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiComponentImpl;

    .line 51
    new-instance v0, Lcom/miui/systemui/MiuiDependency;

    .line 53
    invoke-direct {v0}, Lcom/miui/systemui/MiuiDependency;-><init>()V

    .line 55
    invoke-virtual {p0, v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiComponentImpl;->injectMiuiDependency(Lcom/miui/systemui/MiuiDependency;)Lcom/miui/systemui/MiuiDependency;

    .line 58
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 64
.end method
