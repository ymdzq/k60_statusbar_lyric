.class public final Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$sessionListener$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$sessionListener$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onActiveSessionsChanged(Ljava/util/List;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$sessionListener$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;

    .line 2
    invoke-static {p0, p1}, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;->access$handleControllersChanged(Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;Ljava/util/List;)V

    .line 4
    return-void
    .line 7
.end method