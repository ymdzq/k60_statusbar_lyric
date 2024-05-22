.class public final Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$attachViewController$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$MiuiClearAllListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$attachViewController$1;->this$0:Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onEnd(ILjava/util/List;)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$attachViewController$1;->this$0:Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;

    .line 4
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;->updateAppBadgeNum(Ljava/lang/String;Ljava/lang/CharSequence;IIZ)V

    .line 11
    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 15
    move-result-object p1

    .line 18
    sget-object p2, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$attachViewController$1$onEnd$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$attachViewController$1$onEnd$1;

    .line 19
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 21
    move-result-object p1

    .line 24
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$attachViewController$1;->this$0:Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    new-instance p2, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$batchClearBadge$1;

    .line 30
    invoke-direct {p2, p1, p0}, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$batchClearBadge$1;-><init>(Ljava/util/stream/Stream;Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;)V

    .line 32
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;->bgHandler:Landroid/os/Handler;

    .line 35
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    :goto_0
    return-void
    .line 40
.end method
