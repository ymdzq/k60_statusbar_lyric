.class public final Lcom/android/systemui/SystemUIService$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/internal/os/BinderInternal$BinderProxyLimitListener;


# virtual methods
.method public final onLimitReached(I)V
    .locals 1

    .line 1
    const-string/jumbo p0, "uid "

    .line 2
    const-string v0, " sent too many Binder proxies to uid "

    .line 5
    invoke-static {p0, p1, v0}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    move-result-object p0

    .line 10
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 11
    move-result p1

    .line 14
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 21
    const-string p1, "SystemUIService"

    .line 22
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-void
    .line 27
.end method
