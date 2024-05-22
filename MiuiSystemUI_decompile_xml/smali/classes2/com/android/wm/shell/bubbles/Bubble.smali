.class public Lcom/android/wm/shell/bubbles/Bubble;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/bubbles/BubbleViewProvider;


# instance fields
.field public final mAppIntent:Landroid/content/Intent;

.field public mAppName:Ljava/lang/String;

.field public mAppUid:I

.field public mBadgeBitmap:Landroid/graphics/Bitmap;

.field public mBubbleBarExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

.field public mBubbleBitmap:Landroid/graphics/Bitmap;

.field public final mBubbleMetadataFlagListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleMetadataFlagListener;

.field public mChannelId:Ljava/lang/String;

.field public mDeleteIntent:Landroid/app/PendingIntent;

.field public mDesiredHeight:I

.field public mDesiredHeightResId:I

.field public mDotColor:I

.field public mDotPath:Landroid/graphics/Path;

.field public mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

.field public mFlags:I

.field public mFlyoutMessage:Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;

.field public final mGroupKey:Ljava/lang/String;

.field public mIcon:Landroid/graphics/drawable/Icon;

.field public mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

.field public mInflateSynchronously:Z

.field public mInflationTask:Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;

.field public mInstanceId:Lcom/android/internal/logging/InstanceId;

.field public mIntent:Landroid/app/PendingIntent;

.field public mIntentActive:Z

.field public final mIntentCancelListener:Lcom/android/wm/shell/bubbles/Bubble$$ExternalSyntheticLambda0;

.field public final mIsAppBubble:Z

.field public mIsBubble:Z

.field public mIsDismissable:Z

.field public mIsImportantConversation:Z

.field public mIsTextChanged:Z

.field public final mKey:Ljava/lang/String;

.field public mLastAccessed:J

.field public mLastUpdated:J

.field public final mLocusId:Landroid/content/LocusId;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public mMetadataShortcutId:Ljava/lang/String;

.field public mNotificationId:I

.field public mPackageName:Ljava/lang/String;

.field public mPendingIntentCanceled:Z

.field public mRawBadgeBitmap:Landroid/graphics/Bitmap;

.field public mShortcutInfo:Landroid/content/pm/ShortcutInfo;

.field public mShouldSuppressNotificationDot:Z

.field public mShouldSuppressNotificationList:Z

.field public mShouldSuppressPeek:Z

.field public mShowBubbleUpdateDot:Z

.field public mSuppressFlyout:Z

.field public final mTaskId:I

.field public mTitle:Ljava/lang/String;

