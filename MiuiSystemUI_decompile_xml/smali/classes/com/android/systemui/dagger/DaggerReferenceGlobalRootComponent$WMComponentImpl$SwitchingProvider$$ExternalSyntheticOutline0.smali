.class public abstract synthetic Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static m(ILjava/util/Optional;)Ljava/util/Optional;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/wm/shell/dagger/WMShellBaseModule$$ExternalSyntheticLambda0;

    .line 2
    invoke-direct {v0, p0}, Lcom/android/wm/shell/dagger/WMShellBaseModule$$ExternalSyntheticLambda0;-><init>(I)V

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 7
    move-result-object p0

    .line 10
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 11
    return-object p0
    .line 14
.end method
