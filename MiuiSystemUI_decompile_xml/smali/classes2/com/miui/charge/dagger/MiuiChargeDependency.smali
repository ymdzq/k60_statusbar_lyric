.class public final Lcom/miui/charge/dagger/MiuiChargeDependency;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/systemui/IDependency;


# instance fields
.field public mMiuiChargeController:Ldagger/Lazy;

.field public mMiuiChargeManager:Ldagger/Lazy;


# virtual methods
.method public final initDependency(Landroid/util/ArrayMap;)V
    .locals 4

    .line 1
    const-class v0, Lcom/miui/charge/MiuiChargeManager;

    .line 2
    iget-object v1, p0, Lcom/miui/charge/dagger/MiuiChargeDependency;->mMiuiChargeManager:Ldagger/Lazy;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v2, Lcom/miui/charge/dagger/MiuiChargeDependency$$ExternalSyntheticLambda0;

    .line 9
    const/4 v3, 0x0

    .line 11
    invoke-direct {v2, v1, v3}, Lcom/miui/charge/dagger/MiuiChargeDependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;I)V

    .line 12
    invoke-virtual {p1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object p0, p0, Lcom/miui/charge/dagger/MiuiChargeDependency;->mMiuiChargeController:Ldagger/Lazy;

    .line 18
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v0, Lcom/miui/charge/dagger/MiuiChargeDependency$$ExternalSyntheticLambda0;

    .line 23
    const/4 v1, 0x1

    .line 25
    invoke-direct {v0, p0, v1}, Lcom/miui/charge/dagger/MiuiChargeDependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;I)V

    .line 26
    const-class p0, Lcom/miui/charge/MiuiChargeController;

    .line 29
    invoke-virtual {p1, p0, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
    .line 34
.end method
