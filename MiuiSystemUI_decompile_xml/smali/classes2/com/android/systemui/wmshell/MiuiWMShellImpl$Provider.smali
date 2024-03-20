.class public final Lcom/android/systemui/wmshell/MiuiWMShellImpl$Provider;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideNewInstance()Lcom/android/systemui/wmshell/MiuiWMShellImpl;
    .locals 0

    .line 2
    new-instance p0, Lcom/android/systemui/wmshell/MiuiWMShellImpl;

    invoke-direct {p0}, Lcom/android/systemui/wmshell/MiuiWMShellImpl;-><init>()V

    return-object p0
.end method

.method public bridge synthetic provideNewInstance()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/wmshell/MiuiWMShellImpl$Provider;->provideNewInstance()Lcom/android/systemui/wmshell/MiuiWMShellImpl;

    move-result-object p0

    return-object p0
.end method

.method public provideSingleton()Lcom/android/systemui/wmshell/MiuiWMShellImpl;
    .locals 0

    .line 2
    sget-object p0, Lcom/android/systemui/wmshell/MiuiWMShellImpl$Provider$SINGLETON;->INSTANCE:Lcom/android/systemui/wmshell/MiuiWMShellImpl;

    return-object p0
.end method

.method public bridge synthetic provideSingleton()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/wmshell/MiuiWMShellImpl$Provider;->provideSingleton()Lcom/android/systemui/wmshell/MiuiWMShellImpl;

    move-result-object p0

    return-object p0
.end method
