.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$casdcd_ComplicationComponentImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/dreams/complication/dagger/ComplicationComponent;


# instance fields
.field public final casdcd_ComplicationComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$casdcd_ComplicationComponentImpl;

.field public final touchInsetManager:Lcom/android/systemui/touch/TouchInsetManager;

.field public final tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

.field public final tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

.field public final visibilityController:Lcom/android/systemui/complication/Complication$VisibilityController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/complication/Complication$VisibilityController;Lcom/android/systemui/touch/TouchInsetManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$casdcd_ComplicationComponentImpl;->casdcd_ComplicationComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$casdcd_ComplicationComponentImpl;

    .line 5
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$casdcd_ComplicationComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 7
    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$casdcd_ComplicationComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 9
    iput-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$casdcd_ComplicationComponentImpl;->visibilityController:Lcom/android/systemui/complication/Complication$VisibilityController;

    .line 11
    iput-object p4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$casdcd_ComplicationComponentImpl;->touchInsetManager:Lcom/android/systemui/touch/TouchInsetManager;

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final getHideComplicationTouchHandler()Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$casdcd_ComplicationComponentImpl;->visibilityController:Lcom/android/systemui/complication/Complication$VisibilityController;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$casdcd_ComplicationComponentImpl;->namedInteger()I

    .line 4
    move-result v2

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$casdcd_ComplicationComponentImpl;->namedInteger2()I

    .line 8
    move-result v3

    .line 11
    iget-object v4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$casdcd_ComplicationComponentImpl;->touchInsetManager:Lcom/android/systemui/touch/TouchInsetManager;

    .line 12
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$casdcd_ComplicationComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 14
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    .line 16
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 21
    move-object v5, v0

    .line 22
    check-cast v5, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 23
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$casdcd_ComplicationComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 25
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    .line 27
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 32
    move-object v6, v0

    .line 33
    check-cast v6, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 34
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$casdcd_ComplicationComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 36
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dreamOverlayStateControllerProvider:Ljavax/inject/Provider;

    .line 38
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 40
    move-result-object p0

    .line 43
    move-object v7, p0

    .line 44
    check-cast v7, Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 45
    new-instance p0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;

    .line 47
    move-object v0, p0

    .line 49
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;-><init>(Lcom/android/systemui/complication/Complication$VisibilityController;IILcom/android/systemui/touch/TouchInsetManager;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/dreams/DreamOverlayStateController;)V

    .line 50
    return-object p0
    .line 53
.end method

.method public final namedInteger()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$casdcd_ComplicationComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2
    sget-object v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->ABSENT_JDK_OPTIONAL_PROVIDER:Ljavax/inject/Provider;

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->mainResources()Landroid/content/res/Resources;

    .line 6
    move-result-object p0

    .line 9
    const v0, 0x7f0b0022    # @integer/complicationRestoreMs '1000'

    .line 10
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 13
    move-result p0

    .line 16
    return p0
    .line 17
.end method

.method public final namedInteger2()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$casdcd_ComplicationComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2
    sget-object v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->ABSENT_JDK_OPTIONAL_PROVIDER:Ljavax/inject/Provider;

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->mainResources()Landroid/content/res/Resources;

    .line 6
    move-result-object p0

    .line 9
    const v0, 0x7f0b0020    # @integer/complicationFadeOutDelayMs '200'

    .line 10
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 13
    move-result p0

    .line 16
    return p0
    .line 17
.end method
