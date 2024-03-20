.class public final Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$batchClearBadge$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $pkgs:Ljava/util/stream/Stream;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;


# direct methods
.method public constructor <init>(Ljava/util/stream/Stream;Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$batchClearBadge$1;->$pkgs:Ljava/util/stream/Stream;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$batchClearBadge$1;->this$0:Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$batchClearBadge$1;->$pkgs:Ljava/util/stream/Stream;

    .line 2
    new-instance v1, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$batchClearBadge$1$1;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$batchClearBadge$1;->this$0:Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;

    .line 6
    const/4 v3, 0x0

    .line 8
    invoke-direct {v1, v3, v2}, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$batchClearBadge$1$1;-><init>(ILjava/lang/Object;)V

    .line 9
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 12
    move-result-object v0

    .line 15
    sget-object v1, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$batchClearBadge$1$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$batchClearBadge$1$2;

    .line 16
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 18
    move-result-object v0

    .line 21
    sget-object v1, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$batchClearBadge$1$3;->INSTANCE:Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$batchClearBadge$1$3;

    .line 22
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 24
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    .line 28
    move-result-object v0

    .line 31
    new-instance v1, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$batchClearBadge$1$4;

    .line 32
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$batchClearBadge$1;->this$0:Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;

    .line 34
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$batchClearBadge$1$4;-><init>(Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;)V

    .line 36
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 39
    return-void
    .line 42
.end method
