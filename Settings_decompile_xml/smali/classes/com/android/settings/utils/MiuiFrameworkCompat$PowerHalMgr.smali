.class public final Lcom/android/settings/utils/MiuiFrameworkCompat$PowerHalMgr;
.super Ljava/lang/Object;
.source "MiuiFrameworkCompat.java"


# direct methods
.method public static perfLockAcquire(II[I)I
    .locals 4

    const-string v0, "com.mediatek.powerhalmgr.PowerHalMgrImpl"

    .line 35
    invoke-static {v0}, Lcom/android/settings/utils/ReflectBuilderUtil$ReflAgent;->getClass(Ljava/lang/String;)Lcom/android/settings/utils/ReflectBuilderUtil$ReflAgent;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getInstance"

    const/4 v3, 0x0

    .line 36
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/settings/utils/ReflectBuilderUtil$ReflAgent;->callStatic(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/android/settings/utils/ReflectBuilderUtil$ReflAgent;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/android/settings/utils/ReflectBuilderUtil$ReflAgent;->setResultToSelf()Lcom/android/settings/utils/ReflectBuilderUtil$ReflAgent;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, [I

    filled-new-array {v1, v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    .line 39
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "perfLockAcquire"

    .line 38
    invoke-virtual {v0, p1, v1, p0}, Lcom/android/settings/utils/ReflectBuilderUtil$ReflAgent;->call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/android/settings/utils/ReflectBuilderUtil$ReflAgent;

    move-result-object p0

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/utils/ReflectBuilderUtil$ReflAgent;->intResult()I

    move-result p0

    return p0
.end method
