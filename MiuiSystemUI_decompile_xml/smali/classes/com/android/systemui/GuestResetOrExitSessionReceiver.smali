.class public final Lcom/android/systemui/GuestResetOrExitSessionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public mExitSessionDialog:Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialog;

.field public final mExitSessionDialogFactory:Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialog$Factory;

.field public mResetSessionDialog:Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialog;

.field public final mResetSessionDialogFactory:Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialog$Factory;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/GuestResetOrExitSessionReceiver;

    .line 2
    return-void
    .line 4
.end method

.method public constructor <init>(Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialog$Factory;Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialog$Factory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver;->mResetSessionDialogFactory:Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialog$Factory;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver;->mExitSessionDialogFactory:Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialog$Factory;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver;->mResetSessionDialog:Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialog;

    .line 6
    const/4 v0, 0x0

    .line 8
    if-eqz p2, :cond_0

    .line 9
    invoke-virtual {p2}, Landroid/app/AlertDialog;->isShowing()Z

    .line 11
    move-result p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    iget-object p2, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver;->mResetSessionDialog:Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialog;

    .line 17
    invoke-virtual {p2}, Landroid/app/AlertDialog;->cancel()V

    .line 19
    iput-object v0, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver;->mResetSessionDialog:Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialog;

    .line 22
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver;->mExitSessionDialog:Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialog;

    .line 24
    if-eqz p2, :cond_1

    .line 26
    invoke-virtual {p2}, Landroid/app/AlertDialog;->isShowing()Z

    .line 28
    move-result p2

    .line 31
    if-eqz p2, :cond_1

    .line 32
    iget-object p2, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver;->mExitSessionDialog:Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialog;

    .line 34
    invoke-virtual {p2}, Landroid/app/AlertDialog;->cancel()V

    .line 36
    iput-object v0, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver;->mExitSessionDialog:Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialog;

    .line 39
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 41
    check-cast p2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 43
    invoke-virtual {p2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserInfo()Landroid/content/pm/UserInfo;

    .line 45
    move-result-object p2

    .line 48
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isGuest()Z

    .line 49
    move-result v0

    .line 52
    if-nez v0, :cond_2

    .line 53
    return-void

    .line 55
    :cond_2
    const-string v0, "android.intent.action.GUEST_RESET"

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result v0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    iget-object p1, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver;->mResetSessionDialogFactory:Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialog$Factory;

    .line 64
    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    .line 66
    invoke-interface {p1, p2}, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialog$Factory;->create(I)Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialog;

    .line 68
    move-result-object p1

    .line 71
    iput-object p1, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver;->mResetSessionDialog:Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialog;

    .line 72
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 74
    goto :goto_0

    .line 77
    :cond_3
    const-string v0, "android.intent.action.GUEST_EXIT"

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    move-result p1

    .line 83
    if-eqz p1, :cond_4

    .line 84
    iget-object p1, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver;->mExitSessionDialogFactory:Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialog$Factory;

    .line 86
    iget v0, p2, Landroid/content/pm/UserInfo;->id:I

    .line 88
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    .line 90
    move-result p2

    .line 93
    invoke-interface {p1, v0, p2}, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialog$Factory;->create(IZ)Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialog;

    .line 94
    move-result-object p1

    .line 97
    iput-object p1, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver;->mExitSessionDialog:Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialog;

    .line 98
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 100
    :cond_4
    :goto_0
    return-void
    .line 103
.end method