.field public mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/graphics/drawable/Icon;Ljava/lang/String;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mAppUid:I

    const/4 v1, 0x0

    .line 26
    iput-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mGroupKey:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mLocusId:Landroid/content/LocusId;

    const/4 v1, 0x0

    .line 28
    iput v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    .line 29
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mUser:Landroid/os/UserHandle;

    .line 30
    iput-object p3, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIcon:Landroid/graphics/drawable/Icon;

    const/4 p2, 0x1

    .line 31
    iput-boolean p2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIsAppBubble:Z

    .line 32
    iput-object p4, p0, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 33
    iput-boolean v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShowBubbleUpdateDot:Z

    .line 34
    iput-object p5, p0, Lcom/android/wm/shell/bubbles/Bubble;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 35
    iput v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mTaskId:I

    .line 36
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mAppIntent:Landroid/content/Intent;

    const p2, 0x7fffffff

    .line 37
    iput p2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mDesiredHeight:I

    .line 38
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/bubbles/BubbleEntry;Lcom/android/wm/shell/bubbles/Bubbles$BubbleMetadataFlagListener;Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShowBubbleUpdateDot:Z

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mAppUid:I

    const/4 v1, 0x0

    .line 42
    iput-boolean v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIsAppBubble:Z

    .line 43
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 44
    iget-object v1, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    .line 45
    iput-object v2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mGroupKey:Ljava/lang/String;

    .line 46
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getLocusId()Landroid/content/LocusId;

    move-result-object v1

    .line 47
    iput-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mLocusId:Landroid/content/LocusId;

    .line 48
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mBubbleMetadataFlagListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleMetadataFlagListener;

    .line 49
    new-instance p2, Lcom/android/wm/shell/bubbles/Bubble$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p4, p3}, Lcom/android/wm/shell/bubbles/Bubble$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/Bubble;Ljava/util/concurrent/Executor;Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;)V

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntentCancelListener:Lcom/android/wm/shell/bubbles/Bubble$$ExternalSyntheticLambda0;

    .line 50
    iput-object p4, p0, Lcom/android/wm/shell/bubbles/Bubble;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 51
    iput v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mTaskId:I

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/Bubble;->setEntry(Lcom/android/wm/shell/bubbles/BubbleEntry;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;IILjava/lang/String;ILjava/lang/String;ZLjava/util/concurrent/Executor;Lcom/android/wm/shell/bubbles/Bubbles$BubbleMetadataFlagListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShowBubbleUpdateDot:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mAppUid:I

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mMetadataShortcutId:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 8
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mGroupKey:Ljava/lang/String;

    if-eqz p7, :cond_0

    .line 10
    new-instance p1, Landroid/content/LocusId;

    invoke-direct {p1, p7}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mLocusId:Landroid/content/LocusId;

    .line 11
    iput-boolean p8, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIsDismissable:Z

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    .line 13
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p7

    iput-object p7, p0, Lcom/android/wm/shell/bubbles/Bubble;->mUser:Landroid/os/UserHandle;

    .line 14
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object p7

    iput-object p7, p0, Lcom/android/wm/shell/bubbles/Bubble;->mPackageName:Ljava/lang/String;

    .line 15
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIcon:Landroid/graphics/drawable/Icon;

    .line 16
    iput p3, p0, Lcom/android/wm/shell/bubbles/Bubble;->mDesiredHeight:I

    .line 17
    iput p4, p0, Lcom/android/wm/shell/bubbles/Bubble;->mDesiredHeightResId:I

    .line 18
    iput-object p5, p0, Lcom/android/wm/shell/bubbles/Bubble;->mTitle:Ljava/lang/String;

    .line 19
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShowBubbleUpdateDot:Z

    .line 20
    iput-object p9, p0, Lcom/android/wm/shell/bubbles/Bubble;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 21
    iput p6, p0, Lcom/android/wm/shell/bubbles/Bubble;->mTaskId:I

    .line 22
    iput-object p10, p0, Lcom/android/wm/shell/bubbles/Bubble;->mBubbleMetadataFlagListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleMetadataFlagListener;

    .line 23
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIsAppBubble:Z

    return-void
.end method

.method public static getAppBubbleKeyForApp(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    const-string v1, "key_app_bubble:"

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 15
    move-result p1

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    const-string p1, ":"

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 33
    return-object p0
    .line 34
.end method


# virtual methods
.method public final asBubbleBarBubble()Lcom/android/wm/shell/common/bubbles/BubbleInfo;
    .locals 10

    .line 1
    new-instance v9, Lcom/android/wm/shell/common/bubbles/BubbleInfo;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 4
    iget v2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mMetadataShortcutId:Ljava/lang/String;

    .line 17
    :goto_0
    move-object v3, v0

    .line 19
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIcon:Landroid/graphics/drawable/Icon;

    .line 20
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mUser:Landroid/os/UserHandle;

    .line 22
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 24
    move-result v5

    .line 27
    iget-object v6, p0, Lcom/android/wm/shell/bubbles/Bubble;->mPackageName:Ljava/lang/String;

    .line 28
    iget-object v7, p0, Lcom/android/wm/shell/bubbles/Bubble;->mTitle:Ljava/lang/String;

    .line 30
    iget-boolean v8, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIsImportantConversation:Z

    .line 32
    move-object v0, v9

    .line 34
    invoke-direct/range {v0 .. v8}, Lcom/android/wm/shell/common/bubbles/BubbleInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/graphics/drawable/Icon;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 35
    return-object v9
    .line 38
.end method

.method public final cleanupExpandedView()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->cleanUpExpandedState()V

    .line 7
    iput-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mBubbleBarExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    .line 12
    if-eqz v0, :cond_3

    .line 14
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mBubbleTaskViewHelper:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    .line 16
    if-eqz v2, :cond_3

    .line 18
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    .line 20
    if-eqz v2, :cond_1

    .line 22
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 24
    :cond_1
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mBubbleTaskViewHelper:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    .line 27
    iget v2, v0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mTaskId:I

    .line 29
    const/4 v3, -0x1

    .line 31
    if-eq v2, v3, :cond_2

    .line 32
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 34
    move-result-object v2

    .line 37
    iget v3, v0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mTaskId:I

    .line 38
    invoke-interface {v2, v3}, Landroid/app/IActivityTaskManager;->removeTask(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_0

    .line 43
    :catch_0
    move-exception v2

    .line 44
    const-string v3, "BubbleTaskViewHelper"

    .line 45
    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 47
    move-result-object v2

    .line 50
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_2
    :goto_0
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    .line 54
    if-eqz v2, :cond_3

    .line 56
    invoke-virtual {v2}, Lcom/android/wm/shell/taskview/TaskView;->release()V

    .line 58
    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    .line 61
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntent:Landroid/app/PendingIntent;

    .line 63
    if-eqz v0, :cond_4

    .line 65
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntentCancelListener:Lcom/android/wm/shell/bubbles/Bubble$$ExternalSyntheticLambda0;

    .line 67
    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->unregisterCancelListener(Landroid/app/PendingIntent$CancelListener;)V

    .line 69
    :cond_4
    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntentActive:Z

    .line 73
    return-void
    .line 75
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    const-string v0, "key: "

    .line 2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    const-string v0, "  showInShade:   "

    .line 12
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/Bubble;->showInShade()Z

    .line 17
    move-result v0

    .line 20
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 21
    const-string v0, "  showDot:       "

    .line 24
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/Bubble;->showDot()Z

    .line 29
    move-result v0

    .line 32
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 33
    const-string v0, "  showFlyout:    "

    .line 36
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/Bubble;->showFlyout()Z

    .line 41
    move-result v0

    .line 44
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 45
    const-string v0, "  lastActivity:  "

    .line 48
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/Bubble;->getLastActivity()J

    .line 53
    move-result-wide v0

    .line 56
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 57
    const-string v0, "  desiredHeight: "

    .line 60
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 62
    iget v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mDesiredHeightResId:I

    .line 65
    const/4 v1, 0x0

    .line 67
    const/4 v2, 0x1

    .line 68
    if-eqz v0, :cond_0

    .line 69
    move v3, v2

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    move v3, v1

    .line 73
    :goto_0
    if-eqz v3, :cond_1

    .line 74
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    iget v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mDesiredHeight:I

    .line 81
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 86
    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    const-string v0, "  suppressNotif: "

    .line 90
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 92
    const/4 v0, 0x2

    .line 95
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/Bubble;->isEnabled(I)Z

    .line 96
    move-result v0

    .line 99
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 100
    const-string v0, "  autoExpand:    "

    .line 103
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/bubbles/Bubble;->isEnabled(I)Z

    .line 108
    move-result v0

    .line 111
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 112
    const-string v0, "  isDismissable: "

    .line 115
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 117
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIsDismissable:Z

    .line 120
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    .line 125
    const-string v3, "  bubbleMetadataFlagListener null: "

    .line 127
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/Bubble;->mBubbleMetadataFlagListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleMetadataFlagListener;

    .line 132
    if-nez v3, :cond_2

    .line 134
    move v1, v2

    .line 136
    :cond_2
    invoke-static {v0, v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 137
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 140
    if-eqz p0, :cond_3

    .line 142
    const-string v0, "BubbleExpandedView"

    .line 144
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 146
    const-string v0, "  taskId:               "

    .line 149
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 151
    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskId:I

    .line 154
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 156
    const-string v0, "  stackView:            "

    .line 159
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 161
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 164
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 166
    :cond_3
    return-void
    .line 169
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 6
    if-nez v0, :cond_1

    .line 8
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_1
    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 12
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 14
    iget-object p1, p1, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 16
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result p0

    .line 21
    return p0
    .line 22
.end method

.method public final getAppBadge()Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mBadgeBitmap:Landroid/graphics/Bitmap;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getBubbleBarExpandedView()Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mBubbleBarExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getBubbleIcon()Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mBubbleBitmap:Landroid/graphics/Bitmap;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getDotColor()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mDotColor:I

    .line 2
    return p0
    .line 4
.end method

.method public final getDotPath()Landroid/graphics/Path;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mDotPath:Landroid/graphics/Path;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getIconView$1()Lcom/android/wm/shell/bubbles/BadgedImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getKey()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getLastActivity()J
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIsAppBubble:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const-wide v0, 0x7fffffffffffffffL

    .line 6
    goto :goto_0

    .line 11
    :cond_0
    iget-wide v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mLastUpdated:J

    .line 12
    iget-wide v2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mLastAccessed:J

    .line 14
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 16
    move-result-wide v0

    .line 19
    :goto_0
    return-wide v0
    .line 20
.end method

.method public final getTaskId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mBubbleBarExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->getTaskId()I

    .line 6
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 11
    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getTaskId()I

    .line 15
    move-result p0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mTaskId:I

    .line 20
    :goto_0
    return p0
    .line 22
.end method

.method public final hasMetadataShortcutId()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mMetadataShortcutId:Ljava/lang/String;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    move-result p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
    .line 15
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 2
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method

.method public final inflate(Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$Callback;Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;Lcom/android/launcher3/icons/BubbleIconFactory;Z)V
    .locals 13

    .line 1
    move-object v10, p0

    .line 2
    iget-object v0, v10, Lcom/android/wm/shell/bubbles/Bubble;->mInflationTask:Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;

    .line 3
    const/4 v1, 0x1

    .line 5
    const/4 v11, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    .line 9
    move-result-object v0

    .line 12
    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    .line 13
    if-eq v0, v2, :cond_0

    .line 15
    move v0, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v11

    .line 19
    :goto_0
    if-eqz v0, :cond_1

    .line 20
    iget-object v0, v10, Lcom/android/wm/shell/bubbles/Bubble;->mInflationTask:Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;

    .line 22
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 24
    :cond_1
    new-instance v12, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;

    .line 27
    iget-object v9, v10, Lcom/android/wm/shell/bubbles/Bubble;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 29
    move-object v0, v12

    .line 31
    move-object v1, p0

    .line 32
    move-object v2, p2

    .line 33
    move-object/from16 v3, p3

    .line 34
    move-object/from16 v4, p4

    .line 36
    move-object/from16 v5, p5

    .line 38
    move-object/from16 v6, p6

    .line 40
    move/from16 v7, p7

    .line 42
    move-object v8, p1

    .line 44
    invoke-direct/range {v0 .. v9}, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;-><init>(Lcom/android/wm/shell/bubbles/Bubble;Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;Lcom/android/launcher3/icons/BubbleIconFactory;ZLcom/android/wm/shell/bubbles/BubbleViewInfoTask$Callback;Ljava/util/concurrent/Executor;)V

    .line 45
    iput-object v12, v10, Lcom/android/wm/shell/bubbles/Bubble;->mInflationTask:Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;

    .line 48
    iget-boolean v0, v10, Lcom/android/wm/shell/bubbles/Bubble;->mInflateSynchronously:Z

    .line 50
    if-eqz v0, :cond_3

    .line 52
    invoke-virtual {v12}, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->doInBackground()Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;

    .line 54
    move-result-object v0

    .line 57
    invoke-virtual {v12}, Landroid/os/AsyncTask;->isCancelled()Z

    .line 58
    move-result v1

    .line 61
    if-nez v1, :cond_4

    .line 62
    if-nez v0, :cond_2

    .line 64
    goto :goto_1

    .line 66
    :cond_2
    iget-object v1, v12, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 67
    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$$ExternalSyntheticLambda0;

    .line 69
    invoke-direct {v2, v12, v0}, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;)V

    .line 71
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 74
    goto :goto_1

    .line 77
    :cond_3
    new-array v0, v11, [Ljava/lang/Void;

    .line 78
    invoke-virtual {v12, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 80
    :cond_4
    :goto_1
    return-void
    .line 83
.end method

.method public final isEnabled(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    .line 2
    and-int/2addr p0, p1

    .line 4
    if-eqz p0, :cond_0

    .line 5
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
    .line 10
.end method

.method public final setEntry(Lcom/android/wm/shell/bubbles/BubbleEntry;)V
    .locals 7

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/Bubble;->showDot()Z

    .line 5
    move-result v0

    .line 8
    iget-object v1, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 9
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    .line 11
    move-result-wide v2

    .line 14
    iput-wide v2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mLastUpdated:J

    .line 15
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 17
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Landroid/app/Notification;->isBubbleNotification()Z

    .line 21
    move-result v2

    .line 24
    iput-boolean v2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIsBubble:Z

    .line 25
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 30
    iput-object v2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mPackageName:Ljava/lang/String;

    .line 31
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 33
    move-result-object v2

    .line 36
    iput-object v2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mUser:Landroid/os/UserHandle;

    .line 37
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 39
    move-result-object v2

    .line 42
    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 43
    const-string v3, "android.title"

    .line 45
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 47
    move-result-object v2

    .line 50
    const/4 v3, 0x0

    .line 51
    if-nez v2, :cond_0

    .line 52
    move-object v2, v3

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 56
    move-result-object v2

    .line 59
    :goto_0
    iput-object v2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mTitle:Ljava/lang/String;

    .line 60
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 62
    move-result-object v2

    .line 65
    invoke-virtual {v2}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    .line 66
    move-result-object v2

    .line 69
    iput-object v2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mChannelId:Ljava/lang/String;

    .line 70
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 72
    move-result v2

    .line 75
    iput v2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mNotificationId:I

    .line 76
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 78
    move-result v2

    .line 81
    iput v2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mAppUid:I

    .line 82
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 84
    move-result-object v2

    .line 87
    iput-object v2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    .line 88
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 90
    move-result-object v1

    .line 93
    invoke-virtual {v1}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    .line 94
    move-result-object v2

    .line 97
    new-instance v4, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;

    .line 98
    invoke-direct {v4}, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;-><init>()V

    .line 100
    iget-object v5, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 103
    const-string v6, "android.isGroupConversation"

    .line 105
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 107
    move-result v5

    .line 110
    iput-boolean v5, v4, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->isGroupChat:Z

    .line 111
    :try_start_0
    const-class v5, Landroid/app/Notification$BigTextStyle;

    .line 113
    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 115
    move-result v5
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    const-string v6, "android.text"

    .line 119
    if-eqz v5, :cond_2

    .line 121
    :try_start_1
    iget-object v2, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 123
    const-string v5, "android.bigText"

    .line 125
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 127
    move-result-object v2

    .line 130
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 131
    move-result v5

    .line 134
    if-nez v5, :cond_1

    .line 135
    goto :goto_1

    .line 137
    :cond_1
    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 138
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 140
    move-result-object v2

    .line 143
    :goto_1
    iput-object v2, v4, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->message:Ljava/lang/CharSequence;

    .line 144
    goto/16 :goto_4

    .line 146
    :cond_2
    const-class v5, Landroid/app/Notification$MessagingStyle;

    .line 148
    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 150
    move-result v5

    .line 153
    if-eqz v5, :cond_5

    .line 154
    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 156
    const-string v2, "android.messages"

    .line 158
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 160
    move-result-object v1

    .line 163
    check-cast v1, [Landroid/os/Parcelable;

    .line 164
    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    .line 166
    move-result-object v1

    .line 169
    invoke-static {v1}, Landroid/app/Notification$MessagingStyle;->findLatestIncomingMessage(Ljava/util/List;)Landroid/app/Notification$MessagingStyle$Message;

    .line 170
    move-result-object v1

    .line 173
    if-eqz v1, :cond_8

    .line 174
    invoke-virtual {v1}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    .line 176
    move-result-object v2

    .line 179
    iput-object v2, v4, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->message:Ljava/lang/CharSequence;

    .line 180
    invoke-virtual {v1}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    .line 182
    move-result-object v1

    .line 185
    if-eqz v1, :cond_3

    .line 186
    invoke-virtual {v1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    .line 188
    move-result-object v2

    .line 191
    goto :goto_2

    .line 192
    :cond_3
    move-object v2, v3

    .line 193
    :goto_2
    iput-object v2, v4, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->senderName:Ljava/lang/CharSequence;

    .line 194
    iput-object v3, v4, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->senderAvatar:Landroid/graphics/drawable/Drawable;

    .line 196
    if-eqz v1, :cond_4

    .line 198
    invoke-virtual {v1}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    .line 200
    move-result-object v1

    .line 203
    goto :goto_3

    .line 204
    :cond_4
    move-object v1, v3

    .line 205
    :goto_3
    iput-object v1, v4, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->senderIcon:Landroid/graphics/drawable/Icon;

    .line 206
    goto :goto_4

    .line 208
    :cond_5
    const-class v5, Landroid/app/Notification$InboxStyle;

    .line 209
    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 211
    move-result v5

    .line 214
    if-eqz v5, :cond_6

    .line 215
    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 217
    const-string v2, "android.textLines"

    .line 219
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    .line 221
    move-result-object v1

    .line 224
    if-eqz v1, :cond_8

    .line 225
    array-length v2, v1

    .line 227
    if-lez v2, :cond_8

    .line 228
    array-length v2, v1

    .line 230
    add-int/lit8 v2, v2, -0x1

    .line 231
    aget-object v1, v1, v2

    .line 233
    iput-object v1, v4, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->message:Ljava/lang/CharSequence;

    .line 235
    goto :goto_4

    .line 237
    :cond_6
    const-class v5, Landroid/app/Notification$MediaStyle;

    .line 238
    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 240
    move-result v2

    .line 243
    if-eqz v2, :cond_7

    .line 244
    goto :goto_4

    .line 246
    :cond_7
    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 247
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 249
    move-result-object v1

    .line 252
    iput-object v1, v4, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->message:Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 253
    goto :goto_4

    .line 255
    :catch_0
    move-exception v1

    .line 256
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 257
    :cond_8
    :goto_4
    iput-object v4, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlyoutMessage:Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;

    .line 260
    iget-object v1, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 262
    if-eqz v1, :cond_9

    .line 264
    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getConversationShortcutInfo()Landroid/content/pm/ShortcutInfo;

    .line 266
    move-result-object v2

    .line 269
    iput-object v2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 270
    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->isTextChanged()Z

    .line 272
    move-result v2

    .line 275
    iput-boolean v2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIsTextChanged:Z

    .line 276
    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    .line 278
    move-result-object v2

    .line 281
    if-eqz v2, :cond_9

    .line 282
    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    .line 284
    move-result-object v1

    .line 287
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    .line 288
    move-result v1

    .line 291
    iput-boolean v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIsImportantConversation:Z

    .line 292
    :cond_9
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    .line 294
    move-result-object v1

    .line 297
    if-eqz v1, :cond_e

    .line 298
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    .line 300
    move-result-object v1

    .line 303
    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    .line 304
    move-result-object v1

    .line 307
    iput-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mMetadataShortcutId:Ljava/lang/String;

    .line 308
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    .line 310
    move-result-object v1

    .line 313
    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata;->getFlags()I

    .line 314
    move-result v1

    .line 317
    iput v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    .line 318
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    .line 320
    move-result-object v1

    .line 323
    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeight()I

    .line 324
    move-result v1

    .line 327
    iput v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mDesiredHeight:I

    .line 328
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    .line 330
    move-result-object v1

    .line 333
    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeightResId()I

    .line 334
    move-result v1

    .line 337
    iput v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mDesiredHeightResId:I

    .line 338
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    .line 340
    move-result-object v1

    .line 343
    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata;->getIcon()Landroid/graphics/drawable/Icon;

    .line 344
    move-result-object v1

    .line 347
    iput-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIcon:Landroid/graphics/drawable/Icon;

    .line 348
    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntentActive:Z

    .line 350
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntentCancelListener:Lcom/android/wm/shell/bubbles/Bubble$$ExternalSyntheticLambda0;

    .line 352
    if-eqz v1, :cond_b

    .line 354
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntent:Landroid/app/PendingIntent;

    .line 356
    if-nez v1, :cond_a

    .line 358
    goto :goto_5

    .line 360
    :cond_a
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    .line 361
    move-result-object v1

    .line 364
    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    .line 365
    move-result-object v1

    .line 368
    if-nez v1, :cond_d

    .line 369
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntent:Landroid/app/PendingIntent;

    .line 371
    invoke-virtual {v1, v2}, Landroid/app/PendingIntent;->unregisterCancelListener(Landroid/app/PendingIntent$CancelListener;)V

    .line 373
    const/4 v1, 0x0

    .line 376
    iput-boolean v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntentActive:Z

    .line 377
    iput-object v3, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntent:Landroid/app/PendingIntent;

    .line 379
    goto :goto_6

    .line 381
    :cond_b
    :goto_5
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntent:Landroid/app/PendingIntent;

    .line 382
    if-eqz v1, :cond_c

    .line 384
    invoke-virtual {v1, v2}, Landroid/app/PendingIntent;->unregisterCancelListener(Landroid/app/PendingIntent$CancelListener;)V

    .line 386
    :cond_c
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    .line 389
    move-result-object v1

    .line 392
    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    .line 393
    move-result-object v1

    .line 396
    iput-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntent:Landroid/app/PendingIntent;

    .line 397
    if-eqz v1, :cond_d

    .line 399
    invoke-virtual {v1, v2}, Landroid/app/PendingIntent;->registerCancelListener(Landroid/app/PendingIntent$CancelListener;)V

    .line 401
    :cond_d
    :goto_6
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    .line 404
    move-result-object v1

    .line 407
    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata;->getDeleteIntent()Landroid/app/PendingIntent;

    .line 408
    move-result-object v1

    .line 411
    iput-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 412
    :cond_e
    iget-boolean v1, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mIsDismissable:Z

    .line 414
    iput-boolean v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIsDismissable:Z

    .line 416
    iget-boolean v1, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mShouldSuppressNotificationDot:Z

    .line 418
    iput-boolean v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShouldSuppressNotificationDot:Z

    .line 420
    iget-boolean v1, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mShouldSuppressNotificationList:Z

    .line 422
    iput-boolean v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShouldSuppressNotificationList:Z

    .line 424
    iget-boolean p1, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mShouldSuppressPeek:Z

    .line 426
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShouldSuppressPeek:Z

    .line 428
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/Bubble;->showDot()Z

    .line 430
    move-result p1

    .line 433
    if-eq v0, p1, :cond_f

    .line 434
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/Bubble;->showDot()Z

    .line 436
    move-result p1

    .line 439
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/Bubble;->setShowDot(Z)V

    .line 440
    :cond_f
    return-void
    .line 443
.end method

.method public setInflateSynchronously(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mInflateSynchronously:Z

    .line 2
    return-void
    .line 4
.end method

.method public setShouldAutoExpand(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/Bubble;->isEnabled(I)Z

    .line 3
    move-result v1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    iget v2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    .line 9
    or-int/2addr v0, v2

    .line 11
    iput v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    iget v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    .line 15
    const/4 v2, -0x2

    .line 17
    and-int/2addr v0, v2

    .line 18
    iput v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    .line 19
    :goto_0
    if-eq v1, p1, :cond_1

    .line 21
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mBubbleMetadataFlagListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleMetadataFlagListener;

    .line 23
    if-eqz p1, :cond_1

    .line 25
    check-cast p1, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda6;

    .line 27
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda6;->onBubbleMetadataFlagChanged(Lcom/android/wm/shell/bubbles/Bubble;)V

    .line 29
    :cond_1
    return-void
.end method

.method public final setShowDot(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShowBubbleUpdateDot:Z

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 4
    if-eqz p0, :cond_0

    .line 6
    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BadgedImageView;->updateDotVisibility(Z)V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public final setSuppressBubble(Z)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    .line 2
    and-int/lit8 v1, v0, 0x4

    .line 4
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    move v1, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, v3

    .line 12
    :goto_0
    if-nez v1, :cond_1

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    const-string v0, "calling setSuppressBubble on "

    .line 17
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 22
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string p0, " when bubble not suppressable"

    .line 27
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 35
    const-string p1, "Bubble"

    .line 36
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void

    .line 41
    :cond_1
    and-int/lit8 v1, v0, 0x8

    .line 42
    if-eqz v1, :cond_2

    .line 44
    goto :goto_1

    .line 46
    :cond_2
    move v2, v3

    .line 47
    :goto_1
    if-eqz p1, :cond_3

    .line 48
    or-int/lit8 v0, v0, 0x8

    .line 50
    iput v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    .line 52
    goto :goto_2

    .line 54
    :cond_3
    and-int/lit8 v0, v0, -0x9

    .line 55
    iput v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    .line 57
    :goto_2
    if-eq v2, p1, :cond_4

    .line 59
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mBubbleMetadataFlagListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleMetadataFlagListener;

    .line 61
    if-eqz p1, :cond_4

    .line 63
    check-cast p1, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda6;

    .line 65
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda6;->onBubbleMetadataFlagChanged(Lcom/android/wm/shell/bubbles/Bubble;)V

    .line 67
    :cond_4
    return-void
    .line 70
.end method

.method public setSuppressNotification(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/Bubble;->showInShade()Z

    .line 2
    move-result v0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    iget p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    .line 8
    or-int/lit8 p1, p1, 0x2

    .line 10
    iput p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    iget p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    .line 15
    and-int/lit8 p1, p1, -0x3

    .line 17
    iput p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    .line 19
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/Bubble;->showInShade()Z

    .line 21
    move-result p1

    .line 24
    if-eq p1, v0, :cond_1

    .line 25
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mBubbleMetadataFlagListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleMetadataFlagListener;

    .line 27
    if-eqz p1, :cond_1

    .line 29
    check-cast p1, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda6;

    .line 31
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda6;->onBubbleMetadataFlagChanged(Lcom/android/wm/shell/bubbles/Bubble;)V

    .line 33
    :cond_1
    return-void
    .line 36
.end method

.method public final setTaskViewVisibility()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setContentVisibility(Z)V

    .line 7
    :cond_0
    return-void
    .line 10
.end method

.method public setTextChangedForTest(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIsTextChanged:Z

    .line 2
    return-void
    .line 4
.end method

.method public final showDot()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShowBubbleUpdateDot:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShouldSuppressNotificationDot:Z

    .line 6
    if-nez v0, :cond_0

    .line 8
    const/4 v0, 0x2

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/Bubble;->isEnabled(I)Z

    .line 11
    move-result p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    return p0
    .line 20
.end method

.method public showFlyout()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mSuppressFlyout:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShouldSuppressPeek:Z

    .line 6
    if-nez v0, :cond_0

    .line 8
    const/4 v0, 0x2

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/Bubble;->isEnabled(I)Z

    .line 11
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShouldSuppressNotificationList:Z

    .line 17
    if-nez p0, :cond_0

    .line 19
    const/4 p0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    return p0
    .line 24
.end method

.method public final showInShade()Z
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/Bubble;->isEnabled(I)Z

    .line 3
    move-result v0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIsDismissable:Z

    .line 9
    if-nez p0, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 16
    :goto_1
    return p0
    .line 17
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "Bubble{"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const/16 p0, 0x7d

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 22
    return-object p0
    .line 23
.end method
