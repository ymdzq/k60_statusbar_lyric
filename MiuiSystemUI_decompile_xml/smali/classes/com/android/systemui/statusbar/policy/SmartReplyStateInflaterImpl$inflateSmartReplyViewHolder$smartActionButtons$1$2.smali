.class final Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartActionButtons$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $delayOnClickListener:Z

.field final synthetic $entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field final synthetic $smartActions:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

.field final synthetic $smartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

.field final synthetic $themedPackageContext:Landroid/view/ContextThemeWrapper;

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;Lcom/android/systemui/statusbar/policy/SmartReplyView;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;ZLandroid/view/ContextThemeWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartActionButtons$1$2;->this$0:Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartActionButtons$1$2;->$smartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartActionButtons$1$2;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 6
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartActionButtons$1$2;->$smartActions:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

    .line 8
    iput-boolean p5, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartActionButtons$1$2;->$delayOnClickListener:Z

    .line 10
    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartActionButtons$1$2;->$themedPackageContext:Landroid/view/ContextThemeWrapper;

    .line 12
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 15
    return-void
    .line 18
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    check-cast v1, Ljava/lang/Number;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 8
    move-result v3

    .line 11
    move-object/from16 v4, p2

    .line 12
    check-cast v4, Landroid/app/Notification$Action;

    .line 14
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartActionButtons$1$2;->this$0:Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;

    .line 16
    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;->smartActionsInflater:Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl;

    .line 18
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartActionButtons$1$2;->$smartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    .line 20
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartActionButtons$1$2;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 22
    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartActionButtons$1$2;->$smartActions:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

    .line 24
    iget-boolean v8, v0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartActionButtons$1$2;->$delayOnClickListener:Z

    .line 26
    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartActionButtons$1$2;->$themedPackageContext:Landroid/view/ContextThemeWrapper;

    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 33
    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 37
    move-result-object v0

    .line 40
    const v9, 0x7f0d034b    # @layout/smart_action_button 'res/layout/smart_action_button.xml'

    .line 41
    const/4 v10, 0x0

    .line 44
    invoke-virtual {v0, v9, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 45
    move-result-object v0

    .line 48
    move-object v9, v0

    .line 49
    check-cast v9, Landroid/widget/Button;

    .line 50
    iget-object v0, v4, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 52
    invoke-virtual {v9, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {v9}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    .line 57
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 61
    move-result-object v0

    .line 64
    const v2, 0x7f0710a9    # @dimen/smart_action_button_icon_size '18.0dp'

    .line 65
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 68
    move-result v2

    .line 71
    invoke-virtual {v4}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    .line 72
    move-result-object v11

    .line 75
    sget-object v0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterKt;->iconTaskThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 76
    invoke-virtual {v11}, Landroid/graphics/drawable/Icon;->getType()I

    .line 78
    move-result v0

    .line 81
    const/4 v12, 0x0

    .line 82
    const/4 v13, 0x4

    .line 83
    const/4 v14, 0x6

    .line 84
    if-eq v0, v13, :cond_0

    .line 85
    invoke-virtual {v11}, Landroid/graphics/drawable/Icon;->getType()I

    .line 87
    move-result v0

    .line 90
    if-eq v0, v14, :cond_0

    .line 91
    invoke-virtual {v11, v6}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 93
    move-result-object v0

    .line 96
    goto/16 :goto_2

    .line 97
    :cond_0
    new-instance v13, Ljava/util/concurrent/FutureTask;

    .line 99
    new-instance v0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterKt$loadIconDrawableWithTimeout$bitmapTask$1;

    .line 101
    invoke-direct {v0, v11, v6, v2}, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterKt$loadIconDrawableWithTimeout$bitmapTask$1;-><init>(Landroid/graphics/drawable/Icon;Landroid/content/Context;I)V

    .line 103
    invoke-direct {v13, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 106
    :try_start_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterKt;->iconTaskThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 109
    invoke-virtual {v0, v13}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 111
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 114
    const-wide/16 v14, 0x1f4

    .line 116
    invoke-virtual {v13, v14, v15, v0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 118
    move-result-object v0

    .line 121
    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    .line 125
    new-instance v14, Lkotlin/Result$Failure;

    .line 126
    invoke-direct {v14, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 128
    move-object v0, v14

    .line 131
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 132
    move-result-object v14

    .line 135
    if-nez v14, :cond_2

    .line 136
    check-cast v0, Landroid/graphics/Bitmap;

    .line 138
    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    .line 140
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 142
    move-result-object v6

    .line 145
    invoke-direct {v13, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 146
    invoke-virtual {v11}, Landroid/graphics/drawable/Icon;->getType()I

    .line 149
    move-result v0

    .line 152
    const/4 v6, 0x6

    .line 153
    if-ne v0, v6, :cond_1

    .line 154
    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 156
    invoke-direct {v0, v12, v13}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 158
    goto :goto_1

    .line 161
    :cond_1
    move-object v0, v13

    .line 162
    :goto_1
    invoke-virtual {v11}, Landroid/graphics/drawable/Icon;->hasTint()Z

    .line 163
    move-result v6

    .line 166
    if-eqz v6, :cond_3

    .line 167
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 169
    invoke-virtual {v11}, Landroid/graphics/drawable/Icon;->getTintList()Landroid/content/res/ColorStateList;

    .line 172
    move-result-object v6

    .line 175
    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 176
    invoke-virtual {v11}, Landroid/graphics/drawable/Icon;->getTintBlendMode()Landroid/graphics/BlendMode;

    .line 179
    move-result-object v6

    .line 182
    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 183
    goto :goto_2

    .line 186
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 187
    const-string v6, "Failed to load "

    .line 189
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 194
    const-string v6, ": "

    .line 197
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    move-result-object v0

    .line 208
    const-string v6, "SmartReplyViewInflater"

    .line 209
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v0, 0x1

    .line 214
    invoke-virtual {v13, v0}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 215
    move-object v0, v12

    .line 218
    :cond_3
    :goto_2
    if-nez v0, :cond_4

    .line 219
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 221
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 223
    :cond_4
    invoke-virtual {v0, v10, v10, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 226
    invoke-virtual {v9, v0, v12, v12, v12}, Landroid/widget/Button;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 229
    new-instance v0, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl$inflateActionButton$1$onClickListener$1;

    .line 232
    move-object v2, v0

    .line 234
    move-object v6, v1

    .line 235
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl$inflateActionButton$1$onClickListener$1;-><init>(ILandroid/app/Notification$Action;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;)V

    .line 236
    if-eqz v8, :cond_5

    .line 239
    new-instance v2, Lcom/android/systemui/statusbar/policy/DelayedOnClickListener;

    .line 241
    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl;->constants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    .line 243
    iget-wide v3, v1, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mOnClickInitDelay:J

    .line 245
    invoke-direct {v2, v0, v3, v4}, Lcom/android/systemui/statusbar/policy/DelayedOnClickListener;-><init>(Landroid/view/View$OnClickListener;J)V

    .line 247
    move-object v0, v2

    .line 250
    :cond_5
    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    invoke-virtual {v9}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 254
    move-result-object v0

    .line 257
    check-cast v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 258
    sget-object v1, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;->ACTION:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    .line 260
    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mButtonType:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    .line 262
    return-object v9
    .line 264
.end method
