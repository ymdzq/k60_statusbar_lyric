.class final Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl$onSmartActionClick$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $action:Landroid/app/Notification$Action;

.field final synthetic $actionIndex:I

.field final synthetic $entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field final synthetic $smartActions:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl;


# direct methods
.method public constructor <init>(ILandroid/app/Notification$Action;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;)V
    .locals 0

    .line 1
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl$onSmartActionClick$1;->this$0:Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl;

    .line 2
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl$onSmartActionClick$1;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 4
    iput p1, p0, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl$onSmartActionClick$1;->$actionIndex:I

    .line 6
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl$onSmartActionClick$1;->$action:Landroid/app/Notification$Action;

    .line 8
    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl$onSmartActionClick$1;->$smartActions:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

    .line 10
    const/4 p1, 0x0

    .line 12
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 13
    return-void
    .line 16
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl$onSmartActionClick$1;->this$0:Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl;->smartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl$onSmartActionClick$1;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 6
    iget v4, p0, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl$onSmartActionClick$1;->$actionIndex:I

    .line 8
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl$onSmartActionClick$1;->$action:Landroid/app/Notification$Action;

    .line 10
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl$onSmartActionClick$1;->$smartActions:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

    .line 12
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;->fromAssistant:Z

    .line 14
    iget-object p0, v0, Lcom/android/systemui/statusbar/SmartReplyController;->mVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

    .line 16
    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;

    .line 18
    const/4 v8, 0x1

    .line 20
    invoke-virtual {p0, v1, v8}, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;->obtain(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Lcom/android/internal/statusbar/NotificationVisibility;

    .line 21
    move-result-object v6

    .line 24
    iget-object p0, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 25
    iget-object v0, v0, Lcom/android/systemui/statusbar/SmartReplyController;->mClickNotifier:Lcom/android/systemui/statusbar/NotificationClickNotifier;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationClickNotifier;->barService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 32
    move-object v3, p0

    .line 34
    invoke-interface/range {v2 .. v7}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationActionClick(Ljava/lang/String;ILandroid/app/Notification$Action;Lcom/android/internal/statusbar/NotificationVisibility;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :catch_0
    new-instance v1, Lcom/android/systemui/statusbar/NotificationClickNotifier$onNotificationClick$1;

    .line 38
    invoke-direct {v1, v0, p0, v8}, Lcom/android/systemui/statusbar/NotificationClickNotifier$onNotificationClick$1;-><init>(Lcom/android/systemui/statusbar/NotificationClickNotifier;Ljava/lang/String;I)V

    .line 40
    iget-object p0, v0, Lcom/android/systemui/statusbar/NotificationClickNotifier;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 43
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 45
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 48
    return-object p0
    .line 50
.end method
