.class public final Lcom/android/systemui/controls/ui/PanelTaskViewController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final activityContext:Landroid/content/Context;

.field public final fillInIntent:Landroid/content/Intent;

.field public final hide:Lkotlin/jvm/functions/Function0;

.field public final pendingIntent:Landroid/app/PendingIntent;

.field public final stateCallback:Lcom/android/systemui/controls/ui/PanelTaskViewController$stateCallback$1;

.field public final taskView:Lcom/android/wm/shell/taskview/TaskView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/app/PendingIntent;Lcom/android/wm/shell/taskview/TaskView;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controls/ui/PanelTaskViewController;->activityContext:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lcom/android/systemui/controls/ui/PanelTaskViewController;->pendingIntent:Landroid/app/PendingIntent;

    .line 7
    iput-object p4, p0, Lcom/android/systemui/controls/ui/PanelTaskViewController;->taskView:Lcom/android/wm/shell/taskview/TaskView;

    .line 9
    iput-object p5, p0, Lcom/android/systemui/controls/ui/PanelTaskViewController;->hide:Lkotlin/jvm/functions/Function0;

    .line 11
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p4, p1}, Landroid/view/SurfaceView;->setAlpha(F)V

    .line 14
    new-instance p1, Landroid/content/Intent;

    .line 17
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 19
    const/high16 p2, 0x10000000

    .line 22
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 24
    const/high16 p2, 0x8000000

    .line 27
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 29
    iput-object p1, p0, Lcom/android/systemui/controls/ui/PanelTaskViewController;->fillInIntent:Landroid/content/Intent;

    .line 32
    new-instance p1, Lcom/android/systemui/controls/ui/PanelTaskViewController$stateCallback$1;

    .line 34
    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/PanelTaskViewController$stateCallback$1;-><init>(Lcom/android/systemui/controls/ui/PanelTaskViewController;)V

    .line 36
    iput-object p1, p0, Lcom/android/systemui/controls/ui/PanelTaskViewController;->stateCallback:Lcom/android/systemui/controls/ui/PanelTaskViewController$stateCallback$1;

    .line 39
    return-void
    .line 41
.end method


# virtual methods
.method public final release()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/PanelTaskViewController;->taskView:Lcom/android/wm/shell/taskview/TaskView;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/taskview/TaskView;->release()V

    .line 4
    return-void
    .line 7
.end method
