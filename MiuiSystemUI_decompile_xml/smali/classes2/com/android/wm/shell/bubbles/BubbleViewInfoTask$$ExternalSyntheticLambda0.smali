.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;

.field public final synthetic f$1:Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;

    .line 4
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 6
    iget-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 8
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eqz v2, :cond_0

    .line 12
    iget-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 14
    if-nez v2, :cond_1

    .line 16
    :cond_0
    iget-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mBubbleBarExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    .line 18
    if-eqz v2, :cond_2

    .line 20
    :cond_1
    move v2, v4

    .line 22
    goto :goto_0

    .line 23
    :cond_2
    move v2, v3

    .line 24
    :goto_0
    if-nez v2, :cond_3

    .line 25
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->imageView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 27
    iput-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 29
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 31
    iput-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 33
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->bubbleBarExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    .line 35
    iput-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mBubbleBarExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    .line 37
    :cond_3
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->shortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 39
    iput-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 41
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->appName:Ljava/lang/String;

    .line 43
    iput-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mAppName:Ljava/lang/String;

    .line 45
    iget-object v5, v1, Lcom/android/wm/shell/bubbles/Bubble;->mTitle:Ljava/lang/String;

    .line 47
    if-nez v5, :cond_4

    .line 49
    iput-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mTitle:Ljava/lang/String;

    .line 51
    :cond_4
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->flyoutMessage:Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;

    .line 53
    iput-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mFlyoutMessage:Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;

    .line 55
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->badgeBitmap:Landroid/graphics/Bitmap;

    .line 57
    iput-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mBadgeBitmap:Landroid/graphics/Bitmap;

    .line 59
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->rawBadgeBitmap:Landroid/graphics/Bitmap;

    .line 61
    iput-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mRawBadgeBitmap:Landroid/graphics/Bitmap;

    .line 63
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->bubbleBitmap:Landroid/graphics/Bitmap;

    .line 65
    iput-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mBubbleBitmap:Landroid/graphics/Bitmap;

    .line 67
    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->dotColor:I

    .line 69
    iput v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mDotColor:I

    .line 71
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->dotPath:Landroid/graphics/Path;

    .line 73
    iput-object p0, v1, Lcom/android/wm/shell/bubbles/Bubble;->mDotPath:Landroid/graphics/Path;

    .line 75
    iget-object p0, v1, Lcom/android/wm/shell/bubbles/Bubble;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 77
    if-eqz p0, :cond_f

    .line 79
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 81
    const-string v5, "Bubbles"

    .line 83
    if-nez v2, :cond_5

    .line 85
    new-instance p0, Ljava/lang/StringBuilder;

    .line 87
    const-string v2, "Stack is null for bubble: "

    .line 89
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object p0

    .line 100
    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    goto/16 :goto_7

    .line 104
    :cond_5
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 106
    if-eqz v2, :cond_a

    .line 108
    iget-object v6, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPendingIntent:Landroid/app/PendingIntent;

    .line 110
    if-eqz v6, :cond_6

    .line 112
    move v6, v4

    .line 114
    goto :goto_1

    .line 115
    :cond_6
    move v6, v3

    .line 116
    :goto_1
    iget-object v7, v1, Lcom/android/wm/shell/bubbles/Bubble;->mIntent:Landroid/app/PendingIntent;

    .line 117
    if-eqz v7, :cond_7

    .line 119
    move v7, v4

    .line 121
    goto :goto_2

    .line 122
    :cond_7
    move v7, v3

    .line 123
    :goto_2
    if-eq v6, v7, :cond_8

    .line 124
    move v6, v4

    .line 126
    goto :goto_3

    .line 127
    :cond_8
    move v6, v3

    .line 128
    :goto_3
    if-eqz v6, :cond_9

    .line 129
    goto :goto_4

    .line 131
    :cond_9
    move v6, v3

    .line 132
    goto :goto_5

    .line 133
    :cond_a
    :goto_4
    move v6, v4

    .line 134
    :goto_5
    if-nez v6, :cond_c

    .line 135
    iget-object v2, v2, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 137
    iget-object v7, v1, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 139
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    move-result v2

    .line 144
    if-eqz v2, :cond_b

    .line 145
    goto :goto_6

    .line 147
    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    .line 148
    const-string v2, "Trying to update entry with different key, new bubble: "

    .line 150
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string v2, " old bubble: "

    .line 158
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    move-result-object p0

    .line 169
    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    goto :goto_7

    .line 173
    :cond_c
    :goto_6
    iput-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 174
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mManageButton:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    .line 176
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 178
    move-result-object v5

    .line 181
    iget-object v7, v1, Lcom/android/wm/shell/bubbles/Bubble;->mAppName:Ljava/lang/String;

    .line 182
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 184
    move-result-object v7

    .line 187
    const v8, 0x7f13022d    # @string/bubbles_settings_button_description 'Settings for %1$s bubbles'

    .line 188
    invoke-virtual {v5, v8, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 191
    move-result-object v5

    .line 194
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mManageButton:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    .line 198
    new-instance v5, Lcom/android/wm/shell/bubbles/BubbleExpandedView$7;

    .line 200
    invoke-direct {v5, p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView$7;-><init>(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)V

    .line 202
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 205
    if-eqz v6, :cond_e

    .line 208
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 210
    iget-object v5, v2, Lcom/android/wm/shell/bubbles/Bubble;->mIntent:Landroid/app/PendingIntent;

    .line 212
    iput-object v5, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPendingIntent:Landroid/app/PendingIntent;

    .line 214
    if-nez v5, :cond_d

    .line 216
    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/Bubble;->hasMetadataShortcutId()Z

    .line 218
    move-result v2

    .line 221
    if-eqz v2, :cond_e

    .line 222
    :cond_d
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    .line 224
    if-eqz v2, :cond_e

    .line 226
    invoke-virtual {p0, v3}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setContentVisibility(Z)V

    .line 228
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    .line 231
    invoke-virtual {v2, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 233
    :cond_e
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->applyThemeAttrs()V

    .line 236
    :cond_f
    :goto_7
    iget-object p0, v1, Lcom/android/wm/shell/bubbles/Bubble;->mBubbleBarExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    .line 239
    if-eqz p0, :cond_15

    .line 241
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mBubbleTaskViewHelper:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    .line 243
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 245
    if-eqz v2, :cond_13

    .line 247
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mPendingIntent:Landroid/app/PendingIntent;

    .line 249
    if-eqz v2, :cond_10

    .line 251
    move v2, v4

    .line 253
    goto :goto_8

    .line 254
    :cond_10
    move v2, v3

    .line 255
    :goto_8
    iget-object v5, v1, Lcom/android/wm/shell/bubbles/Bubble;->mIntent:Landroid/app/PendingIntent;

    .line 256
    if-eqz v5, :cond_11

    .line 258
    move v5, v4

    .line 260
    goto :goto_9

    .line 261
    :cond_11
    move v5, v3

    .line 262
    :goto_9
    if-eq v2, v5, :cond_12

    .line 263
    move v2, v4

    .line 265
    goto :goto_a

    .line 266
    :cond_12
    move v2, v3

    .line 267
    :goto_a
    if-eqz v2, :cond_14

    .line 268
    :cond_13
    move v3, v4

    .line 270
    :cond_14
    iput-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 271
    if-eqz v3, :cond_15

    .line 273
    iget-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mIntent:Landroid/app/PendingIntent;

    .line 275
    iput-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mPendingIntent:Landroid/app/PendingIntent;

    .line 277
    :cond_15
    iget-object p0, v1, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 279
    if-eqz p0, :cond_16

    .line 281
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/bubbles/BadgedImageView;->setRenderedBubble(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    .line 283
    :cond_16
    iget-object p0, v0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mCallback:Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$Callback;

    .line 286
    if-eqz p0, :cond_17

    .line 288
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 290
    invoke-interface {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$Callback;->onBubbleViewsReady(Lcom/android/wm/shell/bubbles/Bubble;)V

    .line 292
    :cond_17
    return-void
    .line 295
.end method
