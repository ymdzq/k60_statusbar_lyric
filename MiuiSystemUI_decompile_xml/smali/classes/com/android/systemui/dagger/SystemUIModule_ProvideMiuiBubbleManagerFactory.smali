.class public abstract Lcom/android/systemui/dagger/SystemUIModule_ProvideMiuiBubbleManagerFactory;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideMiuiBubbleManager(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Landroid/service/dreams/IDreamManager;Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;Ljava/util/Optional;)Ljava/util/Optional;
    .locals 7

    .line 1
    invoke-virtual {p4}, Ljava/util/Optional;->isPresent()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Lcom/android/systemui/wmshell/MiuiBubbleManager;

    .line 8
    invoke-virtual {p4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 10
    move-result-object p4

    .line 13
    move-object v6, p4

    .line 14
    check-cast v6, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleNotification;

    .line 15
    move-object v1, v0

    .line 17
    move-object v2, p0

    .line 18
    move-object v3, p1

    .line 19
    move-object v4, p2

    .line 20
    move-object v5, p3

    .line 21
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/wmshell/MiuiBubbleManager;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Landroid/service/dreams/IDreamManager;Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleNotification;)V

    .line 22
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 27
    move-result-object p0

    .line 30
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 31
    return-object p0
    .line 34
.end method
