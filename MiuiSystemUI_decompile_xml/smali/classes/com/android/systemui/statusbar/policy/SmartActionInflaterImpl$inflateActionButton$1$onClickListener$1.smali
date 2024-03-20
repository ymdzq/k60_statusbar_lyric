.class public final Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl$inflateActionButton$1$onClickListener$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $action:Landroid/app/Notification$Action;

.field public final synthetic $actionIndex:I

.field public final synthetic $entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public final synthetic $smartActions:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl;


# direct methods
.method public constructor <init>(ILandroid/app/Notification$Action;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;)V
    .locals 0

    .line 1
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl$inflateActionButton$1$onClickListener$1;->this$0:Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl;

    .line 2
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl$inflateActionButton$1$onClickListener$1;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 4
    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl$inflateActionButton$1$onClickListener$1;->$smartActions:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

    .line 6
    iput p1, p0, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl$inflateActionButton$1$onClickListener$1;->$actionIndex:I

    .line 8
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl$inflateActionButton$1$onClickListener$1;->$action:Landroid/app/Notification$Action;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
    .line 15
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl$inflateActionButton$1$onClickListener$1;->this$0:Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl;

    .line 2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl$inflateActionButton$1$onClickListener$1;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 4
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl$inflateActionButton$1$onClickListener$1;->$smartActions:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

    .line 6
    iget v8, p0, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl$inflateActionButton$1$onClickListener$1;->$actionIndex:I

    .line 8
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl$inflateActionButton$1$onClickListener$1;->$action:Landroid/app/Notification$Action;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget-boolean p0, v5, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;->fromAssistant:Z

    .line 15
    if-eqz p0, :cond_0

    .line 17
    invoke-virtual {v9}, Landroid/app/Notification$Action;->getSemanticAction()I

    .line 19
    move-result p0

    .line 22
    const/16 v0, 0xb

    .line 23
    if-ne v0, p0, :cond_0

    .line 25
    iget-object p0, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 27
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getX()F

    .line 29
    move-result v0

    .line 32
    float-to-int v0, v0

    .line 33
    div-int/lit8 v0, v0, 0x2

    .line 34
    iget-object v1, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 36
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getY()F

    .line 38
    move-result v1

    .line 41
    float-to-int v1, v1

    .line 42
    div-int/lit8 v1, v1, 0x2

    .line 43
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->doSmartActionClick(II)V

    .line 45
    iget-boolean v11, v5, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;->fromAssistant:Z

    .line 48
    iget-object p0, p1, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl;->smartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    .line 50
    iget-object p1, p0, Lcom/android/systemui/statusbar/SmartReplyController;->mVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

    .line 52
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;

    .line 54
    const/4 v0, 0x1

    .line 56
    invoke-virtual {p1, v3, v0}, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;->obtain(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Lcom/android/internal/statusbar/NotificationVisibility;

    .line 57
    move-result-object v10

    .line 60
    iget-object p1, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 61
    iget-object p0, p0, Lcom/android/systemui/statusbar/SmartReplyController;->mClickNotifier:Lcom/android/systemui/statusbar/NotificationClickNotifier;

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationClickNotifier;->barService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 68
    move-object v7, p1

    .line 70
    invoke-interface/range {v6 .. v11}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationActionClick(Ljava/lang/String;ILandroid/app/Notification$Action;Lcom/android/internal/statusbar/NotificationVisibility;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :catch_0
    new-instance v1, Lcom/android/systemui/statusbar/NotificationClickNotifier$onNotificationClick$1;

    .line 74
    invoke-direct {v1, p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationClickNotifier$onNotificationClick$1;-><init>(Lcom/android/systemui/statusbar/NotificationClickNotifier;Ljava/lang/String;I)V

    .line 76
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationClickNotifier;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 79
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 81
    goto :goto_0

    .line 84
    :cond_0
    iget-object p0, v9, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 85
    iget-object v6, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 87
    new-instance v7, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl$onSmartActionClick$1;

    .line 89
    move-object v0, v7

    .line 91
    move v1, v8

    .line 92
    move-object v2, v9

    .line 93
    move-object v4, p1

    .line 94
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl$onSmartActionClick$1;-><init>(ILandroid/app/Notification$Action;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;)V

    .line 95
    sget-object v0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterKt;->iconTaskThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 98
    new-instance v0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterKt$startPendingIntentDismissingKeyguard$1;

    .line 100
    invoke-direct {v0, v7}, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterKt$startPendingIntentDismissingKeyguard$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 102
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 105
    invoke-interface {p1, p0, v0, v6}, Lcom/android/systemui/plugins/ActivityStarter;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;)V

    .line 107
    :goto_0
    return-void
    .line 110
.end method
