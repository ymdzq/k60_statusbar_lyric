.class public final Lcom/android/systemui/recents/ScreenPinningRequestInjector$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/recents/ScreenPinningRequestInjector;

.field public final synthetic val$taskId:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/ScreenPinningRequestInjector;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/recents/ScreenPinningRequestInjector$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/recents/ScreenPinningRequestInjector$2;->this$0:Lcom/android/systemui/recents/ScreenPinningRequestInjector;

    .line 4
    iput p2, p0, Lcom/android/systemui/recents/ScreenPinningRequestInjector$2;->val$taskId:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/systemui/recents/ScreenPinningRequestInjector$2;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 8
    move-result-object p1

    .line 11
    iget p2, p0, Lcom/android/systemui/recents/ScreenPinningRequestInjector$2;->val$taskId:I

    .line 12
    invoke-interface {p1, p2}, Landroid/app/IActivityTaskManager;->startSystemLockTaskMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :catch_0
    iget-object p0, p0, Lcom/android/systemui/recents/ScreenPinningRequestInjector$2;->this$0:Lcom/android/systemui/recents/ScreenPinningRequestInjector;

    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequestInjector;->clearPrompt()V

    .line 19
    return-void

    .line 22
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 23
    move-result-object p1

    .line 26
    iget p2, p0, Lcom/android/systemui/recents/ScreenPinningRequestInjector$2;->val$taskId:I

    .line 27
    invoke-interface {p1, p2}, Landroid/app/IActivityTaskManager;->startSystemLockTaskMode(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 29
    :catch_1
    iget-object p0, p0, Lcom/android/systemui/recents/ScreenPinningRequestInjector$2;->this$0:Lcom/android/systemui/recents/ScreenPinningRequestInjector;

    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequestInjector;->clearPrompt()V

    .line 34
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 38
.end method
