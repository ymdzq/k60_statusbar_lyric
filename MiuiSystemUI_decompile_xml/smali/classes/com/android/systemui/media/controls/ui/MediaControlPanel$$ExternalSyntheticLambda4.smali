.class public final synthetic Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/media/controls/ui/MediaControlPanel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/controls/ui/MediaControlPanel;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_1

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 9
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 11
    invoke-interface {p0, v1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseLongTap(I)Z

    .line 13
    move-result p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 20
    move-result-object p0

    .line 23
    check-cast p0, Landroid/view/View;

    .line 24
    if-eqz p0, :cond_1

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->performLongClick()Z

    .line 28
    :cond_1
    :goto_0
    return v1

    .line 31
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 32
    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 34
    invoke-interface {p1, v1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseLongTap(I)Z

    .line 36
    move-result p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    goto/16 :goto_5

    .line 42
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/controls/ui/MediaViewController;

    .line 44
    iget-boolean v0, p1, Lcom/android/systemui/media/controls/ui/MediaViewController;->isGutsVisible:Z

    .line 46
    const/4 v2, 0x0

    .line 48
    if-nez v0, :cond_a

    .line 49
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/models/player/MediaViewHolder;

    .line 51
    const-string v3, "marquee while longPressText.getHandler() is null"

    .line 53
    const-wide/16 v4, 0x1f4

    .line 55
    if-eqz v0, :cond_4

    .line 57
    iget-object v0, v0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->gutsViewHolder:Lcom/android/systemui/media/controls/models/GutsViewHolder;

    .line 59
    iget-object v6, v0, Lcom/android/systemui/media/controls/models/GutsViewHolder;->gutsText:Landroid/widget/TextView;

    .line 61
    invoke-virtual {v6}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    .line 63
    move-result-object v6

    .line 66
    if-nez v6, :cond_3

    .line 67
    new-instance v0, Ljava/lang/Exception;

    .line 69
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 71
    const-string v6, "MediaViewHolder"

    .line 74
    invoke-static {v6, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    goto :goto_2

    .line 79
    :cond_3
    new-instance v3, Lcom/android/systemui/media/controls/models/GutsViewHolder$marquee$1;

    .line 80
    invoke-direct {v3, v0, v1}, Lcom/android/systemui/media/controls/models/GutsViewHolder$marquee$1;-><init>(Lcom/android/systemui/media/controls/models/GutsViewHolder;Z)V

    .line 82
    invoke-virtual {v6, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    goto :goto_2

    .line 88
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;

    .line 89
    if-eqz v0, :cond_6

    .line 91
    iget-object v0, v0, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;->gutsViewHolder:Lcom/android/systemui/media/controls/models/GutsViewHolder;

    .line 93
    iget-object v6, v0, Lcom/android/systemui/media/controls/models/GutsViewHolder;->gutsText:Landroid/widget/TextView;

    .line 95
    invoke-virtual {v6}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    .line 97
    move-result-object v6

    .line 100
    if-nez v6, :cond_5

    .line 101
    new-instance v0, Ljava/lang/Exception;

    .line 103
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 105
    const-string v6, "RecommendationViewHolder"

    .line 108
    invoke-static {v6, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    goto :goto_2

    .line 113
    :cond_5
    new-instance v3, Lcom/android/systemui/media/controls/models/GutsViewHolder$marquee$1;

    .line 114
    invoke-direct {v3, v0, v1}, Lcom/android/systemui/media/controls/models/GutsViewHolder$marquee$1;-><init>(Lcom/android/systemui/media/controls/models/GutsViewHolder;Z)V

    .line 116
    invoke-virtual {v6, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 119
    :cond_6
    :goto_2
    iget-boolean v0, p1, Lcom/android/systemui/media/controls/ui/MediaViewController;->isGutsVisible:Z

    .line 122
    if-eqz v0, :cond_7

    .line 124
    goto :goto_3

    .line 126
    :cond_7
    iput-boolean v1, p1, Lcom/android/systemui/media/controls/ui/MediaViewController;->isGutsVisible:Z

    .line 127
    iput-boolean v1, p1, Lcom/android/systemui/media/controls/ui/MediaViewController;->animateNextStateChange:Z

    .line 129
    iput-wide v4, p1, Lcom/android/systemui/media/controls/ui/MediaViewController;->animationDuration:J

    .line 131
    const-wide/16 v3, 0x0

    .line 133
    iput-wide v3, p1, Lcom/android/systemui/media/controls/ui/MediaViewController;->animationDelay:J

    .line 135
    iget v0, p1, Lcom/android/systemui/media/controls/ui/MediaViewController;->currentStartLocation:I

    .line 137
    iget v3, p1, Lcom/android/systemui/media/controls/ui/MediaViewController;->currentEndLocation:I

    .line 139
    iget v4, p1, Lcom/android/systemui/media/controls/ui/MediaViewController;->currentTransitionProgress:F

    .line 141
    invoke-virtual {p1, v4, v0, v3, v2}, Lcom/android/systemui/media/controls/ui/MediaViewController;->setCurrentState(FIIZ)V

    .line 143
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/models/player/MediaViewHolder;

    .line 146
    if-eqz p1, :cond_8

    .line 148
    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMediaData:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 150
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->bindPlayerContentDescription(Lcom/android/systemui/media/controls/models/player/MediaData;)V

    .line 152
    goto :goto_4

    .line 155
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;

    .line 156
    if-eqz p1, :cond_9

    .line 158
    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mRecommendationData:Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->bindRecommendationContentDescription(Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;)V

    .line 162
    :cond_9
    :goto_4
    iget p1, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mUid:I

    .line 165
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mPackageName:Ljava/lang/String;

    .line 167
    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    .line 169
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mLogger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    .line 171
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    sget-object v3, Lcom/android/systemui/media/controls/util/MediaUiEvent;->OPEN_LONG_PRESS:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 176
    iget-object p0, p0, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    .line 178
    invoke-interface {p0, v3, p1, v0, v2}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 180
    goto :goto_5

    .line 183
    :cond_a
    invoke-virtual {p0, v2}, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->closeGuts(Z)V

    .line 184
    :goto_5
    return v1

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 188
.end method
