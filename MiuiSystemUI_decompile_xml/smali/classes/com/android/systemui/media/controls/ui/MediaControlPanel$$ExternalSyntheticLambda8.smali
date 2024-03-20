.class public final synthetic Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/controls/ui/MediaControlPanel;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/app/smartspace/SmartspaceAction;

.field public final synthetic f$3:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/controls/ui/MediaControlPanel;ILandroid/app/smartspace/SmartspaceAction;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 5
    iput p2, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda8;->f$1:I

    .line 7
    iput-object p3, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda8;->f$2:Landroid/app/smartspace/SmartspaceAction;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda8;->f$3:Landroid/view/View;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 2
    iget v6, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda8;->f$1:I

    .line 4
    iget-object v7, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda8;->f$2:Landroid/app/smartspace/SmartspaceAction;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda8;->f$3:Landroid/view/View;

    .line 8
    iget-object v0, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 10
    const/4 v8, 0x1

    .line 12
    invoke-interface {v0, v8}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    goto/16 :goto_4

    .line 19
    :cond_0
    const/4 v0, -0x1

    .line 21
    iget-object v1, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mLogger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    .line 22
    const/4 v9, 0x0

    .line 24
    if-ne v6, v0, :cond_1

    .line 25
    iget-object v0, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mPackageName:Ljava/lang/String;

    .line 27
    iget-object v2, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    sget-object v3, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_RECOMMENDATION_CARD_TAP:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 34
    iget-object v1, v1, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    .line 36
    invoke-interface {v1, v3, v9, v0, v2}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 38
    goto :goto_0

    .line 41
    :cond_1
    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mPackageName:Ljava/lang/String;

    .line 42
    iget-object v4, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    .line 44
    iget-object v0, v1, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    .line 46
    sget-object v1, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_RECOMMENDATION_ITEM_TAP:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 48
    const/4 v2, 0x0

    .line 50
    move v5, v6

    .line 51
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceIdAndPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;I)V

    .line 52
    :goto_0
    const/16 v0, 0x2f8

    .line 55
    iget v1, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mSmartspaceMediaItemsCount:I

    .line 57
    invoke-virtual {p1, v0, v6, v1}, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->logSmartspaceCardReported(III)V

    .line 59
    if-eqz v7, :cond_4

    .line 62
    invoke-virtual {v7}, Landroid/app/smartspace/SmartspaceAction;->getIntent()Landroid/content/Intent;

    .line 64
    move-result-object v0

    .line 67
    if-eqz v0, :cond_4

    .line 68
    invoke-virtual {v7}, Landroid/app/smartspace/SmartspaceAction;->getIntent()Landroid/content/Intent;

    .line 70
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 74
    move-result-object v0

    .line 77
    if-nez v0, :cond_2

    .line 78
    goto :goto_1

    .line 80
    :cond_2
    invoke-virtual {v7}, Landroid/app/smartspace/SmartspaceAction;->getIntent()Landroid/content/Intent;

    .line 81
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 85
    move-result-object v0

    .line 88
    const-string v1, "com.google.android.apps.gsa.smartspace.extra.SMARTSPACE_INTENT"

    .line 89
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 94
    if-nez v0, :cond_3

    .line 95
    goto :goto_1

    .line 97
    :cond_3
    :try_start_0
    invoke-static {v0, v8}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    move-result-object v1

    .line 101
    const-string v2, "KEY_OPEN_IN_FOREGROUND"

    .line 102
    invoke-virtual {v1, v2, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 104
    move-result v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_2

    .line 108
    :catch_0
    move-exception v1

    .line 109
    const-string v2, "Failed to create intent from URI: "

    .line 110
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    move-result-object v0

    .line 115
    const-string v2, "MediaControlPanel"

    .line 116
    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 121
    :cond_4
    :goto_1
    move v0, v9

    .line 124
    :goto_2
    if-eqz v0, :cond_5

    .line 125
    invoke-virtual {v7}, Landroid/app/smartspace/SmartspaceAction;->getIntent()Landroid/content/Intent;

    .line 127
    move-result-object p0

    .line 130
    iget-object v0, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;

    .line 131
    iget-object v0, v0, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;->recommendations:Lcom/android/systemui/util/animation/TransitionLayout;

    .line 133
    invoke-virtual {p1, v0}, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->buildLaunchAnimatorController(Lcom/android/systemui/util/animation/TransitionLayout;)Lcom/android/systemui/media/controls/ui/MediaControlPanel$1;

    .line 135
    move-result-object v0

    .line 138
    iget-object v1, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 139
    invoke-interface {v1, p0, v9, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    .line 141
    goto :goto_3

    .line 144
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 145
    move-result-object p0

    .line 148
    invoke-virtual {v7}, Landroid/app/smartspace/SmartspaceAction;->getIntent()Landroid/content/Intent;

    .line 149
    move-result-object v0

    .line 152
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 153
    :goto_3
    iget-object p0, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMediaCarouselController:Lcom/android/systemui/media/controls/ui/MediaCarouselController;

    .line 156
    iput-boolean v8, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->shouldScrollToKey:Z

    .line 158
    :goto_4
    return-void
    .line 160
.end method
