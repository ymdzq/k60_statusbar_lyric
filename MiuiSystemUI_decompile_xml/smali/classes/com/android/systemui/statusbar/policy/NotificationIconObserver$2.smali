.class public final Lcom/android/systemui/statusbar/policy/NotificationIconObserver$2;
.super Landroid/database/ContentObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/NotificationIconObserver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/NotificationIconObserver;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NotificationIconObserver$2;->this$0:Lcom/android/systemui/statusbar/policy/NotificationIconObserver;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NotificationIconObserver$2;->this$0:Lcom/android/systemui/statusbar/policy/NotificationIconObserver;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NotificationIconObserver;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object p1

    .line 9
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NotificationIconObserver;->mCurrentUserId:I

    .line 10
    const-string/jumbo v1, "status_bar_show_notification_icon"

    .line 12
    const/4 v2, 0x1

    .line 15
    invoke-static {p1, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 16
    move-result p1

    .line 19
    const-string/jumbo v0, "updateSettings: showNotificationIcons = "

    .line 20
    const-string v1, "NotificationIconObserver"

    .line 23
    invoke-static {v0, p1, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 25
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NotificationIconObserver;->mShowNotificationIcons:I

    .line 28
    if-eq v0, p1, :cond_1

    .line 30
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NotificationIconObserver;->mShowNotificationIcons:I

    .line 32
    iget p1, p0, Lcom/android/systemui/statusbar/policy/NotificationIconObserver;->mShowNotificationIcons:I

    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NotificationIconObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 38
    move-result v0

    .line 41
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    .line 42
    if-ltz v0, :cond_1

    .line 44
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NotificationIconObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    move-result-object v1

    .line 51
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 52
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 54
    move-result-object v1

    .line 57
    check-cast v1, Lcom/android/systemui/statusbar/policy/NotificationIconObserver$Callback;

    .line 58
    if-eqz v1, :cond_0

    .line 60
    check-cast v1, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 62
    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 64
    if-eqz v1, :cond_0

    .line 66
    iput p1, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mMaxStaticIcons:I

    .line 68
    iput p1, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mMaxIconsOnLockscreen:I

    .line 70
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->resetViewStates()V

    .line 72
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->calculateIconXTranslations()V

    .line 75
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->applyIconStates()V

    .line 78
    goto :goto_0

    .line 81
    :cond_1
    return-void
    .line 82
.end method
