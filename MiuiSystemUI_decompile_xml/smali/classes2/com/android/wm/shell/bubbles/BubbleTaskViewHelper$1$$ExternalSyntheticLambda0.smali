.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;

.field public final synthetic f$1:Landroid/app/ActivityOptions;

.field public final synthetic f$2:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1$$ExternalSyntheticLambda0;->f$1:Landroid/app/ActivityOptions;

    .line 7
    iput-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Rect;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1$$ExternalSyntheticLambda0;->f$1:Landroid/app/ActivityOptions;

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Rect;

    .line 6
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    .line 8
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    :try_start_0
    invoke-virtual {v1, v4}, Landroid/app/ActivityOptions;->setTaskAlwaysOnTop(Z)V

    .line 12
    invoke-virtual {v1, v4}, Landroid/app/ActivityOptions;->setLaunchedFromBubble(Z)V

    .line 15
    new-instance v5, Landroid/content/Intent;

    .line 18
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 20
    const/high16 v6, 0x80000

    .line 23
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 25
    const/high16 v6, 0x8000000

    .line 28
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 30
    iget-object v6, v2, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 33
    iget-boolean v7, v6, Lcom/android/wm/shell/bubbles/Bubble;->mIsAppBubble:Z

    .line 35
    if-eqz v7, :cond_0

    .line 37
    iget-object v7, v2, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mContext:Landroid/content/Context;

    .line 39
    iget-object v6, v6, Lcom/android/wm/shell/bubbles/Bubble;->mAppIntent:Landroid/content/Intent;

    .line 41
    const/4 v8, 0x0

    .line 43
    const/high16 v9, 0x2000000

    .line 44
    invoke-static {v7, v8, v6, v9, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    .line 46
    move-result-object v6

    .line 49
    iget-object v7, v2, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    .line 50
    invoke-virtual {v7, v6, v5, v1, p0}, Lcom/android/wm/shell/taskview/TaskView;->startActivity(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V

    .line 52
    goto :goto_1

    .line 55
    :cond_0
    invoke-virtual {v6}, Lcom/android/wm/shell/bubbles/Bubble;->hasMetadataShortcutId()Z

    .line 56
    move-result v6

    .line 59
    if-eqz v6, :cond_1

    .line 60
    invoke-virtual {v1, v4}, Landroid/app/ActivityOptions;->setApplyActivityFlagsForBubbles(Z)V

    .line 62
    iget-object v5, v2, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    .line 65
    iget-object v6, v2, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 67
    iget-object v6, v6, Lcom/android/wm/shell/bubbles/Bubble;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 69
    invoke-virtual {v5, v6, v1, p0}, Lcom/android/wm/shell/taskview/TaskView;->startShortcutActivity(Landroid/content/pm/ShortcutInfo;Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V

    .line 71
    goto :goto_1

    .line 74
    :cond_1
    iget-object v6, v2, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 75
    if-eqz v6, :cond_2

    .line 77
    iput-boolean v4, v6, Lcom/android/wm/shell/bubbles/Bubble;->mIntentActive:Z

    .line 79
    :cond_2
    iget-object v6, v2, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    .line 81
    iget-object v7, v2, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mPendingIntent:Landroid/app/PendingIntent;

    .line 83
    invoke-virtual {v6, v7, v5, v1, p0}, Lcom/android/wm/shell/taskview/TaskView;->startActivity(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    goto :goto_1

    .line 88
    :catch_0
    move-exception p0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    const-string v5, "Exception while displaying bubble: "

    .line 92
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    iget-object v5, v2, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 97
    if-eqz v5, :cond_3

    .line 99
    iget-object v5, v5, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 101
    goto :goto_0

    .line 103
    :cond_3
    move-object v5, v3

    .line 104
    :goto_0
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v5, ", "

    .line 108
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 113
    move-result-object p0

    .line 116
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string p0, "; removing bubble"

    .line 120
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object p0

    .line 128
    const-string v1, "BubbleTaskViewHelper"

    .line 129
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object p0, v2, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 134
    if-eqz p0, :cond_4

    .line 136
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 138
    :cond_4
    const/16 p0, 0xa

    .line 140
    iget-object v1, v2, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mController:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 142
    invoke-virtual {v1, v3, p0}, Lcom/android/wm/shell/bubbles/BubbleController;->removeBubble(Ljava/lang/String;I)V

    .line 144
    :goto_1
    iput-boolean v4, v0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;->mInitialized:Z

    .line 147
    return-void
    .line 149
.end method
