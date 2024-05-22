.class public final Lcom/android/wm/shell/common/keyguard/KeyguardTransitionHandlerImpl$Provider;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideNewInstance()Lcom/android/wm/shell/common/keyguard/KeyguardTransitionHandlerImpl;
    .locals 0

    .line 2
    new-instance p0, Lcom/android/wm/shell/common/keyguard/KeyguardTransitionHandlerImpl;

    invoke-direct {p0}, Lcom/android/wm/shell/common/keyguard/KeyguardTransitionHandlerImpl;-><init>()V

    return-object p0
.end method

.method public bridge synthetic provideNewInstance()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/common/keyguard/KeyguardTransitionHandlerImpl$Provider;->provideNewInstance()Lcom/android/wm/shell/common/keyguard/KeyguardTransitionHandlerImpl;

    move-result-object p0

    return-object p0
.end method

.method public provideSingleton()Lcom/android/wm/shell/common/keyguard/KeyguardTransitionHandlerImpl;
    .locals 0

    .line 2
    sget-object p0, Lcom/android/wm/shell/common/keyguard/KeyguardTransitionHandlerImpl$Provider$SINGLETON;->INSTANCE:Lcom/android/wm/shell/common/keyguard/KeyguardTransitionHandlerImpl;

    return-object p0
.end method

.method public bridge synthetic provideSingleton()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/common/keyguard/KeyguardTransitionHandlerImpl$Provider;->provideSingleton()Lcom/android/wm/shell/common/keyguard/KeyguardTransitionHandlerImpl;

    move-result-object p0

    return-object p0
.end method
