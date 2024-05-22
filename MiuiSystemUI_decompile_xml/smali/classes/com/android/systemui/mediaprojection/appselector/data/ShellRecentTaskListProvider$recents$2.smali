.class final Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider$recents$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider$recents$2;->this$0:Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider$recents$2;->this$0:Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;->recentTasks:Ljava/util/Optional;

    .line 4
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;

    .line 11
    return-object p0
    .line 13
.end method
