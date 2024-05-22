.class public final Lcom/android/wm/shell/pip/tv/TvPipNotificationController$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/pip/PipParamsChangedForwarder$PipParamsChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipNotificationController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onSubtitleChanged(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mPipSubtitle:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->updateNotificationContent()V

    .line 6
    return-void
    .line 9
.end method

.method public final onTitleChanged(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mPipTitle:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->updateNotificationContent()V

    .line 6
    return-void
    .line 9
.end method
