.class public final Lcom/android/systemui/wmshell/MiuiWMShellImpl$Provider;
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
