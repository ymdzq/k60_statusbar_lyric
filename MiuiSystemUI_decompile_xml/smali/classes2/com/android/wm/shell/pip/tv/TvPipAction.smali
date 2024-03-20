.class public abstract Lcom/android/wm/shell/pip/tv/TvPipAction;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mActionType:I

.field public final mSystemActionsHandler:Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;


# direct methods
.method public constructor <init>(ILcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput p1, p0, Lcom/android/wm/shell/pip/tv/TvPipAction;->mActionType:I

    .line 8
    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipAction;->mSystemActionsHandler:Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public executeAction()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipAction;->mSystemActionsHandler:Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;

    .line 2
    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipAction;->mActionType:I

    .line 4
    invoke-interface {v0, p0}, Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;->executeAction(I)V

    .line 6
    return-void
    .line 9
.end method

.method public abstract getPendingIntent()Landroid/app/PendingIntent;
.end method

.method public abstract populateButton(Lcom/android/wm/shell/common/TvWindowMenuActionButton;Landroid/os/Handler;)V
.end method

.method public abstract toNotificationAction(Landroid/content/Context;)Landroid/app/Notification$Action;
.end method
